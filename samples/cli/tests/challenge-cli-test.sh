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
    --limit '58' \
    --offset '60' \
    --sortBy 'HbInXwd2' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 1, "assignmentRule": "FIXED", "code": "xl6zPy9m", "description": "3hRESGo1", "endAfter": 24, "endDate": "1978-09-08T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "AZ9p39xC", "repeatAfter": 7, "rotation": "NONE", "startDate": "1987-10-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '8XbvktB6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'T1IZ1pwA' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 43, "assignmentRule": "RANDOMIZED", "description": "TRlnEEEu", "endAfter": 20, "endDate": "1973-04-01T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "Ktz6eChD", "repeatAfter": 36, "rotation": "NONE", "startDate": "1991-03-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'Hr5m9iH2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'GDXS58GU' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '11' \
    --sortBy 'Eu1avaqE' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'qTdmnBe6' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IhYhgvPq", "description": "vrsmufgi", "isActive": false, "name": "DiMAmewu", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "IBshuWe6", "parameterType": "ACHIEVEMENT", "targetValue": 0.5495875088146502}, {"matcher": "LESS_THAN", "parameterName": "gV4PXZnl", "parameterType": "STATISTIC", "targetValue": 0.23080151433806972}, {"matcher": "EQUAL", "parameterName": "fZ27ZnyO", "parameterType": "ACHIEVEMENT", "targetValue": 0.32271140829387535}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "EgAHvguF", "parameterType": "ACHIEVEMENT", "targetValue": 0.707696925130349}, {"matcher": "GREATER_THAN", "parameterName": "xou20PwF", "parameterType": "USERACCOUNT", "targetValue": 0.4132940716435376}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "XImdv3A5", "parameterType": "STATISTIC", "targetValue": 0.7143097829503766}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "wIQUyfph", "parameterType": "ACHIEVEMENT", "targetValue": 0.009834282665312388}, {"matcher": "EQUAL", "parameterName": "Uq916Oa3", "parameterType": "USERACCOUNT", "targetValue": 0.7640921254261525}, {"matcher": "EQUAL", "parameterName": "yTEkfYOP", "parameterType": "STATISTIC", "targetValue": 0.554688069960773}]}], "rewards": [{"itemId": "EBWVJu8I", "itemName": "lhXe4mQ4", "qty": 0.31583597463115265, "type": "ENTITLEMENT"}, {"itemId": "i6la82oW", "itemName": "YlpnLf4S", "qty": 0.7882507788699549, "type": "ENTITLEMENT"}, {"itemId": "DRU92Xy7", "itemName": "q9n92V27", "qty": 0.9467263217475825, "type": "STATISTIC"}], "schedule": {"endTime": "1996-02-18T00:00:00Z", "order": 32, "startTime": "1983-02-21T00:00:00Z"}, "tags": ["Cpck7FdU", "7PxXNB4t", "7HwccRhF"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'f75AqDFX' \
    --code 'PWjjgqAk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'wzcZEYQL' \
    --code '4BmAoUYR' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BAK7bOlM", "isActive": true, "name": "hbkFsc1o", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "wsOtE7Hg", "parameterType": "USERACCOUNT", "targetValue": 0.5465549481577131}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "uzZlUXFf", "parameterType": "USERACCOUNT", "targetValue": 0.6102498198454407}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "hfIT99n5", "parameterType": "STATISTIC", "targetValue": 0.6707522297548575}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "beJ1cTdq", "parameterType": "STATISTIC", "targetValue": 0.5602801616352331}, {"matcher": "EQUAL", "parameterName": "BWzf8vOG", "parameterType": "USERACCOUNT", "targetValue": 0.33326717515189586}, {"matcher": "LESS_THAN", "parameterName": "IEXZHRMh", "parameterType": "ACHIEVEMENT", "targetValue": 0.21417739143028058}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "powT8Gb4", "parameterType": "USERACCOUNT", "targetValue": 0.9379310835782526}, {"matcher": "GREATER_THAN", "parameterName": "bgMpCcOi", "parameterType": "ACHIEVEMENT", "targetValue": 0.19934426056262322}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "AMW8I2wU", "parameterType": "STATISTIC", "targetValue": 0.27886717307418485}]}], "rewards": [{"itemId": "ioyVLag3", "itemName": "GNuTZUHy", "qty": 0.8055655735162143, "type": "STATISTIC"}, {"itemId": "3hHbkkqO", "itemName": "4IV4y0z9", "qty": 0.8888860098594685, "type": "ENTITLEMENT"}, {"itemId": "D0HYPvKz", "itemName": "3A8J4K61", "qty": 0.6762436141064269, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1980-10-23T00:00:00Z", "order": 87, "startTime": "1985-03-04T00:00:00Z"}, "tags": ["lbhNSavp", "UpI47nry", "Dgz1ccii"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'OhD2AZnn' \
    --code 'OMpBT7nj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'da5fvRV3' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'BjqYOD78' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'rQWiNEeU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["W3ldwGYq", "lYhWNvlb", "KdeCUMne"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'FWO5yn0c' \
    --limit '79' \
    --offset '14' \
    --sortBy 'KbZu3o9j' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserRewards' test.out

#- 17 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '44' \
    --sortBy 'bgqMFX7J' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 17 'GetChallenges' test.out

#- 18 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'vsHbfbHy' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '82' \
    --tags '["LGXVORgS", "8wJeiDJd", "8Ea7JaKr"]' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetScheduledGoals' test.out

#- 19 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'EvaluateMyProgress' test.out

#- 20 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'OltbUtWG' \
    --namespace $AB_NAMESPACE \
    --goalCode 'MpBxmahA' \
    --limit '43' \
    --offset '74' \
    --tags '["CJd6l5Hm", "MCkLiuK4", "1qF8Gt7c"]' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserProgression' test.out

#- 21 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '60' \
    --sortBy 'qFtnBIvR' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserRewards' test.out

#- 22 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["w4CV4TeS", "pSdx38Un", "wqXVAAet"]}' \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE