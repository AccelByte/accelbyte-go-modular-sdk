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
echo "1..29"

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
    --limit '52' \
    --offset '84' \
    --sortBy 'KBSZo4Xi' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 20, "assignmentRule": "UNSCHEDULED", "code": "nKFvr2PA", "description": "CLOylOSi", "endAfter": 73, "endDate": "1993-01-27T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "ZLVpIyKp", "randomizedPerRotation": false, "repeatAfter": 18, "resetConfig": {"resetDate": 53, "resetDay": 60, "resetTime": "aaQvAQAp"}, "rotation": "NONE", "startDate": "1980-04-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'rwLeJ7Ov' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode '2EC4t6GN' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 16, "assignmentRule": "UNSCHEDULED", "description": "zgD8dvrI", "endAfter": 27, "endDate": "1986-07-07T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "szFvuMCu", "randomizedPerRotation": true, "repeatAfter": 95, "resetConfig": {"resetDate": 87, "resetDay": 36, "resetTime": "zMOjxfcd"}, "rotation": "NONE", "startDate": "1998-07-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'zPtmZVY8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'u7tjlKsX' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '61' \
    --sortBy 'YOcdEc7c' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'mOIrTM4Q' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8sJOm2Ap", "description": "SmCkaYZN", "isActive": false, "name": "V6ADhnfm", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "X4l5RJaI", "parameterType": "STATISTIC", "statCycleId": "oTPppXWQ", "targetValue": 0.1938193745991018}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "3Xgz7tz9", "parameterType": "ENTITLEMENT", "statCycleId": "svTBq2v5", "targetValue": 0.03516879474918688}, {"matcher": "LESS_THAN", "parameterName": "qSqK7cEE", "parameterType": "USERACCOUNT", "statCycleId": "s9PhGkQZ", "targetValue": 0.2971192196165321}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "0oiCJOzr", "parameterType": "ENTITLEMENT", "statCycleId": "ndxBYDgW", "targetValue": 0.34480982269397886}, {"matcher": "LESS_THAN", "parameterName": "ElhCvtNW", "parameterType": "USERACCOUNT", "statCycleId": "ndtHy29a", "targetValue": 0.35739690229813603}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "qIb14HAD", "parameterType": "ACHIEVEMENT", "statCycleId": "Q8Zr8tRu", "targetValue": 0.23043684185998958}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "kMtqjXyZ", "parameterType": "USERACCOUNT", "statCycleId": "LIoWyxEg", "targetValue": 0.184569591845421}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "sWHKcBhf", "parameterType": "ACHIEVEMENT", "statCycleId": "yKT5uZ1Y", "targetValue": 0.6838838835387651}, {"matcher": "EQUAL", "parameterName": "v6JMqm8U", "parameterType": "USERACCOUNT", "statCycleId": "vs9C64LX", "targetValue": 0.5798122720374952}]}], "rewards": [{"itemId": "5q394K4z", "itemName": "W8ElemAD", "qty": 0.81027340494237, "type": "STATISTIC"}, {"itemId": "1es1Xkeh", "itemName": "aJli8C83", "qty": 0.22063126159251145, "type": "ENTITLEMENT"}, {"itemId": "ZqgzZYHP", "itemName": "FoVkTv0l", "qty": 0.01558596691569647, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1990-10-04T00:00:00Z", "order": 4, "startTime": "1972-04-12T00:00:00Z"}, "tags": ["w8iCkBWQ", "UiEiweqb", "EOljoz6u"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'j4gkxvD4' \
    --code 'dTolGxs6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'Gsu2KbgR' \
    --code 'S20m7H6p' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "gqomX1cU", "isActive": false, "name": "VJLuhFuZ", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "2dIqAiGb", "parameterType": "ENTITLEMENT", "statCycleId": "EEJB2NoC", "targetValue": 0.054192610806913954}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "VrWmDbuw", "parameterType": "ACHIEVEMENT", "statCycleId": "l5QQKNhd", "targetValue": 0.7059655758996168}, {"matcher": "GREATER_THAN", "parameterName": "k1JZH7z2", "parameterType": "ENTITLEMENT", "statCycleId": "jTdGSTNT", "targetValue": 0.035204292244859325}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "XNS8QzHG", "parameterType": "STATISTIC", "statCycleId": "E4xo6L7r", "targetValue": 0.10124227270760477}, {"matcher": "LESS_THAN", "parameterName": "xt1mZrfr", "parameterType": "STATISTIC_CYCLE", "statCycleId": "99ZmDGKH", "targetValue": 0.2924422899274115}, {"matcher": "GREATER_THAN", "parameterName": "ESAMsWfg", "parameterType": "ACHIEVEMENT", "statCycleId": "aSvl7cd5", "targetValue": 0.273352197793452}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "zNm8lqBg", "parameterType": "ENTITLEMENT", "statCycleId": "0t5RdOSB", "targetValue": 0.32432629547088765}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "3FEXvyU7", "parameterType": "STATISTIC", "statCycleId": "EvsMqrAM", "targetValue": 0.19654790346967943}, {"matcher": "GREATER_THAN", "parameterName": "p6cglLat", "parameterType": "STATISTIC", "statCycleId": "WzpQudAu", "targetValue": 0.7413171448876175}]}], "rewards": [{"itemId": "reZreUx2", "itemName": "k3QYpzMb", "qty": 0.7459486360725919, "type": "ENTITLEMENT"}, {"itemId": "qzVFzkJw", "itemName": "gwD2dp3k", "qty": 0.7537178943983559, "type": "STATISTIC"}, {"itemId": "H6FmMHYH", "itemName": "kDNYS7qI", "qty": 0.4802203593768892, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1984-12-10T00:00:00Z", "order": 9, "startTime": "1990-06-22T00:00:00Z"}, "tags": ["81ToP96Y", "oAXx4qT8", "gsRYriiy"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'sYCnQ4BY' \
    --code 'p2EP3UIR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'uj6LB6TO' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'kn2yxztB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'L5hmdhkw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAssignmentPlugin' test.out

#- 16 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "mrWxVsjW", "extendType": "CUSTOM", "grpcServerAddress": "fiMfF8KY"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateAssignmentPlugin' test.out

#- 17 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "likHir96", "extendType": "CUSTOM", "grpcServerAddress": "MoCMobD4"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminCreateAssignmentPlugin' test.out

#- 18 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteAssignmentPlugin' test.out

#- 19 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["4aVCQVNi", "PAVUHPkK", "LGVTBF3W"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminEvaluateProgress' test.out

#- 20 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["gPBPWvV3", "7T7rzgYN", "gRiv8W1q"], "userId": "RztttdOW"}, {"rewardIds": ["W0G4wNW8", "emWBeDg4", "kwyvQEMk"], "userId": "45VJOhJE"}, {"rewardIds": ["YMgDNmMb", "8zuTte5B", "wPH7YoAY"], "userId": "63x4rzyb"}]' \
    > test.out 2>&1
eval_tap $? 20 'AdminClaimUsersRewards' test.out

#- 21 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'voTxV7yo' \
    --limit '13' \
    --offset '8' \
    --sortBy '4AYARQWr' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserRewards' test.out

#- 22 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'rTvLZ7FE' \
    --body '{"rewardIDs": ["OrLK1z1L", "AMnVADLs", "9agaPLS2"]}' \
    > test.out 2>&1
eval_tap $? 22 'AdminClaimUserRewards' test.out

#- 23 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '57' \
    --sortBy 'FkwLwszt' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 23 'GetChallenges' test.out

#- 24 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'KelUgvtm' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '99' \
    --tags '["1jD5Dqsz", "uATtdf5e", "8EPKrFXU"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicGetScheduledGoals' test.out

#- 25 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'EvaluateMyProgress' test.out

#- 26 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'v5KwSGgQ' \
    --namespace $AB_NAMESPACE \
    --dateTime '1978-10-24T00:00:00Z' \
    --goalCode 'Y0waztBP' \
    --limit '50' \
    --offset '6' \
    --tags '["JO4AVL0H", "1yJtoWOv", "4S2DkZVF"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicGetUserProgression' test.out

#- 27 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'gU4LVPMj' \
    --index '48' \
    --namespace $AB_NAMESPACE \
    --goalCode 'DL6dKqar' \
    --limit '75' \
    --offset '33' \
    --tags '["zj9uOGwL", "gQI9uRWO", "B4zq6F8s"]' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetPastUserProgression' test.out

#- 28 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '37' \
    --sortBy '6S7g5QtR' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetUserRewards' test.out

#- 29 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["lpBb9kAZ", "TumrYYlj", "j71ilxQA"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE