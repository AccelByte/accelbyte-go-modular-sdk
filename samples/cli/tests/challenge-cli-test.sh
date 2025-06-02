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
    --keyword 'x54G28nB' \
    --limit '58' \
    --offset '25' \
    --sortBy 'createdAt:asc' \
    --status 'TIED' \
    --tags '["ezvqPKpF", "Mw4TNh1M", "4ztC3wvv"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 16, "assignmentRule": "RANDOMIZED", "code": "rNpXc1ts", "description": "1YHIhsbx", "endAfter": 13, "endDate": "1991-11-21T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "fBSLqmFU", "randomizedPerRotation": true, "repeatAfter": 39, "resetConfig": {"resetDate": 67, "resetDay": 94, "resetTime": "xVwOsqkx"}, "rotation": "DAILY", "startDate": "1997-08-25T00:00:00Z", "tags": ["TwmMTqnq", "oD6jxEm5", "N0ddZGFS"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'cO5Klbet' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'qewGLNhx' \
    --limit '100' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'C8MEZBVx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'cE4Fm3Gz' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 70, "assignmentRule": "FIXED", "description": "UagZhwU0", "endAfter": 9, "endDate": "1984-05-19T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "JzLXQuKV", "randomizedPerRotation": false, "repeatAfter": 11, "resetConfig": {"resetDate": 57, "resetDay": 5, "resetTime": "E0fFuxXJ"}, "rotation": "DAILY", "startDate": "1994-04-18T00:00:00Z", "tags": ["HobNXssZ", "0UgAgp8Z", "hB8ftfU9"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'EuHyIq6g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'AStjv09E' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '97' \
    --sortBy 'createdAt' \
    --tags '["vojHeb5F", "XEyvRCIU", "1uFhqdcl"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode '6aY46wTl' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "VbPpm6hu", "description": "OSbQOR7q", "isActive": true, "name": "lBVoGGnf", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "22PI4QFj", "parameterType": "USERACCOUNT", "statCycleId": "My5vDMcF", "targetValue": 0.3978459363135075}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "3fNSZOsB", "parameterType": "STATISTIC", "statCycleId": "QFR2X7XR", "targetValue": 0.24553258487929586}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "OAkOoz6X", "parameterType": "USERACCOUNT", "statCycleId": "X3pKNwxW", "targetValue": 0.4182459851361189}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "ERgXEuOp", "parameterType": "STATISTIC", "statCycleId": "e4zbQ6Ea", "targetValue": 0.27576034521882165}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "0jxDGisX", "parameterType": "ACHIEVEMENT", "statCycleId": "HqCazGI4", "targetValue": 0.5652863961339638}, {"matcher": "GREATER_THAN", "parameterName": "YxWsEf55", "parameterType": "USERACCOUNT", "statCycleId": "8yZvf5Ju", "targetValue": 0.7867470442348689}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "FKtvdWBi", "parameterType": "STATISTIC", "statCycleId": "Evj2CF94", "targetValue": 0.8342440550916681}, {"matcher": "GREATER_THAN", "parameterName": "bEE7IvKo", "parameterType": "ACHIEVEMENT", "statCycleId": "bL4pNd7u", "targetValue": 0.37296603454746724}, {"matcher": "GREATER_THAN", "parameterName": "IoRW01Fh", "parameterType": "STATISTIC", "statCycleId": "j8uJa4dJ", "targetValue": 0.9933452125773387}]}], "rewards": [{"itemId": "iz0UvkgO", "itemName": "2y9Xhrnd", "qty": 0.8097379521969206, "type": "ENTITLEMENT"}, {"itemId": "3tgow0e4", "itemName": "0uqMO1nG", "qty": 0.22503768532294732, "type": "ENTITLEMENT"}, {"itemId": "R0zkxL0F", "itemName": "rli7t32t", "qty": 0.0762546589303712, "type": "STATISTIC"}], "schedule": {"endTime": "1993-04-26T00:00:00Z", "order": 39, "startTime": "1977-11-02T00:00:00Z"}, "tags": ["y0IiM8sq", "wCrJMQ1D", "wT1t0btw"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '76CtTHK1' \
    --code '42EuYUwf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'HNcwE7q2' \
    --code 'cI0n4Opq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zZsiOS1y", "isActive": false, "name": "T6f3qGGA", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "8MxdplSm", "parameterType": "STATISTIC_CYCLE", "statCycleId": "aQdG3hWz", "targetValue": 0.794064265068286}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "3jphytjD", "parameterType": "STATISTIC", "statCycleId": "Nj6RnvCr", "targetValue": 0.6635332791439589}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "ecuStmIG", "parameterType": "USERACCOUNT", "statCycleId": "wwULipd8", "targetValue": 0.8865244862385784}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "6KbmV36t", "parameterType": "STATISTIC", "statCycleId": "n7d8lB9c", "targetValue": 0.7059099417549343}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "GFTmj4k3", "parameterType": "ACHIEVEMENT", "statCycleId": "CkHJPZ5a", "targetValue": 0.0006090425812326217}, {"matcher": "GREATER_THAN", "parameterName": "WYZIaYXc", "parameterType": "USERACCOUNT", "statCycleId": "G477UScO", "targetValue": 0.19247307972643413}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "4WZ9Z9l9", "parameterType": "STATISTIC_CYCLE", "statCycleId": "CNxmYLHb", "targetValue": 0.5440019339743483}, {"matcher": "EQUAL", "parameterName": "ArSTxCXi", "parameterType": "STATISTIC_CYCLE", "statCycleId": "tNzIQMBP", "targetValue": 0.7438033031027428}, {"matcher": "GREATER_THAN", "parameterName": "McfxwVPa", "parameterType": "ACHIEVEMENT", "statCycleId": "dlR5acHf", "targetValue": 0.8471301828146913}]}], "rewards": [{"itemId": "DicUP0tR", "itemName": "dMYCjlmj", "qty": 0.10632543593504873, "type": "STATISTIC"}, {"itemId": "2jx8lGpi", "itemName": "AjWAUbXj", "qty": 0.5557301902255686, "type": "STATISTIC"}, {"itemId": "rwG0P9uj", "itemName": "xj28yjPy", "qty": 0.7245606500305686, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1981-06-04T00:00:00Z", "order": 0, "startTime": "1988-07-28T00:00:00Z"}, "tags": ["heaKGYzi", "UGoLdFAI", "EppWMtNZ"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'QNREct4Y' \
    --code 'if4Ad00F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode '7q57iMrg' \
    --code 'm2C66IjF' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '86' \
    --userId 'r3BLEiZL' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'PdyGvcdj' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'L8jqYgxS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'rsbjdLJj' \
    --namespace $AB_NAMESPACE \
    --dateTime '1977-09-26T00:00:00Z' \
    --limit '33' \
    --offset '76' \
    --userId '11pYh0SP' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'veS3yOAx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'rDepQ3cE' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1990-11-20T00:00:00Z"}' \
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
    --body '{"appName": "7HzcquJi", "extendType": "CUSTOM", "grpcServerAddress": "UhdUEg3v"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "I3LePb2P", "extendType": "CUSTOM", "grpcServerAddress": "cCBTIVMD"}' \
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
    --body '{"userIds": ["ZJ2vRk9A", "ZFABbq4w", "lflAIFYm"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["rBlEr9nF", "TPlFt1A8", "5MWTea7V"], "userId": "CKssDO1X"}, {"rewardIds": ["bUoMBWjk", "GSZzxKNr", "posEzLaS"], "userId": "hkg8EgPZ"}, {"rewardIds": ["nOm2o3Jm", "H6HMIwfE", "vwM85MsK"], "userId": "gGTQ77TA"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'FJ0bA5e7' \
    --namespace $AB_NAMESPACE \
    --userId 'g5daZ4hC' \
    --body '{"goalCode": "act34mI5"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'eUNsTNgs' \
    --namespace $AB_NAMESPACE \
    --userId 'NfD14SBa' \
    --dateTime '1990-07-29T00:00:00Z' \
    --goalCode 't0YxzQsA' \
    --limit '14' \
    --offset '91' \
    --tags '["9PSd5Vc6", "xqHPvaB3", "9QNCPr1s"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '0QINJ66o' \
    --challengeCode 'u6SBOp4t' \
    --goalProgressionId 'svQmnWLc' \
    --limit '23' \
    --offset '64' \
    --sortBy 'updatedAt:desc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'M5YEDbMU' \
    --body '{"rewardIDs": ["YtR3qEWT", "6tpZlEkK", "fBKTgKIm"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'bZELPwhJ' \
    --limit '71' \
    --offset '63' \
    --sortBy 'createdAt:asc' \
    --status 'TIED' \
    --tags '["qajZT3h6", "rLDrAcHG", "hBH0DnvA"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'LO2rZo1F' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '17' \
    --sortBy 'updatedAt' \
    --tags '["dTZeYfGF", "nP667UKE", "BNMe96wL"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'kfFdaI6i' \
    --code 'lo3nZMC3' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'peROUNEn' \
    --namespace $AB_NAMESPACE \
    --dateTime '1975-03-26T00:00:00Z' \
    --limit '84' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'zZ5RrkJ4' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "ydO1D2Dg"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'fJGKG1KT' \
    --namespace $AB_NAMESPACE \
    --dateTime '1992-01-04T00:00:00Z' \
    --goalCode 'xEOGjAzY' \
    --limit '30' \
    --offset '37' \
    --tags '["JeS7akvf", "g0Y2t7ID", "eWliCPxy"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'JVt5IuhZ' \
    --index '39' \
    --namespace $AB_NAMESPACE \
    --goalCode 'QpaED4HJ' \
    --limit '25' \
    --offset '68' \
    --tags '["oZ9uF5jF", "TvNYP8OE", "gPgpeY19"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'GqC6GV7A' \
    --goalProgressionId 'hULDGHLl' \
    --limit '31' \
    --offset '74' \
    --sortBy 'updatedAt:asc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["c2E5AAv7", "AJlxs76K", "pejRKoJ3"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE