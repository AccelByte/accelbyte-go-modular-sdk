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
    --limit '88' \
    --offset '98' \
    --sortBy 'AKVFwvqr' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 81, "assignmentRule": "RANDOMIZED", "code": "XK2NHtbx", "description": "6MSPN4Qe", "endAfter": 46, "endDate": "1987-04-24T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "7deeEXhR", "rotation": "DAILY", "startDate": "1978-03-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'pRhi6vl2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'Nhk90gtQ' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 54, "assignmentRule": "UNSCHEDULED", "description": "RF1PHAoq", "endAfter": 95, "endDate": "1992-09-24T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "qzvCp5uu", "rotation": "WEEKLY", "startDate": "1990-02-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'WiiIZIiJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'oyYvXrTV' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '98' \
    --sortBy 'icvUqbZy' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'vjy5oH6X' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WOfpcueO", "description": "pGyLkh6t", "isActive": true, "name": "X3MhOa8N", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "xgFMpAr4", "parameterType": "ACHIEVEMENT", "targetValue": 0.18424801716994665}, {"matcher": "LESS_THAN", "parameterName": "xL1UDPrb", "parameterType": "STATISTIC", "targetValue": 0.1308087848175069}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "S8u7aF2W", "parameterType": "USERACCOUNT", "targetValue": 0.7477974912979225}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "dqsdW1Qr", "parameterType": "USERACCOUNT", "targetValue": 0.7160925589656213}, {"matcher": "GREATER_THAN", "parameterName": "c4vzN5kg", "parameterType": "ACHIEVEMENT", "targetValue": 0.8062709994638715}, {"matcher": "GREATER_THAN", "parameterName": "o0tdBvii", "parameterType": "USERACCOUNT", "targetValue": 0.4589906560701159}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "UrjcXOpg", "parameterType": "STATISTIC", "targetValue": 0.9646200218893518}, {"matcher": "LESS_THAN", "parameterName": "sk1DUngv", "parameterType": "USERACCOUNT", "targetValue": 0.8680974526063074}, {"matcher": "EQUAL", "parameterName": "MgfBTRLz", "parameterType": "USERACCOUNT", "targetValue": 0.11872635639457652}]}], "rewards": [{"itemId": "4tCKcf3K", "itemName": "aHiOwe7z", "qty": 0.985741178765348, "type": "STATISTIC"}, {"itemId": "wVTFYHtI", "itemName": "lZThJyv1", "qty": 0.17574817295580836, "type": "STATISTIC"}, {"itemId": "FTY4IOWB", "itemName": "cz9h5VPM", "qty": 0.9206910034974288, "type": "STATISTIC"}], "schedule": {"endTime": "1996-06-26T00:00:00Z", "order": 72, "startTime": "1984-02-09T00:00:00Z"}, "tags": ["GE69iIVT", "hp08nhmP", "pXs7KAoX"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'SdSsa0uC' \
    --code 'oAPm4DdA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'rmVNdWi3' \
    --code 'gqOwOJbw' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3LlTPu0f", "isActive": false, "name": "QYAaSpxb", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "cuDxxJmu", "parameterType": "USERACCOUNT", "targetValue": 0.6526424950456139}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "0rtwbuQt", "parameterType": "STATISTIC", "targetValue": 0.835337492225811}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "W8VLreMp", "parameterType": "STATISTIC", "targetValue": 0.23264512074322763}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Iom5NvuU", "parameterType": "STATISTIC", "targetValue": 0.8452651087202971}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "eDa3QMAR", "parameterType": "ACHIEVEMENT", "targetValue": 0.8474707282332989}, {"matcher": "GREATER_THAN", "parameterName": "mPhsXagn", "parameterType": "USERACCOUNT", "targetValue": 0.4304201075437809}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "ydJY3Qxd", "parameterType": "USERACCOUNT", "targetValue": 0.48851681707383277}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "SI6xb5Za", "parameterType": "ACHIEVEMENT", "targetValue": 0.7322224133626755}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "cwFgzRsS", "parameterType": "STATISTIC", "targetValue": 0.7814006755080618}]}], "rewards": [{"itemId": "O6hE1fWB", "itemName": "365Aotg9", "qty": 0.1468988626192248, "type": "ENTITLEMENT"}, {"itemId": "81SxNx33", "itemName": "oF4MYwIw", "qty": 0.15638996154624585, "type": "STATISTIC"}, {"itemId": "ORWdqgVO", "itemName": "RfGo7yem", "qty": 0.6868041475055562, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1978-03-14T00:00:00Z", "order": 78, "startTime": "1986-08-29T00:00:00Z"}, "tags": ["XuoNmhi7", "rDTGpqeX", "V7tj83W0"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'qUuU9HBW' \
    --code 'xK1JWwG2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'OGnr0LZO' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'kw7CWuMh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'aS3975cF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KNSSuDNi", "4LS0X3Sq", "Xd58TEoi"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'zu35Fe4y' \
    --limit '48' \
    --offset '55' \
    --sortBy 'hhKWHzIm' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserRewards' test.out

#- 17 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '86' \
    --sortBy 'DF2HztLw' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 17 'GetChallenges' test.out

#- 18 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'qWfNRGi7' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '15' \
    --tags '["uE7QwmiM", "ANQCOQMp", "p1bN0UJg"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetScheduledGoals' test.out

#- 19 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'EvaluateMyProgress' test.out

#- 20 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'vUxwLMZc' \
    --namespace $AB_NAMESPACE \
    --goalCode 'fZ8xqEJ5' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserProgression' test.out

#- 21 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '33' \
    --sortBy 'jwjGcbLo' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserRewards' test.out

#- 22 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["M3PEbr5b", "1pl6sEbE", "cPdikcCm"]}' \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE