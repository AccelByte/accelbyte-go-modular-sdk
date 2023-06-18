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
    --isArchived 'false' \
    --isDeleted 'true' \
    --limit '30' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 2 'GetLeaderboardConfigurationsAdminV1' test.out

#- 3 CreateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "akvStD2Akg1DW3pd"}, "descending": true, "iconURL": "Zn2Z3YM1f11KTK82", "leaderboardCode": "1AT1Eu8CDSiGloG7", "monthly": {"resetDate": 16, "resetTime": "5NnfUpMd5PPJIQDc"}, "name": "IYUi0W46He30qe4f", "seasonPeriod": 32, "startTime": "MAO0moATvXxURD3V", "statCode": "KiORtgxqXQN99eyh", "weekly": {"resetDay": 90, "resetTime": "BGIgZNdUK3HX5G5R"}}' \
    > test.out 2>&1
eval_tap $? 3 'CreateLeaderboardConfigurationAdminV1' test.out

#- 4 AdminGetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard adminGetArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --slug 'GeIYmclCaW9pDXjs' \
    --leaderboardCodes 'Es5Mx4RGMl6ADUdi' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetArchivedLeaderboardRankingDataV1Handler' test.out

#- 5 CreateArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard createArchivedLeaderboardRankingDataV1Handler \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["oAnarqmMyfJh7qmq", "gKlFwWSR9CU0cocn", "7WHfPWyP0QqdUPcN"], "limit": 17, "slug": "CBQ2OeQZs96u99cG"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateArchivedLeaderboardRankingDataV1Handler' test.out

#- 6 DeleteBulkLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["gYRbeStDOpk1GzBt", "4Dj0VPKIIWHkuPxL", "9uRbEX68qxZFCXNZ"]}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteBulkLeaderboardConfigurationAdminV1' test.out

#- 7 GetLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV1 \
    --leaderboardCode '0h5OV0qyh8hjMg79' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetLeaderboardConfigurationAdminV1' test.out

#- 8 UpdateLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV1 \
    --leaderboardCode '5M8wBgPToPPaNQOA' \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "tPjhTOtntO5HDxoR"}, "descending": false, "iconURL": "r5ooNDEVa1cnGR1g", "monthly": {"resetDate": 54, "resetTime": "QSFVmDnb7U4j2YbB"}, "name": "6dg0P832OwFmx5II", "seasonPeriod": 95, "startTime": "WzdmjHWRDMw84XbK", "statCode": "vgUlqfDrSrPI82Py", "weekly": {"resetDay": 79, "resetTime": "PGGbJDzaPWDOuFp7"}}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateLeaderboardConfigurationAdminV1' test.out

#- 9 DeleteLeaderboardConfigurationAdminV1
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV1 \
    --leaderboardCode 'HtWijRhrUgrlxOCZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteLeaderboardConfigurationAdminV1' test.out

#- 10 GetAllTimeLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV1 \
    --leaderboardCode 'ZyAlok8VaQFIZwd4' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 10 'GetAllTimeLeaderboardRankingAdminV1' test.out

#- 11 HardDeleteLeaderboardAdminV1
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV1 \
    --leaderboardCode 'TEnueeuXA5axXvTX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'HardDeleteLeaderboardAdminV1' test.out

#- 12 GetCurrentMonthLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingAdminV1 \
    --leaderboardCode 'rnvWcV5BUsWkzbuw' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '84' \
    --previousVersion '41' \
    > test.out 2>&1
eval_tap $? 12 'GetCurrentMonthLeaderboardRankingAdminV1' test.out

#- 13 DeleteUserRankingByLeaderboardCodeAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV1 \
    --leaderboardCode 'j8UnBs9q8MW2ASph' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteUserRankingByLeaderboardCodeAdminV1' test.out

#- 14 GetCurrentSeasonLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingAdminV1 \
    --leaderboardCode 'SDGiFqtCigH9XDfa' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '5' \
    --previousVersion '71' \
    > test.out 2>&1
eval_tap $? 14 'GetCurrentSeasonLeaderboardRankingAdminV1' test.out

#- 15 GetTodayLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingAdminV1 \
    --leaderboardCode 'EqDOOFELMXQshBsP' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '30' \
    --previousVersion '85' \
    > test.out 2>&1
eval_tap $? 15 'GetTodayLeaderboardRankingAdminV1' test.out

#- 16 GetUserRankingAdminV1
samples/cli/sample-apps Leaderboard getUserRankingAdminV1 \
    --leaderboardCode 'gYvpHFOsUQ8HThLc' \
    --namespace $AB_NAMESPACE \
    --userId '8atyaWmZr6x2pdzA' \
    --previousVersion '3' \
    > test.out 2>&1
eval_tap $? 16 'GetUserRankingAdminV1' test.out

#- 17 UpdateUserPointAdminV1
samples/cli/sample-apps Leaderboard updateUserPointAdminV1 \
    --leaderboardCode 'K7dKt3Nf1Xj1vs4M' \
    --namespace $AB_NAMESPACE \
    --userId 'ijftDOkkaeSdh7a1' \
    --body '{"inc": 0.6499885988492965, "latestValue": 0.5960708279238525}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateUserPointAdminV1' test.out

#- 18 DeleteUserRankingAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV1 \
    --leaderboardCode 'YGrpWnCNXPzwxIsq' \
    --namespace $AB_NAMESPACE \
    --userId 'EowoeItDfppIZvtl' \
    > test.out 2>&1
eval_tap $? 18 'DeleteUserRankingAdminV1' test.out

#- 19 GetCurrentWeekLeaderboardRankingAdminV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingAdminV1 \
    --leaderboardCode '5iSh40dugZnjWl7K' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '94' \
    --previousVersion '17' \
    > test.out 2>&1
eval_tap $? 19 'GetCurrentWeekLeaderboardRankingAdminV1' test.out

#- 20 DeleteUserRankingsAdminV1
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId '4xQJ87PBHiWoZoI5' \
    --leaderboardCode '["d7upHHlcRa1t5jc7", "k195sM3JDOU5k4nS", "ub5g7DPpBNGO0qeF"]' \
    > test.out 2>&1
eval_tap $? 20 'DeleteUserRankingsAdminV1' test.out

#- 21 AdminAnonymizeUserLeaderboardAdminV1
samples/cli/sample-apps Leaderboard adminAnonymizeUserLeaderboardAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wf8tATTPAzodriuz' \
    > test.out 2>&1
eval_tap $? 21 'AdminAnonymizeUserLeaderboardAdminV1' test.out

#- 22 GetUserLeaderboardRankingsAdminV1
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Iakg8IOJ1vkbaDJ2' \
    --limit '87' \
    --offset '29' \
    --previousVersion '26' \
    > test.out 2>&1
eval_tap $? 22 'GetUserLeaderboardRankingsAdminV1' test.out

#- 23 GetLeaderboardConfigurationsPublicV1
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV1 \
    --namespace $AB_NAMESPACE \
    --isArchived 'false' \
    --isDeleted 'false' \
    --limit '24' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 23 'GetLeaderboardConfigurationsPublicV1' test.out

#- 24 CreateLeaderboardConfigurationPublicV1
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"daily": {"resetTime": "OnmSWYnq42OnQFwJ"}, "descending": false, "iconURL": "Z7QJI3AH7X2APOP3", "leaderboardCode": "DX7d6egOGVvv8QY5", "monthly": {"resetDate": 58, "resetTime": "Uho1j1e2IzzuEolS"}, "name": "OlbNXtkKvEtiaZNo", "seasonPeriod": 86, "startTime": "LYoLIxcTi5Vh5Puz", "statCode": "3ecNL99q0tlpyKMQ", "weekly": {"resetDay": 48, "resetTime": "ahOMofyy7spfFilC"}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateLeaderboardConfigurationPublicV1' test.out

#- 25 GetAllTimeLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV1 \
    --leaderboardCode 'mhCVg6quHak7mBWu' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 25 'GetAllTimeLeaderboardRankingPublicV1' test.out

#- 26 GetArchivedLeaderboardRankingDataV1Handler
samples/cli/sample-apps Leaderboard getArchivedLeaderboardRankingDataV1Handler \
    --leaderboardCode 'uMYvrjl14pTgV1pK' \
    --namespace $AB_NAMESPACE \
    --slug 'lxZ1QZxV2oyZdndg' \
    --leaderboardCodes '3HWD9ftY0yNpvXqI' \
    > test.out 2>&1
eval_tap $? 26 'GetArchivedLeaderboardRankingDataV1Handler' test.out

#- 27 GetCurrentMonthLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentMonthLeaderboardRankingPublicV1 \
    --leaderboardCode 'cchAIFP0iFoeJf6n' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '84' \
    --previousVersion '20' \
    > test.out 2>&1
eval_tap $? 27 'GetCurrentMonthLeaderboardRankingPublicV1' test.out

#- 28 GetCurrentSeasonLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentSeasonLeaderboardRankingPublicV1 \
    --leaderboardCode 'Ab6cHOpis9LtHlsU' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '28' \
    --previousVersion '21' \
    > test.out 2>&1
eval_tap $? 28 'GetCurrentSeasonLeaderboardRankingPublicV1' test.out

#- 29 GetTodayLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getTodayLeaderboardRankingPublicV1 \
    --leaderboardCode 'TcPfvtCGgPTI8NVV' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '5' \
    --previousVersion '59' \
    > test.out 2>&1
eval_tap $? 29 'GetTodayLeaderboardRankingPublicV1' test.out

#- 30 GetUserRankingPublicV1
samples/cli/sample-apps Leaderboard getUserRankingPublicV1 \
    --leaderboardCode 'LRdPQuWoYiVWCikU' \
    --namespace $AB_NAMESPACE \
    --userId 'HRcUP0AR65a4lZCk' \
    --previousVersion '11' \
    > test.out 2>&1
eval_tap $? 30 'GetUserRankingPublicV1' test.out

#- 31 DeleteUserRankingPublicV1
samples/cli/sample-apps Leaderboard deleteUserRankingPublicV1 \
    --leaderboardCode 'OqkzqvjbmqM4h0Lj' \
    --namespace $AB_NAMESPACE \
    --userId 'M9aUopExd1PB0596' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserRankingPublicV1' test.out

#- 32 GetCurrentWeekLeaderboardRankingPublicV1
samples/cli/sample-apps Leaderboard getCurrentWeekLeaderboardRankingPublicV1 \
    --leaderboardCode 'gi9vE44l3D65QgKs' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '21' \
    --previousVersion '12' \
    > test.out 2>&1
eval_tap $? 32 'GetCurrentWeekLeaderboardRankingPublicV1' test.out

#- 33 GetHiddenUsersV2
samples/cli/sample-apps Leaderboard getHiddenUsersV2 \
    --leaderboardCode 'hqLoH0zZ4PZSI2l5' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 33 'GetHiddenUsersV2' test.out

#- 34 GetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV2 \
    --leaderboardCode 'zjtJQw83eBPXg4Ox' \
    --namespace $AB_NAMESPACE \
    --userId 'ojOWPFLZsHH0xZCr' \
    > test.out 2>&1
eval_tap $? 34 'GetUserVisibilityStatusV2' test.out

#- 35 SetUserLeaderboardVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityStatusV2 \
    --leaderboardCode 'Z6bgpdPE669h4urJ' \
    --namespace $AB_NAMESPACE \
    --userId 'nPmB9Yxc8m813yDG' \
    --body '{"visibility": true}' \
    > test.out 2>&1
eval_tap $? 35 'SetUserLeaderboardVisibilityStatusV2' test.out

#- 36 SetUserVisibilityStatusV2
samples/cli/sample-apps Leaderboard setUserVisibilityStatusV2 \
    --namespace $AB_NAMESPACE \
    --userId 'pc7PLtUgJjeVI2Vj' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 36 'SetUserVisibilityStatusV2' test.out

#- 37 GetLeaderboardConfigurationsPublicV2
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 37 'GetLeaderboardConfigurationsPublicV2' test.out

#- 38 GetAllTimeLeaderboardRankingPublicV2
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV2 \
    --leaderboardCode '828VqVorjk5akMzl' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 38 'GetAllTimeLeaderboardRankingPublicV2' test.out

#- 39 GetLeaderboardConfigurationsAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsAdminV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'false' \
    --limit '39' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 39 'GetLeaderboardConfigurationsAdminV3' test.out

#- 40 CreateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard createLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": false, "cycleIds": ["68O46dKdwwY4xJKV", "7MQWZU8Wk6PYdVuB", "4DOFrq0R1WnKa8mY"], "descending": false, "description": "E8jYJwMnzgnxXrrE", "iconURL": "AJ53n0hHjtdQZQvu", "leaderboardCode": "vsNceo5Dpi0rfbWk", "name": "QeWKCoDJMkBlF28K", "statCode": "vlh9AV5TvQNS8H2H"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateLeaderboardConfigurationAdminV3' test.out

#- 41 DeleteBulkLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteBulkLeaderboardConfigurationAdminV3 \
    --namespace $AB_NAMESPACE \
    --body '{"leaderboardCodes": ["25gINqcvCdXSmavW", "9aVsVmQTXDqOctLm", "eodpog0LdgESs9Iv"]}' \
    > test.out 2>&1
eval_tap $? 41 'DeleteBulkLeaderboardConfigurationAdminV3' test.out

#- 42 GetLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'ZoNqa913ieptN6nY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetLeaderboardConfigurationAdminV3' test.out

#- 43 UpdateLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard updateLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'INZib8EyC2LiLba3' \
    --namespace $AB_NAMESPACE \
    --body '{"allTime": true, "cycleIds": ["YACp6eIni0K3p9RH", "ANXG60aHJ4p1RoBU", "iRGzDisJuBGiDOLg"], "descending": false, "description": "Svtf0BkuQMr0rXBG", "iconURL": "2NtQLTbipvM6W5XU", "name": "Dvf6zU3Xg9zmVHPm"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateLeaderboardConfigurationAdminV3' test.out

#- 44 DeleteLeaderboardConfigurationAdminV3
samples/cli/sample-apps Leaderboard deleteLeaderboardConfigurationAdminV3 \
    --leaderboardCode 'SBN6B9aPKyPFCp9d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteLeaderboardConfigurationAdminV3' test.out

#- 45 GetAllTimeLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingAdminV3 \
    --leaderboardCode '2HiRm1VWE1940zRh' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 45 'GetAllTimeLeaderboardRankingAdminV3' test.out

#- 46 GetCurrentCycleLeaderboardRankingAdminV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingAdminV3 \
    --cycleId 'PoKOyDojUVf3hR0Z' \
    --leaderboardCode 'wOwRfyeLpDQv4mgK' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 46 'GetCurrentCycleLeaderboardRankingAdminV3' test.out

#- 47 HardDeleteLeaderboardAdminV3
samples/cli/sample-apps Leaderboard hardDeleteLeaderboardAdminV3 \
    --leaderboardCode 'wBJGXRMqkXLmZYgp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'HardDeleteLeaderboardAdminV3' test.out

#- 48 DeleteUserRankingByLeaderboardCodeAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingByLeaderboardCodeAdminV3 \
    --leaderboardCode '5Ph5fnLdM3xU6Hfs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserRankingByLeaderboardCodeAdminV3' test.out

#- 49 GetHiddenUsersV3
samples/cli/sample-apps Leaderboard getHiddenUsersV3 \
    --leaderboardCode '1HXUwpzIppRLw5S8' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 49 'GetHiddenUsersV3' test.out

#- 50 GetUserRankingAdminV3
samples/cli/sample-apps Leaderboard getUserRankingAdminV3 \
    --leaderboardCode 'DpYLPuJluf7bBNFH' \
    --namespace $AB_NAMESPACE \
    --userId 'GrQoRhRM5IyBFDMw' \
    > test.out 2>&1
eval_tap $? 50 'GetUserRankingAdminV3' test.out

#- 51 DeleteUserRankingAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingAdminV3 \
    --leaderboardCode 'QBwPO2exd9GurcdI' \
    --namespace $AB_NAMESPACE \
    --userId 'P2YMixCW8cb0G7ya' \
    > test.out 2>&1
eval_tap $? 51 'DeleteUserRankingAdminV3' test.out

#- 52 GetUserVisibilityStatusV3
samples/cli/sample-apps Leaderboard getUserVisibilityStatusV3 \
    --leaderboardCode '6z5K0MzaFeAglVxl' \
    --namespace $AB_NAMESPACE \
    --userId 'v8jYyshwpu2yL0sB' \
    > test.out 2>&1
eval_tap $? 52 'GetUserVisibilityStatusV3' test.out

#- 53 SetUserLeaderboardVisibilityV3
samples/cli/sample-apps Leaderboard setUserLeaderboardVisibilityV3 \
    --leaderboardCode 'GZVu3vSuBNRiUj3R' \
    --namespace $AB_NAMESPACE \
    --userId 'tOS7olyF5l1lF44Z' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 53 'SetUserLeaderboardVisibilityV3' test.out

#- 54 DeleteUserRankingsAdminV3
samples/cli/sample-apps Leaderboard deleteUserRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VPWFhqVMBH26tj0e' \
    --leaderboardCode '["lFhEbm9JbBuRP3eT", "uccdiLHNelg5tB2M", "eXMnCLzjzHxMTejL"]' \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserRankingsAdminV3' test.out

#- 55 GetUserLeaderboardRankingsAdminV3
samples/cli/sample-apps Leaderboard getUserLeaderboardRankingsAdminV3 \
    --namespace $AB_NAMESPACE \
    --userId '1PpK6rVSo0vR02yB' \
    --limit '81' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 55 'GetUserLeaderboardRankingsAdminV3' test.out

#- 56 SetUserVisibilityV3
samples/cli/sample-apps Leaderboard setUserVisibilityV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NUTFngRtws8czIM9' \
    --body '{"visibility": false}' \
    > test.out 2>&1
eval_tap $? 56 'SetUserVisibilityV3' test.out

#- 57 GetLeaderboardConfigurationsPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationsPublicV3 \
    --namespace $AB_NAMESPACE \
    --isDeleted 'true' \
    --limit '72' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 57 'GetLeaderboardConfigurationsPublicV3' test.out

#- 58 GetLeaderboardConfigurationPublicV3
samples/cli/sample-apps Leaderboard getLeaderboardConfigurationPublicV3 \
    --leaderboardCode 'NNkNf4djeuJZ1wcX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetLeaderboardConfigurationPublicV3' test.out

#- 59 GetAllTimeLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getAllTimeLeaderboardRankingPublicV3 \
    --leaderboardCode 'JsBQjeKfuDeTDet3' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 59 'GetAllTimeLeaderboardRankingPublicV3' test.out

#- 60 GetCurrentCycleLeaderboardRankingPublicV3
samples/cli/sample-apps Leaderboard getCurrentCycleLeaderboardRankingPublicV3 \
    --cycleId '9AVuK1nUhm208Z2y' \
    --leaderboardCode 'f5g3iR1ssxui42BY' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 60 'GetCurrentCycleLeaderboardRankingPublicV3' test.out

#- 61 BulkGetUsersRankingPublicV3
samples/cli/sample-apps Leaderboard bulkGetUsersRankingPublicV3 \
    --leaderboardCode 'zGPoWY0HkhjgMy1c' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["D4d3LAhb3MZu4Gxv", "V8zDpYNsDoiSkzON", "UMF7uEgtkcDwKpwn"]}' \
    > test.out 2>&1
eval_tap $? 61 'BulkGetUsersRankingPublicV3' test.out

#- 62 GetUserRankingPublicV3
samples/cli/sample-apps Leaderboard getUserRankingPublicV3 \
    --leaderboardCode 'jYJdhwRR7DFKwDaO' \
    --namespace $AB_NAMESPACE \
    --userId 'NjfNyoVM7HfKmXdI' \
    > test.out 2>&1
eval_tap $? 62 'GetUserRankingPublicV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE