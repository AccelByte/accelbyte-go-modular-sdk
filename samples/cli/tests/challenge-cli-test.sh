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
    --keyword 'QtKTo88j' \
    --limit '51' \
    --offset '47' \
    --sortBy 'updatedAt:desc' \
    --status 'RETIRED' \
    --tags '["EhQa8L3A", "jDA2dGaD", "pOzcR6ea"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 8, "assignmentRule": "UNSCHEDULED", "code": "yBZXo3iQ", "description": "jtvHwRhK", "endAfter": 96, "endDate": "1982-10-10T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "7QYGS4ul", "randomizedPerRotation": true, "repeatAfter": 89, "resetConfig": {"resetDate": 87, "resetDay": 31, "resetTime": "tW1MUxjb"}, "rotation": "DAILY", "startDate": "1987-08-18T00:00:00Z", "tags": ["Os6YvF1Y", "yssdEj4I", "YotwFjqb"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId '1k95Fdrk' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'EvhtXAcl' \
    --limit '47' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'TJ40fceC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'ARZnoUb5' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 94, "assignmentRule": "RANDOMIZED", "description": "Bi5S06aF", "endAfter": 97, "endDate": "1997-06-27T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "KbKCJUlN", "randomizedPerRotation": true, "repeatAfter": 85, "resetConfig": {"resetDate": 43, "resetDay": 92, "resetTime": "KD3kJKI3"}, "rotation": "DAILY", "startDate": "1985-07-02T00:00:00Z", "tags": ["Ge5ExLwf", "KwAIPAFE", "UZdwgJz8"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'M4hcn3FM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'LnaRuxs9' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '23' \
    --sortBy 'updatedAt:asc' \
    --tags '["fMasWYeh", "bVAfxlEN", "a8WqZnbj"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'KaEqYxGI' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EK0rDGyl", "description": "G1mzXS7o", "isActive": false, "name": "H4LsWeP7", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "RHvVwB2O", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Vp77YMQP", "targetValue": 0.058155685530190904}, {"matcher": "LESS_THAN", "parameterName": "5JFigYtm", "parameterType": "STATISTIC_CYCLE", "statCycleId": "oUP5FKeK", "targetValue": 0.17756359891234208}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "UmwmkgFR", "parameterType": "USERACCOUNT", "statCycleId": "4lubIXvY", "targetValue": 0.23328141487579757}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "TCJOW5o8", "parameterType": "STATISTIC_CYCLE", "statCycleId": "GtsjgzB5", "targetValue": 0.4045010985858677}, {"matcher": "GREATER_THAN", "parameterName": "TjqBGAak", "parameterType": "ACHIEVEMENT", "statCycleId": "If4fU1UP", "targetValue": 0.8117952033452276}, {"matcher": "GREATER_THAN", "parameterName": "W93nN0xi", "parameterType": "USERACCOUNT", "statCycleId": "o6xaQwWN", "targetValue": 0.3453801038943244}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "rgJXb4AW", "parameterType": "STATISTIC_CYCLE", "statCycleId": "vW9pAL2d", "targetValue": 0.13341265798232305}, {"matcher": "EQUAL", "parameterName": "GdyZxo9q", "parameterType": "USERACCOUNT", "statCycleId": "Ck928j9o", "targetValue": 0.5321925638073373}, {"matcher": "GREATER_THAN", "parameterName": "LOQ9r7MC", "parameterType": "STATISTIC", "statCycleId": "ODNcKsBQ", "targetValue": 0.8487350721189508}]}], "rewards": [{"itemId": "hqsj0MSe", "itemName": "8hjQEUiS", "qty": 0.9374152024065354, "type": "ENTITLEMENT"}, {"itemId": "VqCa3ndY", "itemName": "zfVsVQS4", "qty": 0.5654774390334364, "type": "ENTITLEMENT"}, {"itemId": "5PFSaVzw", "itemName": "LO9VyZAs", "qty": 0.9101287970402221, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1987-09-25T00:00:00Z", "order": 62, "startTime": "1993-03-21T00:00:00Z"}, "tags": ["e7pHMBZj", "EnDcqUVd", "yRJWtTIc"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'HxtBQRC6' \
    --code 'Rrhk7SxL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'i5JeIi9r' \
    --code 'rgm9g6sD' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Wp298YsR", "isActive": false, "name": "FpIYslwY", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "65R6cVBw", "parameterType": "ENTITLEMENT", "statCycleId": "ytTkZDIB", "targetValue": 0.9544785391755874}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "lNVOMTvd", "parameterType": "ENTITLEMENT", "statCycleId": "EO8DD4YR", "targetValue": 0.35397193829170215}, {"matcher": "LESS_THAN", "parameterName": "k7zKfy3w", "parameterType": "ENTITLEMENT", "statCycleId": "HB7dMwnn", "targetValue": 0.9970157263084514}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "lSrfYkXR", "parameterType": "STATISTIC", "statCycleId": "RhfIJlKS", "targetValue": 0.42367696551957224}, {"matcher": "LESS_THAN", "parameterName": "GOEQP8A5", "parameterType": "STATISTIC_CYCLE", "statCycleId": "3GDCzkEQ", "targetValue": 0.8037579117282039}, {"matcher": "EQUAL", "parameterName": "BPP5poII", "parameterType": "STATISTIC", "statCycleId": "wwCrcJCC", "targetValue": 0.9051356531816073}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "YomhJ8AO", "parameterType": "USERACCOUNT", "statCycleId": "yFsiWFDa", "targetValue": 0.6834488955160289}, {"matcher": "EQUAL", "parameterName": "ZgQNKNck", "parameterType": "ENTITLEMENT", "statCycleId": "CYcpFYCw", "targetValue": 0.24871789860385063}, {"matcher": "GREATER_THAN", "parameterName": "xdpumFuP", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Tm8hWmbk", "targetValue": 0.910814648846594}]}], "rewards": [{"itemId": "aq1E44w0", "itemName": "V9eoriCV", "qty": 0.6917991337687392, "type": "ENTITLEMENT"}, {"itemId": "lNTg1Dd8", "itemName": "kPxPJ9mF", "qty": 0.9753681748311958, "type": "ENTITLEMENT"}, {"itemId": "V1UnziPG", "itemName": "1rkB3bBb", "qty": 0.04825240578836598, "type": "STATISTIC"}], "schedule": {"endTime": "1995-09-11T00:00:00Z", "order": 94, "startTime": "1980-12-10T00:00:00Z"}, "tags": ["GTRprvPu", "k4uwmto0", "qINkCspY"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'XA9jbWpI' \
    --code 'yZBLTZT5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'azhhBbvM' \
    --code '8KiylYGL' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '93' \
    --userId 'vuH6cPzl' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'viISuurq' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '4XfnDJV7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode '6b961Rnm' \
    --namespace $AB_NAMESPACE \
    --dateTime '1998-05-28T00:00:00Z' \
    --limit '8' \
    --offset '94' \
    --userId 'metP3I9x' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'K9ZifF5X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'pTqNFeuo' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1981-10-14T00:00:00Z"}' \
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
    --body '{"appName": "6rqObzI7", "extendType": "APP", "grpcServerAddress": "wiuEcjk4"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "DVlgolYy", "extendType": "CUSTOM", "grpcServerAddress": "61XxYYWP"}' \
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
    --body '{"userIds": ["1EquT1DT", "jjSlc0Qi", "uyN6S0zO"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["SOZp8WtS", "QmyFMmGQ", "bSrkJCe9"], "userId": "IpEYoOpM"}, {"rewardIds": ["a8R4T8BQ", "5XlKVNb9", "OnRqwhw5"], "userId": "3cUZsGG6"}, {"rewardIds": ["nVeoJmUH", "rR0C0IWs", "jKjjT22z"], "userId": "gtyC1N8k"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'F8PEEmrc' \
    --namespace $AB_NAMESPACE \
    --userId 'MykeEpXn' \
    --body '{"goalCode": "gNDbTqBh"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'suy6Wo8T' \
    --namespace $AB_NAMESPACE \
    --userId 'Jbiy8Uk5' \
    --dateTime '1994-08-20T00:00:00Z' \
    --goalCode '96KqDYf0' \
    --limit '80' \
    --offset '20' \
    --tags '["qgEuxyTI", "ORlLAT4J", "8uWF9sNu"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'tlfeoflQ' \
    --challengeCode 'sjieWcFJ' \
    --goalProgressionId 'rWITKbt5' \
    --limit '55' \
    --offset '74' \
    --sortBy 'createdAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'NxgMCSLs' \
    --body '{"rewardIDs": ["tcVR5STo", "2WxQrgHw", "NVCdaRyd"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'wyyXQhSp' \
    --limit '86' \
    --offset '23' \
    --sortBy 'createdAt:desc' \
    --status 'INIT' \
    --tags '["ATEAVDYR", "QBFepQD1", "jHHlNrdA"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'qT2mt414' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '80' \
    --sortBy 'updatedAt:desc' \
    --tags '["MU1oUgAU", "cSarTLNW", "Wd7XbkcV"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode '3vUA4E8W' \
    --code 'mLSW6f6T' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode '3F1qQU7W' \
    --namespace $AB_NAMESPACE \
    --dateTime '1987-05-12T00:00:00Z' \
    --limit '14' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'Brmt76lu' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "a43JpozL"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'qvN7lWr9' \
    --namespace $AB_NAMESPACE \
    --dateTime '1978-08-01T00:00:00Z' \
    --goalCode 'CsKSsReo' \
    --limit '43' \
    --offset '32' \
    --tags '["XU5H2yHs", "elO2iBAu", "NrgDljs9"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'PSLbyH6H' \
    --index '22' \
    --namespace $AB_NAMESPACE \
    --goalCode 'hwSWPLKj' \
    --limit '9' \
    --offset '11' \
    --tags '["uXadIgQ5", "6LINzb95", "sHBcdQD8"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'm7UVw7Hd' \
    --goalProgressionId '9y8x18mK' \
    --limit '16' \
    --offset '8' \
    --sortBy 'updatedAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["shckqXgF", "99Ah4uvb", "JTsiLjhi"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE