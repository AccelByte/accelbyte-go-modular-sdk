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
echo "1..38"

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
    --limit '89' \
    --offset '53' \
    --sortBy 'createdAt' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 94, "assignmentRule": "FIXED", "code": "uaU7rSmL", "description": "EyKsiiZi", "endAfter": 9, "endDate": "1997-06-17T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "AaWCmngo", "randomizedPerRotation": true, "repeatAfter": 34, "resetConfig": {"resetDate": 70, "resetDay": 15, "resetTime": "KC5j8CLV"}, "rotation": "NONE", "startDate": "1971-02-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'AT3S4c5v' \
    --limit '9' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'kRPaPPOx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'ZDmS6cuC' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 92, "assignmentRule": "FIXED", "description": "pa4QckyA", "endAfter": 50, "endDate": "1972-11-27T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "lotmKLf1", "randomizedPerRotation": true, "repeatAfter": 48, "resetConfig": {"resetDate": 24, "resetDay": 76, "resetTime": "EfvVryEr"}, "rotation": "MONTHLY", "startDate": "1986-04-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'rR1fkBAp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode '1uobFEYt' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '97' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'hYr9Qojq' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "z2L4Vyos", "description": "ZG1uJYpg", "isActive": true, "name": "kQjhgLwH", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "NBdHDr2y", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Q1WSnljh", "targetValue": 0.32479890091935837}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "t6W0zCp6", "parameterType": "ACHIEVEMENT", "statCycleId": "6iGRE7kD", "targetValue": 0.20416175430871952}, {"matcher": "LESS_THAN", "parameterName": "Luhns1Fa", "parameterType": "ACHIEVEMENT", "statCycleId": "9ffo1Bmh", "targetValue": 0.5725876316372553}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "8C64eyfx", "parameterType": "ACHIEVEMENT", "statCycleId": "eqMOucru", "targetValue": 0.9407856596047385}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "qzMLKmpt", "parameterType": "ACHIEVEMENT", "statCycleId": "3AHarjNA", "targetValue": 0.5819415254281953}, {"matcher": "EQUAL", "parameterName": "V1UJ8LSA", "parameterType": "ENTITLEMENT", "statCycleId": "MKTpSKXP", "targetValue": 0.8964830206046842}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "UzOeOKOR", "parameterType": "STATISTIC_CYCLE", "statCycleId": "idPesdvZ", "targetValue": 0.3116708094498378}, {"matcher": "LESS_THAN", "parameterName": "qcnXio37", "parameterType": "STATISTIC", "statCycleId": "gYoxRJDY", "targetValue": 0.8072878714598285}, {"matcher": "LESS_THAN", "parameterName": "1538wXfT", "parameterType": "USERACCOUNT", "statCycleId": "UQoRWhDX", "targetValue": 0.21166768976053107}]}], "rewards": [{"itemId": "8s98RPk0", "itemName": "NHIG5U4Z", "qty": 0.8952908626804053, "type": "STATISTIC"}, {"itemId": "gzdt46O1", "itemName": "TJexrHCP", "qty": 0.1449345457342207, "type": "STATISTIC"}, {"itemId": "W7jTToUy", "itemName": "ARXNuloT", "qty": 0.11110271851100051, "type": "STATISTIC"}], "schedule": {"endTime": "1979-04-11T00:00:00Z", "order": 76, "startTime": "1986-11-12T00:00:00Z"}, "tags": ["CXzeAdpL", "BQYK5V7i", "BwmIzcp4"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '6doUu3qj' \
    --code 'cC8pnCIa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'rI9UzH9h' \
    --code 'ecXxBUh6' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ciK58MnJ", "isActive": false, "name": "PVOke01J", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "c1IHtwyO", "parameterType": "STATISTIC", "statCycleId": "Mwp8tbwO", "targetValue": 0.07643881976588152}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "C6Knbvwd", "parameterType": "STATISTIC", "statCycleId": "hunVgxmd", "targetValue": 0.9328511857406215}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "2kAOHvYJ", "parameterType": "ENTITLEMENT", "statCycleId": "vTEu8915", "targetValue": 0.27397270196938794}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "bVZdYBLL", "parameterType": "STATISTIC", "statCycleId": "cr63XCpO", "targetValue": 0.6806908777132138}, {"matcher": "GREATER_THAN", "parameterName": "ioF2VQeZ", "parameterType": "ENTITLEMENT", "statCycleId": "SvZJPjsi", "targetValue": 0.47187094614692315}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "BaxSu54V", "parameterType": "USERACCOUNT", "statCycleId": "eLlO6vsn", "targetValue": 0.3051512548421673}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "M4kGqulH", "parameterType": "STATISTIC", "statCycleId": "RdTxIWUx", "targetValue": 0.8385407809580306}, {"matcher": "LESS_THAN", "parameterName": "vxhi5DvV", "parameterType": "USERACCOUNT", "statCycleId": "lXXr8BNp", "targetValue": 0.8353579697567144}, {"matcher": "EQUAL", "parameterName": "qsbUqV3H", "parameterType": "STATISTIC", "statCycleId": "I1EG5M8Y", "targetValue": 0.8577289743863455}]}], "rewards": [{"itemId": "cV58PGTt", "itemName": "BcRR1i5n", "qty": 0.4659093050722586, "type": "ENTITLEMENT"}, {"itemId": "HeFhJp79", "itemName": "lSSTGGHK", "qty": 0.099106944211927, "type": "STATISTIC"}, {"itemId": "fBZjELAm", "itemName": "EKRLHCLZ", "qty": 0.23877633035689105, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1983-11-03T00:00:00Z", "order": 83, "startTime": "1999-04-18T00:00:00Z"}, "tags": ["BAEUButK", "XNnLaYau", "VE9Bhxp1"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode '6Br9tFcM' \
    --code 'vmhsNdS1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'zPkXSE3K' \
    --code '15kWftoA' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '43' \
    --userId 'tpf97ayD' \
    > test.out 2>&1
eval_tap $? 13 'AdminListSchedulesByGoal' test.out

#- 14 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'ZJQLYYUU' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetPeriods' test.out

#- 15 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'PcMiKbik' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminRandomizeChallenge' test.out

#- 16 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'n2jhJw73' \
    --namespace $AB_NAMESPACE \
    --dateTime '1971-01-30T00:00:00Z' \
    --limit '14' \
    --offset '53' \
    --userId 'aBBjDZPO' \
    > test.out 2>&1
eval_tap $? 16 'AdminListSchedules' test.out

#- 17 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'FkAJS1yj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteTiedChallenge' test.out

#- 18 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'idRrUGxn' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1984-12-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateTiedChallengeSchedule' test.out

#- 19 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminGetAssignmentPlugin' test.out

#- 20 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "L1RG9U4t", "extendType": "CUSTOM", "grpcServerAddress": "apljrtcp"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateAssignmentPlugin' test.out

#- 21 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "sz3Pf4Vo", "extendType": "APP", "grpcServerAddress": "Eu9ZeCbo"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateAssignmentPlugin' test.out

#- 22 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteAssignmentPlugin' test.out

#- 23 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["OiukfMyl", "uehSYTmh", "b3t8r9Sz"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminEvaluateProgress' test.out

#- 24 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["jrlRlbgn", "Fep3c79s", "htDDY16Z"], "userId": "78Uywpd5"}, {"rewardIds": ["9gr1jkZj", "XOdAiw0i", "Wpwp4x5J"], "userId": "6jas7a4r"}, {"rewardIds": ["NpZrc90x", "iKjyJJN8", "Sgdoy2JD"], "userId": "A5M5zD0Z"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminClaimUsersRewards' test.out

#- 25 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'Ac84ZdI6' \
    --namespace $AB_NAMESPACE \
    --userId 'nE0UoFgX' \
    --body '{"goalCode": "2S8oVPwX"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUserRewardsByGoalCode' test.out

#- 26 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'iltO2LjC' \
    --namespace $AB_NAMESPACE \
    --userId 'gXypaQav' \
    --dateTime '1996-03-10T00:00:00Z' \
    --goalCode 'SeHqVyYA' \
    --limit '14' \
    --offset '43' \
    --tags '["cB1gLsK1", "BExOSFX3", "1rtx9EYN"]' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetUserProgression' test.out

#- 27 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'lG4pN0bT' \
    --challengeCode 'EbB0xz2M' \
    --goalProgressionId 'ZNvxGLjZ' \
    --limit '66' \
    --offset '94' \
    --sortBy 'updatedAt:desc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserRewards' test.out

#- 28 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'UwVjfDjP' \
    --body '{"rewardIDs": ["Q95FU7uo", "K1Pu1UiA", "QYAT17xJ"]}' \
    > test.out 2>&1
eval_tap $? 28 'AdminClaimUserRewards' test.out

#- 29 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '45' \
    --sortBy 'updatedAt:desc' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 29 'GetChallenges' test.out

#- 30 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'EYTb2K22' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '37' \
    --tags '["C5VdOCwA", "beRVKYNO", "sMPKlgcQ"]' \
    > test.out 2>&1
eval_tap $? 30 'PublicGetScheduledGoals' test.out

#- 31 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode '5PM95TdE' \
    --code 'YZvSvmtx' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 31 'PublicListSchedulesByGoal' test.out

#- 32 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'TYXZJ63R' \
    --namespace $AB_NAMESPACE \
    --dateTime '1992-07-28T00:00:00Z' \
    --limit '20' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedules' test.out

#- 33 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'xWisLH4u' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "gvnHajwB"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicClaimUserRewardsByGoalCode' test.out

#- 34 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'EvaluateMyProgress' test.out

#- 35 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'HlNL1jlP' \
    --namespace $AB_NAMESPACE \
    --dateTime '1985-04-16T00:00:00Z' \
    --goalCode 'QuvO49UC' \
    --limit '36' \
    --offset '95' \
    --tags '["c3J5gPLx", "odLjrA7T", "lcfrZYHm"]' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetUserProgression' test.out

#- 36 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'XQPgghXe' \
    --index '14' \
    --namespace $AB_NAMESPACE \
    --goalCode 'bcMdlh4D' \
    --limit '40' \
    --offset '1' \
    --tags '["8VRSBqka", "ncoDfK7L", "HmPH4C2A"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetPastUserProgression' test.out

#- 37 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'TBOm0rBj' \
    --goalProgressionId 'M2vtaKQz' \
    --limit '6' \
    --offset '7' \
    --sortBy 'createdAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetUserRewards' test.out

#- 38 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["PsgGy96x", "w9RbI0wn", "EeCW2frr"]}' \
    > test.out 2>&1
eval_tap $? 38 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE