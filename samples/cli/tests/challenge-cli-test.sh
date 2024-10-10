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
echo "1..34"

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
    --limit '93' \
    --offset '64' \
    --sortBy 'm6qtteyV' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 98, "assignmentRule": "FIXED", "code": "m3EaYWqN", "description": "iBeyQFcc", "endAfter": 8, "endDate": "1978-11-06T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "AGS7uw49", "randomizedPerRotation": false, "repeatAfter": 22, "resetConfig": {"resetDate": 3, "resetDay": 33, "resetTime": "V5PmMETI"}, "rotation": "MONTHLY", "startDate": "1995-07-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'i63m9dSz' \
    --limit '75' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'nUdCdDQg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode '1y3v5XbR' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 48, "assignmentRule": "RANDOMIZED", "description": "yVMREixq", "endAfter": 62, "endDate": "1971-03-18T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "dnh6lFBn", "randomizedPerRotation": true, "repeatAfter": 64, "resetConfig": {"resetDate": 80, "resetDay": 24, "resetTime": "vI9mbD5C"}, "rotation": "WEEKLY", "startDate": "1971-09-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode '4xrRdHrK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'KSYFhDnU' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '14' \
    --sortBy 'yGvuxlPJ' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'YFVJhcuk' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TsoudlGL", "description": "AwcNROeb", "isActive": false, "name": "o7Dy0QA1", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "ewWbPEpe", "parameterType": "USERACCOUNT", "statCycleId": "S0kWQu7S", "targetValue": 0.8429526072913943}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "yripQewq", "parameterType": "STATISTIC_CYCLE", "statCycleId": "NU8AC5oU", "targetValue": 0.7461758872793811}, {"matcher": "LESS_THAN", "parameterName": "wa6vPlbX", "parameterType": "USERACCOUNT", "statCycleId": "C9OYDTva", "targetValue": 0.7141995242134911}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "O5eX2yhH", "parameterType": "ENTITLEMENT", "statCycleId": "JT8qq4fm", "targetValue": 0.42659575152721807}, {"matcher": "GREATER_THAN", "parameterName": "xpMGPrLy", "parameterType": "ENTITLEMENT", "statCycleId": "DA9En2wH", "targetValue": 0.37651140535099203}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "UVEfI7fa", "parameterType": "USERACCOUNT", "statCycleId": "BKJ1WIce", "targetValue": 0.8292478711500957}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "OQCsPhSJ", "parameterType": "STATISTIC", "statCycleId": "YoNNs0ij", "targetValue": 0.8996576790706665}, {"matcher": "EQUAL", "parameterName": "xAQxIUeh", "parameterType": "ENTITLEMENT", "statCycleId": "2c8vnYJE", "targetValue": 0.3095411761465233}, {"matcher": "LESS_THAN", "parameterName": "uTkK7FL2", "parameterType": "ENTITLEMENT", "statCycleId": "Jly5jHIX", "targetValue": 0.8750764539872421}]}], "rewards": [{"itemId": "uUVBK09Q", "itemName": "biyEH3f6", "qty": 0.5334294844168594, "type": "ENTITLEMENT"}, {"itemId": "IEiyLxeB", "itemName": "0Tl049QF", "qty": 0.2246275039375204, "type": "STATISTIC"}, {"itemId": "oNFt5F2J", "itemName": "zV2X0Csc", "qty": 0.4737780817597831, "type": "STATISTIC"}], "schedule": {"endTime": "1994-03-06T00:00:00Z", "order": 28, "startTime": "1988-07-17T00:00:00Z"}, "tags": ["eyjXPPEd", "oUwqRXBT", "LXJqmPvJ"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'GzMVB6Yl' \
    --code 'ffk2urFp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'qUB3c1oF' \
    --code 'kKFKZpuY' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "lsIY5Kf2", "isActive": false, "name": "MJDDC6md", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "uKvctuK8", "parameterType": "ENTITLEMENT", "statCycleId": "dcFBaG0x", "targetValue": 0.30824466080038493}, {"matcher": "EQUAL", "parameterName": "cXO4L0vl", "parameterType": "STATISTIC", "statCycleId": "JekcXiiu", "targetValue": 0.8119540597791655}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "2UaUUurL", "parameterType": "ENTITLEMENT", "statCycleId": "uflmRAHk", "targetValue": 0.9541199679747892}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "NLQoHuek", "parameterType": "STATISTIC", "statCycleId": "qMZP1Isf", "targetValue": 0.7056848951852579}, {"matcher": "GREATER_THAN", "parameterName": "fsZsVg8K", "parameterType": "STATISTIC_CYCLE", "statCycleId": "sKpEysyC", "targetValue": 0.283508689368718}, {"matcher": "LESS_THAN", "parameterName": "eqPt47bi", "parameterType": "USERACCOUNT", "statCycleId": "0Fga5hIW", "targetValue": 0.5240210548629325}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "aPLoVYEq", "parameterType": "USERACCOUNT", "statCycleId": "tUX3ulSv", "targetValue": 0.8190738795087456}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "Zgb57vDF", "parameterType": "STATISTIC_CYCLE", "statCycleId": "6pBk2sHz", "targetValue": 0.5612483048452467}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "OAC7Pm40", "parameterType": "STATISTIC_CYCLE", "statCycleId": "IFLUDrwu", "targetValue": 0.24616617387331308}]}], "rewards": [{"itemId": "eU0rJOtq", "itemName": "KLrXTVge", "qty": 0.9526442865350434, "type": "STATISTIC"}, {"itemId": "UPjWbYo9", "itemName": "mg0Cdvgw", "qty": 0.07565611085240453, "type": "STATISTIC"}, {"itemId": "CwQgkCSh", "itemName": "jToGYDNt", "qty": 0.3294471495001463, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1983-02-01T00:00:00Z", "order": 46, "startTime": "1988-09-22T00:00:00Z"}, "tags": ["9DdpiYax", "uiEwO1QK", "dBjISm3q"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'eR9uSgAT' \
    --code 'rCgbXJAr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'prTnc6k6' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPeriods' test.out

#- 14 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '7arEn4FJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminRandomizeChallenge' test.out

#- 15 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'VWby5bHJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteTiedChallenge' test.out

#- 16 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'FfKbN8Vb' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1977-04-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateTiedChallengeSchedule' test.out

#- 17 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAssignmentPlugin' test.out

#- 18 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "bzQD1Q3L", "extendType": "APP", "grpcServerAddress": "nzncz3VG"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateAssignmentPlugin' test.out

#- 19 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "dEn2k6F1", "extendType": "CUSTOM", "grpcServerAddress": "BMwtqrGx"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateAssignmentPlugin' test.out

#- 20 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteAssignmentPlugin' test.out

#- 21 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["X438MOpP", "KHSeyB4D", "EUX6ZyJv"]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminEvaluateProgress' test.out

#- 22 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["JQUZwnkw", "q0EVEJFR", "a3780xlV"], "userId": "oC66e6b2"}, {"rewardIds": ["Q1Oo5uj3", "junuy6Pu", "WCKo9xKf"], "userId": "YSqo04Mt"}, {"rewardIds": ["UWO1z0d5", "TOJP44Qm", "5NkaS5dV"], "userId": "1MpAxsx7"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminClaimUsersRewards' test.out

#- 23 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'AebRDa0R' \
    --namespace $AB_NAMESPACE \
    --userId 'RSqMiukB' \
    --body '{"goalCode": "BOAY6cav"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminClaimUserRewardsByGoalCode' test.out

#- 24 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'IRLAyNrW' \
    --namespace $AB_NAMESPACE \
    --userId 'kfnJsv3B' \
    --dateTime '1992-05-13T00:00:00Z' \
    --goalCode 'r3u6DDuX' \
    --limit '25' \
    --offset '96' \
    --tags '["CBp6ixeP", "DinLoymO", "0Pe8yLcK"]' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserProgression' test.out

#- 25 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'R5WIOrFX' \
    --limit '82' \
    --offset '94' \
    --sortBy 'fctnFazr' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetUserRewards' test.out

#- 26 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'aiSzjcYz' \
    --body '{"rewardIDs": ["2S3FK5us", "Ao4GnIYG", "E5DWQ5dx"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewards' test.out

#- 27 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '67' \
    --sortBy 'f4PlogQt' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 27 'GetChallenges' test.out

#- 28 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode '21GOeTBW' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '78' \
    --tags '["4PwQmcg9", "QwowoLD0", "42Dx4PLh"]' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetScheduledGoals' test.out

#- 29 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'd7Tc58Mp' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "LpftBN7D"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicClaimUserRewardsByGoalCode' test.out

#- 30 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'EvaluateMyProgress' test.out

#- 31 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'hhtaJ5Fe' \
    --namespace $AB_NAMESPACE \
    --dateTime '1988-05-13T00:00:00Z' \
    --goalCode '5Fg7A1Ue' \
    --limit '43' \
    --offset '96' \
    --tags '["vYGFqQHH", "8UdXpZEA", "RpaW018f"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserProgression' test.out

#- 32 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'g13csFnF' \
    --index '48' \
    --namespace $AB_NAMESPACE \
    --goalCode 'dgrg0u7f' \
    --limit '1' \
    --offset '63' \
    --tags '["qAz7VEJt", "ifStxM1u", "QaKA1cYP"]' \
    > test.out 2>&1
eval_tap $? 32 'PublicGetPastUserProgression' test.out

#- 33 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '51' \
    --sortBy 'wp3B64QP' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 33 'PublicGetUserRewards' test.out

#- 34 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["5HTxrmRt", "yGxwWSy9", "c622pUW3"]}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE