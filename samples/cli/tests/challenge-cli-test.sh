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
    --keyword 'ZwtSCoPP' \
    --limit '53' \
    --offset '24' \
    --sortBy 'createdAt' \
    --status 'RETIRED' \
    --tags '["dsJoWGwB", "NHQsT4EZ", "jwvEfK07"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 41, "assignmentRule": "RANDOMIZED", "code": "8npIB6bN", "description": "LcY38f8F", "endAfter": 86, "endDate": "1972-07-03T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "3vlojuvJ", "randomizedPerRotation": true, "repeatAfter": 70, "resetConfig": {"resetDate": 44, "resetDay": 74, "resetTime": "e9SU9LLc"}, "rotation": "WEEKLY", "startDate": "1982-02-24T00:00:00Z", "tags": ["b9Oyr7jB", "f2slCbP5", "qSl9eqmQ"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'aRWCOqlY' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'KGczBhGh' \
    --limit '81' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '2k4JAEQY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'J2qEUOfN' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 88, "assignmentRule": "RANDOMIZED", "description": "uGbrC8vf", "endAfter": 9, "endDate": "1972-04-21T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "93gQtqGj", "randomizedPerRotation": true, "repeatAfter": 33, "resetConfig": {"resetDate": 85, "resetDay": 87, "resetTime": "ZD0HN6aW"}, "rotation": "DAILY", "startDate": "1979-11-01T00:00:00Z", "tags": ["WTIMJybP", "sJonMBXi", "OsKqxiaW"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'DklTAcF1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode '7OXzEh8H' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '45' \
    --sortBy 'updatedAt:asc' \
    --tags '["HQZd31o5", "TU1npHKh", "JAMbJnUt"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode '3r6Pn9nQ' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "gPoQn59m", "description": "6jxcQE1o", "isActive": false, "name": "ZUrYw9KM", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "MbmDcXVX", "parameterType": "ENTITLEMENT", "statCycleId": "rmoS8kYR", "targetValue": 0.576659881368684}, {"matcher": "EQUAL", "parameterName": "8NqLIuIL", "parameterType": "STATISTIC", "statCycleId": "riUxQXVA", "targetValue": 0.8411554548288125}, {"matcher": "LESS_THAN", "parameterName": "O4dk80ku", "parameterType": "STATISTIC_CYCLE", "statCycleId": "oznhAicU", "targetValue": 0.10020503016560345}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "qvJeEg74", "parameterType": "STATISTIC_CYCLE", "statCycleId": "3uOhfH8h", "targetValue": 0.18440792811098372}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "zcwt31sM", "parameterType": "USERACCOUNT", "statCycleId": "MwlsB9Nj", "targetValue": 0.7869868297057677}, {"matcher": "LESS_THAN", "parameterName": "VeyXSVo1", "parameterType": "USERACCOUNT", "statCycleId": "MnudIYrX", "targetValue": 0.17904387864339122}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "RMI2CHA3", "parameterType": "USERACCOUNT", "statCycleId": "Y3O3PFRG", "targetValue": 0.7571052023648203}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "Tv2rtzcq", "parameterType": "ENTITLEMENT", "statCycleId": "Ckh7elZd", "targetValue": 0.7548551548799278}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "oiwZU97C", "parameterType": "ENTITLEMENT", "statCycleId": "uxZ36mUS", "targetValue": 0.24577404458154262}]}], "rewards": [{"itemId": "r7XuZLJx", "itemName": "6uWylxQZ", "qty": 0.5912994821063956, "type": "STATISTIC"}, {"itemId": "3q9LY3Kc", "itemName": "ltpSZ8CB", "qty": 0.20768054587594642, "type": "STATISTIC"}, {"itemId": "9KkBZY2r", "itemName": "Ez2noz1O", "qty": 0.227818867258463, "type": "STATISTIC"}], "schedule": {"endTime": "1996-07-11T00:00:00Z", "order": 16, "startTime": "1989-01-18T00:00:00Z"}, "tags": ["BKBtpIMy", "LU1ksTnU", "3Ky0ZGh2"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'wmQtlKSy' \
    --code 'wnUNwQ2t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'NWKg9iVd' \
    --code 'CH0vHUz7' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "pqaugLTf", "isActive": false, "name": "EQzs9T6S", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "eW4OsDOg", "parameterType": "ACHIEVEMENT", "statCycleId": "ZZJjrNXu", "targetValue": 0.7727281935025304}, {"matcher": "LESS_THAN", "parameterName": "vCp7j9yA", "parameterType": "USERACCOUNT", "statCycleId": "0UiEp1zI", "targetValue": 0.5635734533300314}, {"matcher": "LESS_THAN", "parameterName": "uzUK3DO2", "parameterType": "ENTITLEMENT", "statCycleId": "E6W1Q0mS", "targetValue": 0.34935775828046056}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "sEwWecCS", "parameterType": "USERACCOUNT", "statCycleId": "voTj2RQn", "targetValue": 0.20388243432087716}, {"matcher": "EQUAL", "parameterName": "tMcCgEQG", "parameterType": "STATISTIC_CYCLE", "statCycleId": "jhVQtU0Q", "targetValue": 0.866289055046052}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "JgEjWyeL", "parameterType": "USERACCOUNT", "statCycleId": "L2k6u9lP", "targetValue": 0.3429815169509137}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "dE933qoH", "parameterType": "USERACCOUNT", "statCycleId": "VX9QZuFS", "targetValue": 0.5555776912097451}, {"matcher": "EQUAL", "parameterName": "X4enVHWe", "parameterType": "STATISTIC", "statCycleId": "9e0XsVDN", "targetValue": 0.0306640805573416}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "rCqiIgy5", "parameterType": "STATISTIC", "statCycleId": "B0o6NLTy", "targetValue": 0.4488362465001391}]}], "rewards": [{"itemId": "yQzBaMGn", "itemName": "XNvLV0Zq", "qty": 0.6821128626323029, "type": "ENTITLEMENT"}, {"itemId": "ENpgAy0k", "itemName": "Hkk1uHbq", "qty": 0.3471427503920095, "type": "ENTITLEMENT"}, {"itemId": "FsoGRBQj", "itemName": "2lh6bzwb", "qty": 0.9016525933875285, "type": "STATISTIC"}], "schedule": {"endTime": "1986-02-28T00:00:00Z", "order": 31, "startTime": "1996-10-09T00:00:00Z"}, "tags": ["lTOg2RoI", "kAw6DeKe", "rZnL1DyQ"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode '1FfikPtc' \
    --code 'o0nxJ40c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode '8M1wTxy9' \
    --code 'AHVG452M' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '70' \
    --userId 'GIct5kA2' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'WRIAlgzJ' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '1oxjqUSV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'uQcGa3JL' \
    --namespace $AB_NAMESPACE \
    --dateTime '1983-04-27T00:00:00Z' \
    --limit '12' \
    --offset '60' \
    --userId 'ICbPcEpV' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'RsZv0OVI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'FuqEZDoT' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1993-04-13T00:00:00Z"}' \
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
    --body '{"appName": "sResvf6k", "extendType": "APP", "grpcServerAddress": "amO6Yl1v"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "4wpD6haw", "extendType": "APP", "grpcServerAddress": "HXKzt3jZ"}' \
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
    --challengeCode '["5yzecwLU", "jSiOg1OI", "Zwlm8n5A"]' \
    --body '{"userIds": ["lHjeIPYf", "AGMEFybk", "GzzRnojN"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["8lzfMngq", "6zMXPs1g", "2xZxCftG"], "userId": "a1MBfLUk"}, {"rewardIds": ["ntgoxsMy", "1u4ZX6qZ", "Vd8kAOxE"], "userId": "r82bN8t5"}, {"rewardIds": ["wjI0TJMh", "BHv4praK", "SLE2QOzC"], "userId": "2LzEgPf3"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'SLMMhloQ' \
    --namespace $AB_NAMESPACE \
    --userId 'JAaMbvlc' \
    --body '{"goalCode": "D8QsNLil"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'wfcd6cRc' \
    --namespace $AB_NAMESPACE \
    --userId 'n1Wv4HaO' \
    --dateTime '1972-11-03T00:00:00Z' \
    --goalCode 'FotIfBFm' \
    --limit '3' \
    --offset '47' \
    --tags '["MPcvE1WC", "XS7FQF1T", "gAGk33Zv"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'qBa4hXZj' \
    --challengeCode 'b4vvMjjy' \
    --goalProgressionId 'V4cyUmLt' \
    --limit '36' \
    --offset '56' \
    --sortBy 'createdAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'aoinQcIZ' \
    --body '{"rewardIDs": ["lNsxRn8N", "phiOoLMT", "DyWaZW45"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'twPmCe8D' \
    --limit '25' \
    --offset '62' \
    --sortBy 'updatedAt' \
    --status 'RETIRED' \
    --tags '["efpMRYd4", "CRFU78Qo", "11NTTH6V"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'CtVl1olw' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '19' \
    --sortBy 'createdAt' \
    --tags '["lxMF78J6", "xkDn23ST", "w0j3hAVG"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'NurLFMCt' \
    --code 'MERVuFxJ' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'aPoinwmc' \
    --namespace $AB_NAMESPACE \
    --dateTime '1983-11-11T00:00:00Z' \
    --limit '87' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'HPd4BZj6' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "3esNADlh"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["fL5UuuNe", "SPgSBQbg", "o8opEPeV"]' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'lXPV5klK' \
    --namespace $AB_NAMESPACE \
    --dateTime '1988-09-08T00:00:00Z' \
    --goalCode 'TKy2OvTu' \
    --limit '88' \
    --offset '15' \
    --tags '["kKBayT3Z", "Mka6XS9w", "c9yLdBit"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'jey9JhpU' \
    --index '87' \
    --namespace $AB_NAMESPACE \
    --goalCode 'ikChNkgv' \
    --limit '2' \
    --offset '0' \
    --tags '["kvrqFEsJ", "r0YCJbci", "RgUpdvn1"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'wW5z8dgf' \
    --goalProgressionId 'UqrXE4NY' \
    --limit '52' \
    --offset '15' \
    --sortBy 'createdAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["y8SV8fcD", "f6f1cN00", "QPPquRpP"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE