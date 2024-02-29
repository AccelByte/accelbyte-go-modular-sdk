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
echo "1..21"

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
    --limit '31' \
    --offset '66' \
    --sortBy 'Ku2J2ROt' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 48, "assignmentRule": "RANDOMIZED", "code": "UesjxywQ", "description": "CayjUsng", "endDate": "1985-05-08T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "jaQo2dXN", "rotation": "WEEKLY", "startDate": "1978-12-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'etFbgsRQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'k39TTgzp' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 16, "assignmentRule": "UNSCHEDULED", "description": "rpBVLZHA", "endDate": "1991-02-27T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "zlDaUvvZ", "rotation": "MONTHLY", "startDate": "1977-01-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'Aa2aIe3r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'qyUzCrwT' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '60' \
    --sortBy 'pwiE3onn' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'Zf4V288o' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "U0e9cV3K", "description": "XNfZl8cS", "isActive": true, "name": "1ftuFc1B", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "8gVF4ggv", "parameterType": "USERACCOUNT", "targetValue": 0.1049505418029929}, {"matcher": "LESS_THAN", "parameterName": "G4mZ753Z", "parameterType": "USERACCOUNT", "targetValue": 0.9273861315471185}, {"matcher": "LESS_THAN", "parameterName": "pz19uAzM", "parameterType": "STATISTIC", "targetValue": 0.05675373026319008}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "ZxGEFKxG", "parameterType": "USERACCOUNT", "targetValue": 0.42969720596891103}, {"matcher": "EQUAL", "parameterName": "4R70myxG", "parameterType": "ACHIEVEMENT", "targetValue": 0.29564165618613736}, {"matcher": "GREATER_THAN", "parameterName": "oGN0uAOk", "parameterType": "STATISTIC", "targetValue": 0.6734594367713037}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "D5qMEpUV", "parameterType": "USERACCOUNT", "targetValue": 0.08800855544676545}, {"matcher": "GREATER_THAN", "parameterName": "FerA1y7s", "parameterType": "ACHIEVEMENT", "targetValue": 0.3498399831636748}, {"matcher": "EQUAL", "parameterName": "RYpQL3Ps", "parameterType": "ACHIEVEMENT", "targetValue": 0.2765473048955499}]}], "rewards": [{"itemId": "kh8Hi5BT", "itemName": "sYRKAs2y", "qty": 0.39889845653921485, "type": "ENTITLEMENT"}, {"itemId": "EbTjqgO5", "itemName": "wQ6TbFDU", "qty": 0.1317363628747914, "type": "ENTITLEMENT"}, {"itemId": "xXv4ia78", "itemName": "D2swmeY0", "qty": 0.011191183215592093, "type": "STATISTIC"}], "schedule": {"endTime": "1995-01-07T00:00:00Z", "order": 4, "startTime": "1997-02-02T00:00:00Z"}, "tags": ["RFObhFjd", "cgJ8sYli", "QgogzLGG"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'yz1Az5q7' \
    --code 'wggLNGZn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'XeSGz5Ns' \
    --code 'OBprKP7F' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wEWD171n", "isActive": true, "name": "119Rh0ce", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "wh74qrGw", "parameterType": "STATISTIC", "targetValue": 0.347437451387548}, {"matcher": "LESS_THAN", "parameterName": "76OhZn02", "parameterType": "STATISTIC", "targetValue": 0.5255981658218614}, {"matcher": "EQUAL", "parameterName": "ONYz8PFd", "parameterType": "STATISTIC", "targetValue": 0.27814992148995266}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "lRnU6l61", "parameterType": "ACHIEVEMENT", "targetValue": 0.6486551793259043}, {"matcher": "EQUAL", "parameterName": "WAd5JxAF", "parameterType": "ACHIEVEMENT", "targetValue": 0.3485270184499065}, {"matcher": "GREATER_THAN", "parameterName": "O5vNURPk", "parameterType": "USERACCOUNT", "targetValue": 0.3660146908183811}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "fn7PwbKs", "parameterType": "ACHIEVEMENT", "targetValue": 0.36750890828690874}, {"matcher": "EQUAL", "parameterName": "5feapEVD", "parameterType": "ACHIEVEMENT", "targetValue": 0.32818107019729725}, {"matcher": "EQUAL", "parameterName": "CLp7jH3s", "parameterType": "STATISTIC", "targetValue": 0.17995055664599713}]}], "rewards": [{"itemId": "Bg8dveuu", "itemName": "YhcnBsoy", "qty": 0.5917653204050937, "type": "STATISTIC"}, {"itemId": "jw6IXuZZ", "itemName": "yZARKtWC", "qty": 0.9367034562483417, "type": "ENTITLEMENT"}, {"itemId": "hSgB3qWl", "itemName": "wnmC99vH", "qty": 0.16066815256695843, "type": "STATISTIC"}], "schedule": {"endTime": "1987-04-02T00:00:00Z", "order": 36, "startTime": "1996-01-29T00:00:00Z"}, "tags": ["N60WRoFx", "pjvg4eOw", "zVCKGYeT"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode '8Df1rGoQ' \
    --code '4OfOrLQI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'nxpNvWPU' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'xzy7pqu0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ECHaWTb8", "yLeEJCtt", "xijxwM0G"]}' \
    > test.out 2>&1
eval_tap $? 14 'AdminEvaluateProgress' test.out

#- 15 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'HrVOW7G1' \
    --limit '33' \
    --offset '26' \
    --sortBy 'FEsRHwmY' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserRewards' test.out

#- 16 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '40' \
    --sortBy 'IUoMJj5L' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 16 'GetChallenges' test.out

#- 17 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'AVqyo18G' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '51' \
    --tags '["RTZRWhRk", "kw0KTsUl", "43EM2fOe"]' \
    > test.out 2>&1
eval_tap $? 17 'PublicGetScheduledGoals' test.out

#- 18 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'EvaluateMyProgress' test.out

#- 19 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'LhBq4Dv0' \
    --namespace $AB_NAMESPACE \
    --goalCode 'qdkvkWHi' \
    > test.out 2>&1
eval_tap $? 19 'PublicGetUserProgression' test.out

#- 20 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '66' \
    --sortBy 'CYTguJcS' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserRewards' test.out

#- 21 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["zvikElNp", "bOLcnUvd", "9RtI0u8K"]}' \
    > test.out 2>&1
eval_tap $? 21 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE