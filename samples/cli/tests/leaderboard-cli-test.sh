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
echo "1..35"

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
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '83' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "ryiOhVLE"}, "descending": true, "iconURL": "YWMiDqO5", "leaderboardCode": "CpohR63B", "monthly": {"resetDate": 38, "resetTime": "3EcQhA4P"}, "name": "mzzbUT1X", "seasonPeriod": 75, "startTime": "4M5Vqghp", "statCode": "qFT937Qw", "weekly": {"resetDay": 0, "resetTime": "pIYZjFnU"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'zRJer499' \
    --leaderboardCodes 'QKa8Q88d' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["mq50HV9b", "AV8ps6Gy", "TN6gKqoo"], "limit": 35, "slug": "pDKJABvK"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["xXv345Ga", "VvQxmTbF", "1grTU2U4"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'jV9KKmkH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'MXYZVHrx' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "KOkpv7fM"}, "descending": false, "iconURL": "795jSV8I", "monthly": {"resetDate": 5, "resetTime": "x1r6T69K"}, "name": "wHtNUpJf", "seasonPeriod": 62, "startTime": "m9Ni9U2c", "statCode": "lI5zblHy", "weekly": {"resetDay": 37, "resetTime": "v1Q7Rx6S"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'ggMlCJ0b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'Hy63iqxL' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'b6m3J863' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 11 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 12 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode '4qOJ3Iz0' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 13 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'A4UEjKzb' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 13 'GetTodayLeaderboardRankingAdminV1' test.out

#- 14 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'zQOJZqUB' \
    --namespace $AB_NAMESPACE \
    --userId 'x7X5eJg7' \
    > test.out 2>&1
eval_tap $? 14 'GetUserRankingAdminV1' test.out

#- 15 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'rAOPUrld' \
    --namespace $AB_NAMESPACE \
    --userId 'Go5XTrye' \
    --body '{"inc": 0.35482882138154204, "latestValue": 0.9346901740406629}' \
    > test.out 2>&1
eval_tap $? 15 'UpdateUserPointAdminV1' test.out

#- 16 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode '90GX45uJ' \
    --namespace $AB_NAMESPACE \
    --userId 'GgcinCva' \
    > test.out 2>&1
eval_tap $? 16 'DeleteUserRankingAdminV1' test.out

#- 17 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'm19DFPAY' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 17 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 18 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zGiePzIf' \
    --leaderboardCode '["L4fdgY95", "5XheepXH", "bCECHesP"]' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingsAdminV1' test.out

#- 19 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '5q5BB0IK' \
    --limit '58' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 19 'GetUserLeaderboardRankingsAdminV1' test.out

#- 20 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '91' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 20 'GetLeaderboardConfigurationsPublicV1' test.out

#- 21 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "8Fmqo7jR"}, "descending": false, "iconURL": "QjpW0gaN", "leaderboardCode": "owVuJ04O", "monthly": {"resetDate": 1, "resetTime": "Alr3Eppi"}, "name": "nEBwkFnp", "seasonPeriod": 54, "startTime": "sZQaC6rQ", "statCode": "uFdukAaQ", "weekly": {"resetDay": 83, "resetTime": "ln4xwbOS"}}' \
    > test.out 2>&1
eval_tap $? 21 'CreateLeaderboardConfigurationPublicV1' test.out

#- 22 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode '8PzIuqLt' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 22 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 23 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'qEXozHlJ' \
    --namespace $AB_NAMESPACE \
    --slug 'noY13NFF' \
    --leaderboardCodes 'hjRSq103' \
    > test.out 2>&1
eval_tap $? 23 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 24 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'EQUAzDmx' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 24 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 25 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'NtME0fba' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 25 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 26 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'gPGm0y4r' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 26 'GetTodayLeaderboardRankingPublicV1' test.out

#- 27 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'gK1zujH2' \
    --namespace $AB_NAMESPACE \
    --userId 'hHG4MGz7' \
    > test.out 2>&1
eval_tap $? 27 'GetUserRankingPublicV1' test.out

#- 28 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'ucl6fGEl' \
    --namespace $AB_NAMESPACE \
    --userId '87SLk6TX' \
    > test.out 2>&1
eval_tap $? 28 'DeleteUserRankingPublicV1' test.out

#- 29 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'SZdFwg75' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 29 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 30 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'N9Gfl8vo' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 30 'GetHiddenUsersV2' test.out

#- 31 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'lhpJuYz5' \
    --namespace $AB_NAMESPACE \
    --userId 'ceGihFqK' \
    > test.out 2>&1
eval_tap $? 31 'GetUserVisibilityStatusV2' test.out

#- 32 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'ixGfUAlG' \
    --namespace $AB_NAMESPACE \
    --userId 'Ga97vqNI' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 32 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 33 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'an0m7ZJv' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 33 'SetUserVisibilityStatusV2' test.out

#- 34 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 34 'GetLeaderboardConfigurationsPublicV2' test.out

#- 35 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'faQWoH3Y' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 35 'GetAllTimeLeaderboardRankingPublicV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE