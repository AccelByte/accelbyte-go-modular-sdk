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
    --keyword 'V0H1jxU4' \
    --limit '62' \
    --offset '89' \
    --sortBy 'createdAt' \
    --status 'TIED' \
    --tags '["E9OHTpgo", "MVBbiQ7A", "RGTxm9JQ"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 74, "assignmentRule": "UNSCHEDULED", "code": "ZxqeieUU", "description": "cnhfFD9b", "endAfter": 33, "endDate": "1993-01-08T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "V45lNVnK", "randomizedPerRotation": false, "repeatAfter": 72, "resetConfig": {"resetDate": 19, "resetDay": 73, "resetTime": "xzTftXCm"}, "rotation": "WEEKLY", "startDate": "1971-01-26T00:00:00Z", "tags": ["wgbcAaMC", "X6YEdHJP", "Nt1D3IFt"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'YvDduOUD' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'q6mSa41Z' \
    --limit '60' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'pCt7RHus' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'i2ehu4WJ' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 23, "assignmentRule": "UNSCHEDULED", "description": "GDyWuenh", "endAfter": 22, "endDate": "1991-06-10T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "nyjPLmMR", "randomizedPerRotation": true, "repeatAfter": 19, "resetConfig": {"resetDate": 29, "resetDay": 25, "resetTime": "BVkSdxzP"}, "rotation": "DAILY", "startDate": "1971-12-13T00:00:00Z", "tags": ["Pedb0cTH", "FDqjFKvl", "4J57oZYf"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'QgEtwSuW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'CMztR2Zv' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '27' \
    --sortBy 'updatedAt:asc' \
    --tags '["u58VQDpx", "FBy6CSF1", "yn6L5iIV"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'L2q2hdK1' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qAIhWntg", "description": "e8GQNbZg", "isActive": true, "name": "IxOnzLR8", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "dIYGd9vU", "parameterType": "ENTITLEMENT", "statCycleId": "5Nso2w5l", "targetValue": 0.29820355156319733}, {"matcher": "LESS_THAN", "parameterName": "1dlz23ag", "parameterType": "USERACCOUNT", "statCycleId": "ryq74f2h", "targetValue": 0.7908704818377231}, {"matcher": "LESS_THAN", "parameterName": "ONiGfDA7", "parameterType": "USERACCOUNT", "statCycleId": "gdiwWZDC", "targetValue": 0.9204895088736914}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "gFQFugVE", "parameterType": "ACHIEVEMENT", "statCycleId": "HyQrmQv1", "targetValue": 0.8209114549177319}, {"matcher": "GREATER_THAN", "parameterName": "xPBptYBp", "parameterType": "STATISTIC_CYCLE", "statCycleId": "DMmWZwnf", "targetValue": 0.8161491022718479}, {"matcher": "EQUAL", "parameterName": "tatsg3m7", "parameterType": "ENTITLEMENT", "statCycleId": "oOwFhO08", "targetValue": 0.27778143332386784}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "N7DnFUUo", "parameterType": "STATISTIC", "statCycleId": "8S8yo9hs", "targetValue": 0.2013832367741425}, {"matcher": "EQUAL", "parameterName": "AfLjJqZc", "parameterType": "STATISTIC", "statCycleId": "bDiURoSz", "targetValue": 0.9340858199093868}, {"matcher": "GREATER_THAN", "parameterName": "UkmTGbFm", "parameterType": "ACHIEVEMENT", "statCycleId": "s4JGyrB5", "targetValue": 0.36910496146329996}]}], "rewards": [{"itemId": "Q9sQkpGP", "itemName": "Kd8DXKex", "qty": 0.8177218201092727, "type": "STATISTIC"}, {"itemId": "e5s7uF1o", "itemName": "dlH0plxq", "qty": 0.04499838442799553, "type": "STATISTIC"}, {"itemId": "nioDdfYC", "itemName": "oelz44aC", "qty": 0.7782505272599615, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1971-09-06T00:00:00Z", "order": 36, "startTime": "1981-01-18T00:00:00Z"}, "tags": ["aKq8Dgim", "2UByNoM0", "DfDLqJ95"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'bmi4QNEm' \
    --code 'fpAm4ZuN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode '1ecU3MCv' \
    --code 'gHVGhpp4' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "XAhc1bCG", "isActive": true, "name": "LwFeDeiw", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "J5W2PZHT", "parameterType": "USERACCOUNT", "statCycleId": "H6zNU2SR", "targetValue": 0.5881603103600815}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "5QA96MsF", "parameterType": "ENTITLEMENT", "statCycleId": "FxXLXjQY", "targetValue": 0.66967527632258}, {"matcher": "GREATER_THAN", "parameterName": "G5IbjTOS", "parameterType": "USERACCOUNT", "statCycleId": "7Za7PCOs", "targetValue": 0.947686664424224}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "pgDs7XEI", "parameterType": "STATISTIC", "statCycleId": "MuW6MkIN", "targetValue": 0.6749807940888686}, {"matcher": "LESS_THAN", "parameterName": "GrZTr3yQ", "parameterType": "USERACCOUNT", "statCycleId": "kujuCsPF", "targetValue": 0.09816611655407337}, {"matcher": "GREATER_THAN", "parameterName": "At7O7w0k", "parameterType": "ACHIEVEMENT", "statCycleId": "dhaGSdlj", "targetValue": 0.7577004771541084}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "qTk5iBSt", "parameterType": "ENTITLEMENT", "statCycleId": "1BHzw3gT", "targetValue": 0.15429959104533986}, {"matcher": "EQUAL", "parameterName": "WjB1vFaE", "parameterType": "ENTITLEMENT", "statCycleId": "2JVKr2NN", "targetValue": 0.4250188126603711}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "GZJuvAqd", "parameterType": "ENTITLEMENT", "statCycleId": "PNFQzyHT", "targetValue": 0.11768375786791718}]}], "rewards": [{"itemId": "SmgGMDuI", "itemName": "RHVYrtSK", "qty": 0.4363591688042415, "type": "ENTITLEMENT"}, {"itemId": "HdA9RJNP", "itemName": "mnlBZcwC", "qty": 0.4544098013451229, "type": "ENTITLEMENT"}, {"itemId": "8P1kVSkX", "itemName": "uoJGK3yV", "qty": 0.9475567325542746, "type": "STATISTIC"}], "schedule": {"endTime": "1992-03-01T00:00:00Z", "order": 2, "startTime": "1976-02-06T00:00:00Z"}, "tags": ["O7sbWc3h", "cRaGe0cu", "MfWSBDEn"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'yeLUfYPz' \
    --code 'NHK0yZvo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'zxJ8beF7' \
    --code '9LeBVXth' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '76' \
    --userId '9niu91v1' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'O6yRUCn9' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'kqEaxC0B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'jbgysK9a' \
    --namespace $AB_NAMESPACE \
    --dateTime '1998-12-07T00:00:00Z' \
    --limit '38' \
    --offset '69' \
    --userId 'yYhIswBg' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'Ldkll8vB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'ugovULJH' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1981-03-24T00:00:00Z"}' \
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
    --body '{"appName": "pdhf7j8z", "extendType": "APP", "grpcServerAddress": "VLj5nsQX"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "Y7w7YSME", "extendType": "APP", "grpcServerAddress": "nkTvQ7v5"}' \
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
    --body '{"userIds": ["WK1nqSUn", "Ryt3qX2R", "Pa0JzO8d"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["1cYOM95B", "6RqxkvAv", "JJX5FrL7"], "userId": "NNE0ChzK"}, {"rewardIds": ["MGOBVXtc", "O27mDNkh", "dXnq4Loq"], "userId": "WDATcg9g"}, {"rewardIds": ["bjPfG67d", "kQ3qziUs", "mRXTdzeb"], "userId": "PCSS9F6y"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'EpCHTwdJ' \
    --namespace $AB_NAMESPACE \
    --userId 'edrbQ8AC' \
    --body '{"goalCode": "tz3CFKUU"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'PkWXqDCp' \
    --namespace $AB_NAMESPACE \
    --userId 'OHg9mqf9' \
    --dateTime '1974-08-20T00:00:00Z' \
    --goalCode '4Suu3MlE' \
    --limit '47' \
    --offset '91' \
    --tags '["EkzeNMI0", "ZbM9t0KL", "uc5ntDHL"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'FJI7HY0Q' \
    --challengeCode 'uw4B2nyC' \
    --goalProgressionId 'XrzPh3KH' \
    --limit '20' \
    --offset '91' \
    --sortBy 'updatedAt:asc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '571Jye6O' \
    --body '{"rewardIDs": ["M0cyOvTf", "XY4AQbL5", "1TxU0Duq"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'Ac7XlCh3' \
    --limit '94' \
    --offset '46' \
    --sortBy 'createdAt:asc' \
    --status 'INIT' \
    --tags '["FwWlCdB4", "1w1b9Ofu", "hGCIb6BY"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'H7pbbuxT' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '44' \
    --sortBy 'updatedAt:desc' \
    --tags '["zSMt519K", "sOQifXhA", "96Ijoorw"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'YGmncLdW' \
    --code 'jQwYseuO' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'b6q83c0g' \
    --namespace $AB_NAMESPACE \
    --dateTime '1990-01-17T00:00:00Z' \
    --limit '97' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'EmUoaaj8' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "VZKLy7eH"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'UWbZvO3B' \
    --namespace $AB_NAMESPACE \
    --dateTime '1977-05-20T00:00:00Z' \
    --goalCode 'a9qZxWza' \
    --limit '56' \
    --offset '25' \
    --tags '["QJCJNBja", "wdif8o4J", "79rthpXK"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'zkdLcXYN' \
    --index '16' \
    --namespace $AB_NAMESPACE \
    --goalCode 'rSb4TrR4' \
    --limit '73' \
    --offset '23' \
    --tags '["mSS3RUmp", "UvoyQZuM", "raeMPTcY"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'LBAUi7NM' \
    --goalProgressionId 'Pd3Nws0N' \
    --limit '30' \
    --offset '59' \
    --sortBy 'createdAt:asc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["HmnZmGXX", "ce4Fc7ic", "HO0lNpF1"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE