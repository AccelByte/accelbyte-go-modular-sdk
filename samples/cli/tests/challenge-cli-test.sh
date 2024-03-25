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
echo "1..22"

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
    --limit '22' \
    --offset '23' \
    --sortBy 'wYm2z4y7' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 50, "assignmentRule": "RANDOMIZED", "code": "duVpUpfO", "description": "MCnHNqax", "endAfter": 49, "endDate": "1999-12-05T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "xoto8Onh", "rotation": "DAILY", "startDate": "1992-04-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'zBBtU6PC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'KimPUHZf' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 48, "assignmentRule": "FIXED", "description": "MFY3qHqe", "endAfter": 82, "endDate": "1985-08-11T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "FMg72GEk", "rotation": "WEEKLY", "startDate": "1994-08-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'x28IyvOK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode '3Bx3yuHm' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '62' \
    --sortBy 'a3d5GkD7' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'P8NmrCdW' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Jq0DtT1g", "description": "oH04WvUd", "isActive": false, "name": "3lAfYgJc", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "wJJeo2aJ", "parameterType": "STATISTIC", "targetValue": 0.14123485812588588}, {"matcher": "EQUAL", "parameterName": "m7gJQkDq", "parameterType": "ACHIEVEMENT", "targetValue": 0.3990002703344905}, {"matcher": "EQUAL", "parameterName": "sGOktOv2", "parameterType": "ACHIEVEMENT", "targetValue": 0.6751856843267015}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "fTHi9CDR", "parameterType": "STATISTIC", "targetValue": 0.4490227293502387}, {"matcher": "EQUAL", "parameterName": "VS4XmHGw", "parameterType": "USERACCOUNT", "targetValue": 0.378922438263091}, {"matcher": "GREATER_THAN", "parameterName": "dqK9dF41", "parameterType": "ACHIEVEMENT", "targetValue": 0.520727406205275}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "CIfp0vTE", "parameterType": "USERACCOUNT", "targetValue": 0.4211917356593111}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "vpZGsfo9", "parameterType": "USERACCOUNT", "targetValue": 0.9113762170721549}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "uG9yoaUM", "parameterType": "USERACCOUNT", "targetValue": 0.5546588575168974}]}], "rewards": [{"itemId": "4ZLENx9l", "itemName": "M488TQ0f", "qty": 0.23982611754979766, "type": "ENTITLEMENT"}, {"itemId": "yOXGA2gr", "itemName": "AoP4Dl3F", "qty": 0.35766534044841025, "type": "STATISTIC"}, {"itemId": "n7s4NOxo", "itemName": "CkjNbHHy", "qty": 0.2991383551347786, "type": "STATISTIC"}], "schedule": {"endTime": "1981-08-11T00:00:00Z", "order": 65, "startTime": "1973-03-30T00:00:00Z"}, "tags": ["0vw1oma3", "9qXokMvA", "z3Cir6b0"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'nEgQvwPP' \
    --code 'Xxy3zD2Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'LRtJjSa4' \
    --code 'wMxLdkMg' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "j01sqOSb", "isActive": false, "name": "IF8E6Vbh", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "5B5XfNGa", "parameterType": "STATISTIC", "targetValue": 0.7494062146641322}, {"matcher": "EQUAL", "parameterName": "tWnImOkt", "parameterType": "ACHIEVEMENT", "targetValue": 0.8559646917925069}, {"matcher": "GREATER_THAN", "parameterName": "Ack8tqX3", "parameterType": "USERACCOUNT", "targetValue": 0.21500251881282273}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "vlVlnYsL", "parameterType": "STATISTIC", "targetValue": 0.004265227034057406}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "HEktdPBv", "parameterType": "ACHIEVEMENT", "targetValue": 0.9212716670030109}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "WQg0mq3R", "parameterType": "USERACCOUNT", "targetValue": 0.49995915554610826}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "DKlNsMBg", "parameterType": "STATISTIC", "targetValue": 0.7542060956366597}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "YJWbfQTE", "parameterType": "STATISTIC", "targetValue": 0.5903262439873547}, {"matcher": "EQUAL", "parameterName": "kMzSUgi8", "parameterType": "ACHIEVEMENT", "targetValue": 0.05792293451195485}]}], "rewards": [{"itemId": "5UObkldU", "itemName": "bgvfRqfa", "qty": 0.2877702778209541, "type": "STATISTIC"}, {"itemId": "9HzaSraO", "itemName": "yDfCqLub", "qty": 0.35770469391133564, "type": "ENTITLEMENT"}, {"itemId": "NLY3RODA", "itemName": "miZTV5YJ", "qty": 0.18214251748999521, "type": "STATISTIC"}], "schedule": {"endTime": "1982-05-19T00:00:00Z", "order": 58, "startTime": "1981-06-04T00:00:00Z"}, "tags": ["zhC2AZkM", "9Nyex6bU", "5DH4vbcm"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'QpgGefv9' \
    --code '8hj0kfF2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'lKeM2Sjj' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'WdypXsb4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'XQxt4kYq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0oKHrodx", "m0MSMuxH", "Pcj31idR"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '76nqErBp' \
    --limit '100' \
    --offset '97' \
    --sortBy '7sdbndeq' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserRewards' test.out

#- 17 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '65' \
    --sortBy '8JVpl4Rf' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 17 'GetChallenges' test.out

#- 18 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'WKGEeUll' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '40' \
    --tags '["zijuqVB2", "b9l2thkc", "H6Lzz5TF"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetScheduledGoals' test.out

#- 19 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'EvaluateMyProgress' test.out

#- 20 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'beCG3rMS' \
    --namespace $AB_NAMESPACE \
    --goalCode '0DtL6ce9' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserProgression' test.out

#- 21 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '6' \
    --sortBy 'xPyGdXiu' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserRewards' test.out

#- 22 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["cP7PCuBa", "8v0YH7Vm", "ULdzbemV"]}' \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE