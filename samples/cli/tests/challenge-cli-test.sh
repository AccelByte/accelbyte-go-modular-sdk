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
echo "1..39"

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

#- 2 AdminGetChallenges
samples/cli/sample-apps Challenge adminGetChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'bsfOZzZj' \
    --limit '62' \
    --offset '69' \
    --sortBy 'code:desc' \
    --status 'TIED' \
    --tags '["PxHaXQNm", "pH9k1WP8", "krIO766Z"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 43, "assignmentRule": "FIXED", "code": "FeoELvRN", "description": "2r1sj7Kl", "endAfter": 84, "endDate": "1982-05-15T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "VSp5oA4p", "randomizedPerRotation": true, "repeatAfter": 47, "resetConfig": {"resetDate": 36, "resetDay": 52, "resetTime": "IlT9kW1w"}, "rotation": "NONE", "startDate": "1987-09-12T00:00:00Z", "tags": ["cizeo7Yy", "1uABT7xt", "CvUK70tS"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'qhQxZFWT' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'cK7fbJfH' \
    --limit '85' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'p8taYOUj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'fFprMakC' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 45, "assignmentRule": "UNSCHEDULED", "description": "jDQhfSip", "endAfter": 16, "endDate": "1979-02-14T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "P3GJbAb8", "randomizedPerRotation": false, "repeatAfter": 95, "resetConfig": {"resetDate": 92, "resetDay": 64, "resetTime": "tbU7dYNp"}, "rotation": "NONE", "startDate": "1984-08-20T00:00:00Z", "tags": ["FtY6SM4K", "cZpdSeCr", "Iy652zX7"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'BSXkrOOB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'axBsky8o' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '24' \
    --sortBy 'updatedAt:asc' \
    --tags '["EkoJxtkX", "S3iDBaIX", "sRAsiVxH"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'CNLAQAdG' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Q2yLG9vq", "description": "FTUYDlBP", "isActive": false, "name": "sfEWLOyk", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "cQJ92aZi", "matcher": "EQUAL", "parameterName": "o66g4PdB", "parameterType": "ACHIEVEMENT", "statCycleId": "02KIYLqz", "targetValue": 0.23179245638069057}, {"id": "tv13xWY7", "matcher": "EQUAL", "parameterName": "HRTETkm5", "parameterType": "STATISTIC_CYCLE", "statCycleId": "GxO3ggQU", "targetValue": 0.9151313798035301}, {"id": "7S6V88At", "matcher": "EQUAL", "parameterName": "KXoiJvoY", "parameterType": "STATISTIC_CYCLE", "statCycleId": "LCgllTL9", "targetValue": 0.5747850357979019}]}, {"operator": "AND", "predicates": [{"id": "9Tde5ogp", "matcher": "EQUAL", "parameterName": "uDbusLFT", "parameterType": "USERACCOUNT", "statCycleId": "97vQVTNM", "targetValue": 0.5189891783228566}, {"id": "Ce8O1DO4", "matcher": "LESS_THAN", "parameterName": "vh0oPaGD", "parameterType": "STATISTIC_CYCLE", "statCycleId": "UUGkl6Di", "targetValue": 0.08795652254640751}, {"id": "yqxE2Iip", "matcher": "GREATER_THAN", "parameterName": "lB9YjlNw", "parameterType": "USERACCOUNT", "statCycleId": "EyPesSd0", "targetValue": 0.5276972891245452}]}, {"operator": "AND", "predicates": [{"id": "nm5LWMUe", "matcher": "LESS_THAN_EQUAL", "parameterName": "aC04B0xk", "parameterType": "USERACCOUNT", "statCycleId": "fkbrznLN", "targetValue": 0.2701753955578433}, {"id": "412XiV5O", "matcher": "GREATER_THAN_EQUAL", "parameterName": "E6w6KIwL", "parameterType": "STATISTIC", "statCycleId": "Hs8ITRuo", "targetValue": 0.12198399346258448}, {"id": "AzAcBgXY", "matcher": "GREATER_THAN", "parameterName": "f2IhnXvU", "parameterType": "ACHIEVEMENT", "statCycleId": "dopWqTFK", "targetValue": 0.06008927079416948}]}], "rewards": [{"itemId": "oeBPVgVG", "itemName": "mUjySuI1", "qty": 0.9629677075299979, "type": "STATISTIC"}, {"itemId": "3N5vup53", "itemName": "0mOi24cT", "qty": 0.29385265466189614, "type": "STATISTIC"}, {"itemId": "VpJYS26F", "itemName": "JhvAFgVd", "qty": 0.44518573774236836, "type": "STATISTIC"}], "schedule": {"endTime": "1979-12-22T00:00:00Z", "order": 94, "startTime": "1991-08-03T00:00:00Z"}, "tags": ["5qpvGr4X", "28KlxiHJ", "Tnxxyfnu"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'H9tAPGtX' \
    --code 'GykTIX0Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'nHU1MOb3' \
    --code 'HdBuNS5v' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "SSkaL9Wt", "isActive": false, "name": "TVlqlC3v", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "KPSbBG1n", "matcher": "GREATER_THAN", "parameterName": "LOoI2sXj", "parameterType": "STATISTIC_CYCLE", "statCycleId": "vZPZtn91", "targetValue": 0.01663829929381344}, {"id": "HDLma8f9", "matcher": "GREATER_THAN", "parameterName": "cYCgo9PQ", "parameterType": "ACHIEVEMENT", "statCycleId": "bwAdKEPO", "targetValue": 0.5917698968988946}, {"id": "hYqocw7O", "matcher": "GREATER_THAN", "parameterName": "CQxB79fq", "parameterType": "STATISTIC_CYCLE", "statCycleId": "3kgYU6hH", "targetValue": 0.529530890106676}]}, {"operator": "AND", "predicates": [{"id": "IcVcBtjM", "matcher": "GREATER_THAN_EQUAL", "parameterName": "7Hr68Nj1", "parameterType": "STATISTIC_CYCLE", "statCycleId": "NnTjLUuX", "targetValue": 0.9032561820454994}, {"id": "e3vrBDyV", "matcher": "GREATER_THAN", "parameterName": "XYTIOTcc", "parameterType": "ENTITLEMENT", "statCycleId": "3S1TcU4S", "targetValue": 0.5768345501952246}, {"id": "aByYWPKp", "matcher": "LESS_THAN_EQUAL", "parameterName": "TiJBEYT9", "parameterType": "ENTITLEMENT", "statCycleId": "JwfmP2DF", "targetValue": 0.6526620428153384}]}, {"operator": "AND", "predicates": [{"id": "HL8E5anD", "matcher": "LESS_THAN", "parameterName": "dImtHvoo", "parameterType": "ACHIEVEMENT", "statCycleId": "eziZ79fk", "targetValue": 0.6979235595132093}, {"id": "yZjuBSlL", "matcher": "GREATER_THAN", "parameterName": "4XA7AIQc", "parameterType": "ENTITLEMENT", "statCycleId": "jzijkUM2", "targetValue": 0.13182034666758047}, {"id": "jpiHB2Ob", "matcher": "GREATER_THAN", "parameterName": "TikeTVM2", "parameterType": "ACHIEVEMENT", "statCycleId": "ks3jiEWM", "targetValue": 0.7307938870877329}]}], "rewards": [{"itemId": "KdjCcdoE", "itemName": "JUzD9bIy", "qty": 0.8070378888559188, "type": "ENTITLEMENT"}, {"itemId": "0Iw8z9Kk", "itemName": "35HOSoTV", "qty": 0.963959104328388, "type": "ENTITLEMENT"}, {"itemId": "neAbEsdC", "itemName": "6RXq6PdH", "qty": 0.9400777225915565, "type": "STATISTIC"}], "schedule": {"endTime": "1977-01-05T00:00:00Z", "order": 31, "startTime": "1990-11-11T00:00:00Z"}, "tags": ["oz5YZz4o", "Bvfnf6cH", "j250fS98"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'zoZqnXbq' \
    --code 'liJjFep0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'pBAzaD7X' \
    --code 'C4GF0Lga' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '63' \
    --userId 'ODVbTMQO' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode '3HXTSx0z' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'bIUvKEks' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'gXuVehK9' \
    --namespace $AB_NAMESPACE \
    --dateTime '1998-10-19T00:00:00Z' \
    --limit '53' \
    --offset '90' \
    --userId 'uwxf5oAI' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode '7KZt5GDv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'QGn4JTOq' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1996-09-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateTiedChallengeSchedule' test.out

#- 20 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminGetAssignmentPlugin' test.out

#- 21 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "3sSRmeeM", "extendType": "CUSTOM", "grpcServerAddress": "JC3bhdOf"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "dWMMnNsn", "extendType": "APP", "grpcServerAddress": "Z9LROe7a"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateAssignmentPlugin' test.out

#- 23 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminDeleteAssignmentPlugin' test.out

#- 24 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["4VV1jvOG", "9xT1oNUO", "skUoHlMZ"]' \
    --includeOneTimeEvent 'SGvkvP63' \
    --body '{"userIds": ["NwKY41z9", "12641vQW", "qv3Tk8oZ"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["pXLkuYZk", "OoAT876E", "IfIaoxQz"], "userId": "ZS6jL3Vq"}, {"rewardIds": ["zfwis4yd", "C2xDVISM", "52E4Q89e"], "userId": "QQdVqsYP"}, {"rewardIds": ["0b3varrg", "SQ1IlV8O", "5zRaf7vo"], "userId": "YNCcZBTs"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'cYeQmNvF' \
    --namespace $AB_NAMESPACE \
    --userId 'usP5PnAO' \
    --body '{"goalCode": "87Le52UQ"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'hVE398oe' \
    --namespace $AB_NAMESPACE \
    --userId 'yMbtG0lZ' \
    --dateTime '1987-03-19T00:00:00Z' \
    --goalCode 'CIbUfE2j' \
    --limit '58' \
    --offset '95' \
    --tags '["9nzpZcXw", "xyvzGEya", "FB4WGijM"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'N2Wgr9vN' \
    --challengeCode 'UT1XubXE' \
    --goalProgressionId 'TNR7qAiu' \
    --limit '42' \
    --offset '71' \
    --sortBy 'updatedAt:desc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '4Cskb6br' \
    --body '{"rewardIDs": ["WMGDWI5v", "aBqSEQ8C", "JovJnBiW"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'RHcaAY4S' \
    --limit '61' \
    --offset '66' \
    --sortBy 'code:asc' \
    --status 'RETIRED' \
    --tags '["1wqkxfo3", "SRkgVo5I", "FvaC6Lzw"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode '1kGbeHXI' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '61' \
    --sortBy 'createdAt:asc' \
    --tags '["bHx07Xku", "2RmYESXo", "lAYpGAUb"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'DtElBmRU' \
    --code 'FHxyQdmb' \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'C6xX9apH' \
    --namespace $AB_NAMESPACE \
    --dateTime '1972-09-22T00:00:00Z' \
    --limit '46' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'a92Z6asU' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "DsY6Yvai"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["I0ckx9Sm", "0CCkgWvK", "cHszcSOe"]' \
    --includeOneTimeEvent 'ab0tE6d6' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'HuFN7W7e' \
    --namespace $AB_NAMESPACE \
    --dateTime '1984-03-24T00:00:00Z' \
    --goalCode 'cQY5GlHF' \
    --limit '29' \
    --offset '67' \
    --tags '["WHEd0Rhs", "0st3EX66", "f8tXJA82"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'QKxm9WWC' \
    --index '27' \
    --namespace $AB_NAMESPACE \
    --goalCode 'WjhxRSNr' \
    --limit '94' \
    --offset '35' \
    --tags '["6H2Tp5m8", "oHU8kobO", "2kngxlc9"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'wdpLmhyG' \
    --goalProgressionId '1aysi7MY' \
    --limit '60' \
    --offset '2' \
    --sortBy 'updatedAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["IJ2nHyeL", "VGDCYgpN", "0PdmVU1t"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE