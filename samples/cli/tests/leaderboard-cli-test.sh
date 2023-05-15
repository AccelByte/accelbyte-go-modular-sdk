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
    --limit '49' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "WldnLxfwqS0VvADM"}, "descending": true, "iconURL": "khzdyrtjPDjyrnaO", "leaderboardCode": "j6CiqHdteSokyuJB", "monthly": {"resetDate": 84, "resetTime": "YgIfLhDoL8DfWL4F"}, "name": "QqXpFZf2l5ObwrOI", "seasonPeriod": 11, "startTime": "A5qsVdHAVThLLLfE", "statCode": "YDXqax5b4moYD1Dt", "weekly": {"resetDay": 97, "resetTime": "64gWYWOm69dXoUcG"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'MagcBUgmHhxf0gzZ' \
    --leaderboardCodes 'kPIt5tFU7uZlJSli' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["J51xd7kcj1gPx94o", "hUCGkKRD8eiwgufz", "wABAiBHbQCOUnT1f"], "limit": 52, "slug": "2J0eopE0ILMFMOQs"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["aT7o4LvYDp1qfdsR", "WpTFIEnysjoggEbb", "yeGyk2CqIQhQt9fj"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'hGytJwVNw7mdAltU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '4GRaol9VwOWlxP82' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "FXUqshjstrgqfOd3"}, "descending": true, "iconURL": "tx5dRvOd0Vjs7HVO", "monthly": {"resetDate": 63, "resetTime": "KDYXPGumORXbBEdi"}, "name": "jz0W5N4LjAe6QQGA", "seasonPeriod": 26, "startTime": "mh0QrQ9BoJifGCuy", "statCode": "B2Zd6uKoaRHC9lOO", "weekly": {"resetDay": 48, "resetTime": "0ws8sdx0dBf1Dg4q"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode '9ugSZqikgvSVUJ3n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'mSqMdbU5lYv5p5FK' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode '2UuPtBRGlyWPDYeK' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 11 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 12 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'dPcXOVdzGfQPr34H' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 13 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'hTgoDa2A6e6nND8d' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 13 'GetTodayLeaderboardRankingAdminV1' test.out

#- 14 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'ktkFdJFN0CPJoFha' \
    --namespace $AB_NAMESPACE \
    --userId 'w87i6kEtpVjKJSG3' \
    > test.out 2>&1
eval_tap $? 14 'GetUserRankingAdminV1' test.out

#- 15 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'uWFwuUhQkExpjOqe' \
    --namespace $AB_NAMESPACE \
    --userId '0xwIlf6hU07Jj79n' \
    --body '{"inc": 0.11849474771444268, "latestValue": 0.909758307296826}' \
    > test.out 2>&1
eval_tap $? 15 'UpdateUserPointAdminV1' test.out

#- 16 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'YLFMxklE4QBG7N1R' \
    --namespace $AB_NAMESPACE \
    --userId 'ze8pwiyzwIhfx2qU' \
    > test.out 2>&1
eval_tap $? 16 'DeleteUserRankingAdminV1' test.out

#- 17 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'W9eV7mD9reV3IgCw' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 17 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 18 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'INzUo52DVuL9wmPz' \
    --leaderboardCode '["fhUZYjrXOgAKtpXd", "pvUcBIjTN1ooirBR", "g2KDRoCx6fDMVsGt"]' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingsAdminV1' test.out

#- 19 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'e8qgfqbWUxximGOd' \
    --limit '95' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 19 'GetUserLeaderboardRankingsAdminV1' test.out

#- 20 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '53' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 20 'GetLeaderboardConfigurationsPublicV1' test.out

#- 21 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "cw1O240ppixwmVM2"}, "descending": false, "iconURL": "fnb0pJ9h3eXp52zd", "leaderboardCode": "H4jK3WLD6yZbIHH3", "monthly": {"resetDate": 63, "resetTime": "ehS98fWJB468t6Ld"}, "name": "LokAooEki4GNH8VM", "seasonPeriod": 58, "startTime": "yE078P12bjydbmTL", "statCode": "9snuoW9Z0t0TiSft", "weekly": {"resetDay": 32, "resetTime": "VyeLCvbPt7bIUHCf"}}' \
    > test.out 2>&1
eval_tap $? 21 'CreateLeaderboardConfigurationPublicV1' test.out

#- 22 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'UXWTbk6Nf5iJx73y' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 22 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 23 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode '5Ojz8yyjToKHYtZ3' \
    --namespace $AB_NAMESPACE \
    --slug 'akUsqVuXjnWM6Wdt' \
    --leaderboardCodes 'qUgsfauUuXZSbNJE' \
    > test.out 2>&1
eval_tap $? 23 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 24 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'VtpxVlCzWsCYVzQN' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 24 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 25 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode '6VgpL82p00UTXkgp' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 25 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 26 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'AvhhnILcpK02IAl6' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 26 'GetTodayLeaderboardRankingPublicV1' test.out

#- 27 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'nj06qaD4S9h8h68k' \
    --namespace $AB_NAMESPACE \
    --userId 'WPZJc8ImaA6RHBxW' \
    > test.out 2>&1
eval_tap $? 27 'GetUserRankingPublicV1' test.out

#- 28 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'USTBxwTMxcGxhd4u' \
    --namespace $AB_NAMESPACE \
    --userId 'Y7te0Zl71x4KEk3C' \
    > test.out 2>&1
eval_tap $? 28 'DeleteUserRankingPublicV1' test.out

#- 29 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'Tlb47PR73sirc4Do' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 29 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 30 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'FiZa4pYDeDgLwlHN' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 30 'GetHiddenUsersV2' test.out

#- 31 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'QIcSkOgNGPBNUp5y' \
    --namespace $AB_NAMESPACE \
    --userId 'EljALQeNeLCH4Slz' \
    > test.out 2>&1
eval_tap $? 31 'GetUserVisibilityStatusV2' test.out

#- 32 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'EG9gNqR14NxZqxvf' \
    --namespace $AB_NAMESPACE \
    --userId 'jMHKDzs0ysektXZT' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 32 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 33 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'PLIQqer9ioSRjYj3' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 33 'SetUserVisibilityStatusV2' test.out

#- 34 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 34 'GetLeaderboardConfigurationsPublicV2' test.out

#- 35 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'hYUXb9arpS2DeEV0' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 35 'GetAllTimeLeaderboardRankingPublicV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE