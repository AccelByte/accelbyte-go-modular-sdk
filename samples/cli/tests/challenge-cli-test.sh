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
    --keyword 'zUUDc9Rk' \
    --limit '70' \
    --offset '67' \
    --sortBy 'createdAt:desc' \
    --status 'TIED' \
    --tags '["RQxZk00r", "FeJTv0wH", "MZir4NtG"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 56, "assignmentRule": "FIXED", "code": "QoTMUCow", "description": "2aqGjj9i", "endAfter": 70, "endDate": "1996-12-10T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "Q6vkHwc6", "randomizedPerRotation": false, "repeatAfter": 7, "resetConfig": {"resetDate": 93, "resetDay": 28, "resetTime": "iP0Q0JOR"}, "rotation": "DAILY", "startDate": "1982-06-06T00:00:00Z", "tags": ["IWIeBP5v", "2TwKEsGz", "IHimm5OU"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'xJ7iGDrV' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId '7XHZSrXG' \
    --limit '9' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '6p5E2skB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'Iy3M5Dcs' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 0, "assignmentRule": "FIXED", "description": "cqn78gBO", "endAfter": 2, "endDate": "1988-09-17T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "HpUfx5hB", "randomizedPerRotation": false, "repeatAfter": 56, "resetConfig": {"resetDate": 12, "resetDay": 55, "resetTime": "5iUVGaus"}, "rotation": "DAILY", "startDate": "1994-09-28T00:00:00Z", "tags": ["lha8h780", "jr5HegQY", "0LChbAEc"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'JdiM1lFt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'ReolUArl' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '3' \
    --sortBy 'createdAt:desc' \
    --tags '["rG7Xq4oK", "AGCZI8NX", "fnrHdqp8"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'mEwgaMpK' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fX87487h", "description": "xhO3mTHc", "isActive": true, "name": "5WKmWkHJ", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "QrckCx6F", "parameterType": "ACHIEVEMENT", "statCycleId": "EietXCfA", "targetValue": 0.6188412405854578}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "GyCcsSeG", "parameterType": "USERACCOUNT", "statCycleId": "V6Ci9zoB", "targetValue": 0.17820105104898376}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "f0hRy51U", "parameterType": "STATISTIC", "statCycleId": "5VYmWDnp", "targetValue": 0.9164227886984879}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "hEg7IKlL", "parameterType": "ACHIEVEMENT", "statCycleId": "81UYon2B", "targetValue": 0.40012926978618146}, {"matcher": "GREATER_THAN", "parameterName": "yhwiTlg1", "parameterType": "STATISTIC", "statCycleId": "52RBY4i4", "targetValue": 0.7328535345031657}, {"matcher": "EQUAL", "parameterName": "Wmv6NIHZ", "parameterType": "USERACCOUNT", "statCycleId": "Uy88ghnn", "targetValue": 0.7561167934989036}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "eJJFzZB5", "parameterType": "STATISTIC", "statCycleId": "ocEzHVUg", "targetValue": 0.9595420199596001}, {"matcher": "GREATER_THAN", "parameterName": "6jneZ7BF", "parameterType": "ENTITLEMENT", "statCycleId": "hSA1r9KZ", "targetValue": 0.36996107704676373}, {"matcher": "GREATER_THAN", "parameterName": "8bGCYVmK", "parameterType": "USERACCOUNT", "statCycleId": "IYrTLaKD", "targetValue": 0.49379737364578236}]}], "rewards": [{"itemId": "TaSr6dgf", "itemName": "5z9XLPTh", "qty": 0.737315426724585, "type": "ENTITLEMENT"}, {"itemId": "A1TlHm2e", "itemName": "lVOcAAP8", "qty": 0.23712334729545292, "type": "ENTITLEMENT"}, {"itemId": "ozbcGICz", "itemName": "kVorCZiP", "qty": 0.3376339335943541, "type": "STATISTIC"}], "schedule": {"endTime": "1998-09-03T00:00:00Z", "order": 46, "startTime": "1985-01-26T00:00:00Z"}, "tags": ["qWN2ZdRJ", "rJYjI9Vy", "CbJuj91k"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '7xrcTdxd' \
    --code 'rgyxDSeQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'JRN3HLVY' \
    --code '1EBCFPQQ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "fMc9osJN", "isActive": false, "name": "2NNEMLzx", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "46d7DrNg", "parameterType": "STATISTIC_CYCLE", "statCycleId": "odM5FZRy", "targetValue": 0.305370140763801}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "VIb2JR0E", "parameterType": "ACHIEVEMENT", "statCycleId": "lNUQCUgf", "targetValue": 0.39989935743412797}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "ImgDNJsg", "parameterType": "STATISTIC", "statCycleId": "DgF0WQhe", "targetValue": 0.7203022613402703}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Kt4oIwZt", "parameterType": "ENTITLEMENT", "statCycleId": "wI3B8QLU", "targetValue": 0.10274738123125937}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "eQgf31pl", "parameterType": "STATISTIC", "statCycleId": "QgWmakrh", "targetValue": 0.8619045744532426}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "Qetb5JRs", "parameterType": "STATISTIC_CYCLE", "statCycleId": "TGohFzUm", "targetValue": 0.979294785857705}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "DfaWLwyz", "parameterType": "ENTITLEMENT", "statCycleId": "l2zateT1", "targetValue": 0.7557614542626283}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "MoeB238r", "parameterType": "ENTITLEMENT", "statCycleId": "gzVPeuRy", "targetValue": 0.31211235127335346}, {"matcher": "EQUAL", "parameterName": "VcZQHGpA", "parameterType": "ACHIEVEMENT", "statCycleId": "1OTg9d4D", "targetValue": 0.21009028262971385}]}], "rewards": [{"itemId": "H3wnYXXv", "itemName": "sLjsggPF", "qty": 0.6433577147625464, "type": "STATISTIC"}, {"itemId": "13Ze7KvH", "itemName": "NFiGAfIl", "qty": 0.8277688901166428, "type": "ENTITLEMENT"}, {"itemId": "XicqJ6X2", "itemName": "nUZJt4MJ", "qty": 0.9821299785368323, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1986-07-03T00:00:00Z", "order": 98, "startTime": "1978-12-31T00:00:00Z"}, "tags": ["GGXUXKVV", "anu7uBQF", "rAbYUIo9"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'dApiXza8' \
    --code 'p140VaEB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'P9TBFDl1' \
    --code 'EkJxa05p' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '78' \
    --userId 'IF6He0kd' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'TZ4yf1d8' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'lKzHyWVO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode '4BK6XEge' \
    --namespace $AB_NAMESPACE \
    --dateTime '1982-10-23T00:00:00Z' \
    --limit '90' \
    --offset '44' \
    --userId 'vkuLWwZA' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'x6b1owDu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode '8CPs72Uh' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1982-08-06T00:00:00Z"}' \
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
    --body '{"appName": "TOMbcsag", "extendType": "APP", "grpcServerAddress": "NZ9aG1D9"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "mOW7nndG", "extendType": "CUSTOM", "grpcServerAddress": "U5nf8jSK"}' \
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
    --challengeCode '["cqWHvIIG", "94Oe3fru", "ZwD149Qf"]' \
    --body '{"userIds": ["jvknouFb", "WvD0TQ1R", "H36KlrpS"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["3V5Qm4q7", "1AJsOuBV", "UwAuwjtJ"], "userId": "rFHDQIfb"}, {"rewardIds": ["6kamdYoC", "SB53aog0", "99zTbqRN"], "userId": "l93qMu4S"}, {"rewardIds": ["OzQXzeZf", "rak4eRaD", "tVofLJq1"], "userId": "VtKIl5g5"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'Mrq0kbcI' \
    --namespace $AB_NAMESPACE \
    --userId 'vQPd1uAE' \
    --body '{"goalCode": "oW8zzafF"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'v5cCe7Vx' \
    --namespace $AB_NAMESPACE \
    --userId '3kp8vKCb' \
    --dateTime '1971-10-21T00:00:00Z' \
    --goalCode 'FcoPNo7s' \
    --limit '53' \
    --offset '84' \
    --tags '["C2NJwA8I", "f5DXJCmH", "o7p9c4iY"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'AOmhnh61' \
    --challengeCode '9fmU2lfH' \
    --goalProgressionId 'ZY9wAUb0' \
    --limit '99' \
    --offset '20' \
    --sortBy 'updatedAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'hhKimBOs' \
    --body '{"rewardIDs": ["PEgsemxG", "3tZ2NeJ9", "9Nkb8X5T"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'NKY00aOP' \
    --limit '8' \
    --offset '90' \
    --sortBy 'updatedAt:desc' \
    --status 'RETIRED' \
    --tags '["SpMT4G6v", "qoTmd8z8", "omi3Ncr3"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'KfFkn2g1' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '75' \
    --sortBy 'updatedAt:desc' \
    --tags '["4qX8sXQh", "eFw4Ft69", "sX9btVQB"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'LxsgvXR0' \
    --code 'JZimQacA' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'z4nF2JAx' \
    --namespace $AB_NAMESPACE \
    --dateTime '1984-10-07T00:00:00Z' \
    --limit '50' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'Q1i1GvM8' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "nnpvnYbC"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["HdT02Unq", "gLYqKzfB", "IWStPfOv"]' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'DEboLDmi' \
    --namespace $AB_NAMESPACE \
    --dateTime '1979-04-13T00:00:00Z' \
    --goalCode 'CH7XjuMo' \
    --limit '26' \
    --offset '42' \
    --tags '["XFDOJlYd", "PSymzLXR", "xQTN00Do"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'MzWk6liX' \
    --index '47' \
    --namespace $AB_NAMESPACE \
    --goalCode 's7hoZK22' \
    --limit '48' \
    --offset '14' \
    --tags '["xB2sZZz9", "SUuZqev6", "5kY1GjFa"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'djxAaMyg' \
    --goalProgressionId 'pNMn7ag9' \
    --limit '12' \
    --offset '88' \
    --sortBy 'createdAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["w7XDUoSh", "lhZfUPDJ", "0GLlT4by"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE