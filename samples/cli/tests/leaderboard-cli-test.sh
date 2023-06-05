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
echo "1..61"

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
    --limit '15' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "lx3d0alji9JGlcX5"}, "descending": false, "iconURL": "99KBOplS62gzQKkT", "leaderboardCode": "5HdoKQIkTERiOmWI", "monthly": {"resetDate": 91, "resetTime": "rjUYZqVMP3gPhnhr"}, "name": "m4bSQpFuR2rguPaI", "seasonPeriod": 83, "startTime": "OJ8WeEqkaLPYqwuL", "statCode": "3UfxoHG9D3ZLtAMb", "weekly": {"resetDay": 20, "resetTime": "j6ouNaGfBCaZnLOa"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'PYKpEpbVyyXE3QMa' \
    --leaderboardCodes 'BaFgC9klG9UqTwH5' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["fpPG2eNH0KliJWkk", "pIAijACiFa99Ltrh", "1vleEl4ty5J34txC"], "limit": 20, "slug": "GbymnQnwNnmVgPBY"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["IakTsa6sMZisnfx7", "uroXwT3yVqEFcxAB", "klTu6WaaBh90TYhe"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'GnJj5APpzPAU5e9Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'H0192aR2krqVPbzA' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "wY2dhQhDDGQoT1fA"}, "descending": true, "iconURL": "osaz0I89xgSam1hQ", "monthly": {"resetDate": 64, "resetTime": "qmIM685Mi3LWKHMC"}, "name": "kQzQedpseRDZE3kj", "seasonPeriod": 92, "startTime": "wTeTHUyAQlkaJwKH", "statCode": "Q8kml0LeVXHolnMU", "weekly": {"resetDay": 79, "resetTime": "bVMFIpjJL3ilJDP9"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'ia0xQUrXCKNUBEys' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'KrIm57bK2Fe6AREO' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'K2H9V7ZyuLOq2lIs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'IcyxbYTCe3F6q0Zg' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'ZT5JU2G7pq0SS3bI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'lExqFJ3mK2y9Mgra' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'OiCwbDgAjmzDaqCg' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'Lzd900shBsYCbLAs' \
    --namespace $AB_NAMESPACE \
    --userId 'jGzQ0Pd9GT7OynFg' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'sC2A4sx4fmqZi8Uv' \
    --namespace $AB_NAMESPACE \
    --userId 'KqBi7U3skVsOvYPo' \
    --body '{"inc": 0.8369866618387884, "latestValue": 0.3171329221989325}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'DkcszaFSovRddy3p' \
    --namespace $AB_NAMESPACE \
    --userId 'qpPKsUcYH5ljH96X' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode 'cbMJLdQGnwQsB3Qu' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ulQBkbUxGZTHpnQt' \
    --leaderboardCode '["4UIcxqlV3lOPrHhZ", "A9jIf2l14CKccu99", "Dlt13l7V4ISU4CPF"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nmf7hFylUS1Jn7BM' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '9NmIHg02sffna8Jn' \
    --limit '25' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'true' \
    --isDeleted 'false' \
    --limit '14' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "4CKFeirGYuvolm72"}, "descending": false, "iconURL": "c7mV227IyY5becp1", "leaderboardCode": "qvWX3YS2POjEJ1M3", "monthly": {"resetDate": 70, "resetTime": "FgtoiDJE91nlbDec"}, "name": "2cZKxamlVYEFas8n", "seasonPeriod": 89, "startTime": "gTmp1VFdJi0pnkd0", "statCode": "ytOrSM5qeziM72hP", "weekly": {"resetDay": 72, "resetTime": "8R4Fwb4U8dyYt4bj"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'bKCCoXaVkFsAhOFc' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'gIOGnwjvam8HJeND' \
    --namespace $AB_NAMESPACE \
    --slug 'NT9cWPUwApj6L1RS' \
    --leaderboardCodes 'EeFacj4JzHf7oXMZ' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'SBRSkOVYeuJno6oU' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'RoDEupRaOFBcTL99' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'hiAl69Fz5aJ68stG' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'o9d3TxBVGP5v00G2' \
    --namespace $AB_NAMESPACE \
    --userId '1PufW6W5z4arpqZr' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode '3iPEtAvg9l2kYhO0' \
    --namespace $AB_NAMESPACE \
    --userId 'ur51HDFYs4zJs5Di' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'yjfWQvWDAuS7Y7Ur' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'ZyTkGtLo2ZF2KNKe' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'gZcARYyaoQSSh9bR' \
    --namespace $AB_NAMESPACE \
    --userId 'O6R6wKboxl65rdyb' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode '2dhDj5rDFrr1olXB' \
    --namespace $AB_NAMESPACE \
    --userId '92siA7PRbaLYECer' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'vNkjH7t1CIAuNtPV' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode 'JZk9leMiuyFDwBgP' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '11' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["1MANhHkeNlzVLmz2", "sVJC5lYEJeqGdHjn", "EpFhg1IY7U9OtiVO"], "descending": false, "description": "WaDybHTG2UQL7lgi", "iconURL": "t4nJg10xsbpQGe6j", "leaderboardCode": "vkph6zCBsnO9QO5i", "name": "uYml5ogkATKaapfS", "statCode": "OL4aXRb4GWUPV282"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["vNEe7azJkUl26Ti6", "CNc1LwvQi6J0t1VQ", "jkh4JX9GxTtG5OCB"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'abUoPvhW2h6JUZLt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'dxU3somg5h6mKcuZ' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["dIFR4MkElFVioGWU", "h5Ow4WCDRWQWU9rH", "jEj6uMyBBzAipCcI"], "descending": true, "description": "NFgo4TlWLCfp2hwr", "iconURL": "Z7sVBaysN2sKXAd0", "name": "7oONEPV90ZIzMG54"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'Ucy7r1PZIpMzQAqW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode 'O4MUiwBb2QFy3IMv' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'fdCSpwY9jKV0Iqhp' \
    --leaderboardCode 'tW9s1gruM0NwRzun' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'LoyzXbylQh1BQGVb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode 'dItrGYuRgfvZPDzo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode 'WaaYRD3zacXPRpI1' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'dp34xxW1mdaGRWvV' \
    --namespace $AB_NAMESPACE \
    --userId 'RhpiijDIChsbApXv' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'v0veJ06UEdpOkAf8' \
    --namespace $AB_NAMESPACE \
    --userId '85stvToWW9Nyn6NX' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode 'DKROJCAaXEfEbitj' \
    --namespace $AB_NAMESPACE \
    --userId 'DRcdt52CT9j6KeNB' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'ubhOfDKcEjsxjXpO' \
    --namespace $AB_NAMESPACE \
    --userId 'BX6olPWlngYoKIEu' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ubnvUaaJ4JgKyxbC' \
    --leaderboardCode '["Kf6ETqAM5zPpNiUn", "wL3P0t52D9Zi6hDV", "MbdFgrKn4AjoMlfg"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'a2CtcigJLldcN0by' \
    --limit '19' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UYsVUBAboAB5oh2r' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '47' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'jW9OqdnX5pZ9ZjfR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'bMtAAezycDoMtqVe' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId 'YRFvKRZkVwflLiEY' \
    --leaderboardCode 'NBpsLNMpwhnnioN7' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'JdrHUCDg8HpHYYJi' \
    --namespace $AB_NAMESPACE \
    --userId 'I2TgQV5UTSApMDYE' \
    > test.out 2>&1
eval_tap $? 61 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE