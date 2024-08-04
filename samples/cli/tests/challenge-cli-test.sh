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
echo "1..25"

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
    --limit '80' \
    --offset '14' \
    --sortBy 'NOf7E0Dr' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 23, "assignmentRule": "FIXED", "code": "Vzth1tOT", "description": "dN3QDczg", "endAfter": 33, "endDate": "1980-07-07T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "iWsyepAf", "randomizedPerRotation": false, "repeatAfter": 50, "resetConfig": {"resetDate": 29, "resetDay": 21, "resetTime": "xvwMB09e"}, "rotation": "DAILY", "startDate": "1988-01-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'qQGm9dq7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'RAZeaK5I' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 3, "assignmentRule": "RANDOMIZED", "description": "Kl6GrwBE", "endAfter": 30, "endDate": "1983-05-18T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "l1XjZAu4", "randomizedPerRotation": true, "repeatAfter": 61, "resetConfig": {"resetDate": 78, "resetDay": 96, "resetTime": "4C1mcPNO"}, "rotation": "DAILY", "startDate": "1983-02-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'DzRSeFvT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'bv52NNUL' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '44' \
    --sortBy 'zPeMqp44' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'e8agfi8I' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GVtFK8Xd", "description": "EO89dPpX", "isActive": true, "name": "WqLIXfaQ", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "nSVCMvgv", "parameterType": "USERACCOUNT", "statCycleId": "uSq1ueGf", "targetValue": 0.9982950635969242}, {"matcher": "EQUAL", "parameterName": "M1Tu3s7k", "parameterType": "STATISTIC", "statCycleId": "tt0DSIiK", "targetValue": 0.025832604570826034}, {"matcher": "GREATER_THAN", "parameterName": "qtKVeZpQ", "parameterType": "ACHIEVEMENT", "statCycleId": "NBfuDoEd", "targetValue": 0.5774549430686505}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "Q7u0Tyev", "parameterType": "STATISTIC", "statCycleId": "98Jhrvuk", "targetValue": 0.6641249422572029}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "TBYhssIE", "parameterType": "USERACCOUNT", "statCycleId": "W8aPK9aT", "targetValue": 0.6248570077072336}, {"matcher": "LESS_THAN", "parameterName": "0ieUAaxS", "parameterType": "ACHIEVEMENT", "statCycleId": "zshj3TES", "targetValue": 0.36233293028922064}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "IJuhI9on", "parameterType": "STATISTIC_CYCLE", "statCycleId": "f5EWidpq", "targetValue": 0.546477544786773}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "RxSHNtBA", "parameterType": "USERACCOUNT", "statCycleId": "KgntjFat", "targetValue": 0.9034474258944233}, {"matcher": "LESS_THAN", "parameterName": "AX9m4x0R", "parameterType": "STATISTIC_CYCLE", "statCycleId": "EDaJcdP0", "targetValue": 0.05465955812882972}]}], "rewards": [{"itemId": "YzWT648O", "itemName": "qQEl3Dua", "qty": 0.8407293060030614, "type": "STATISTIC"}, {"itemId": "5q55Sp5U", "itemName": "4cuQCp54", "qty": 0.7662880498231834, "type": "STATISTIC"}, {"itemId": "Ny0ZiJFo", "itemName": "pTYKfHN8", "qty": 0.19726562280062798, "type": "STATISTIC"}], "schedule": {"endTime": "1994-01-24T00:00:00Z", "order": 43, "startTime": "1996-06-13T00:00:00Z"}, "tags": ["rasemCiu", "E5ryVt4T", "lWQfLYKb"]}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'CUZh5LDF' \
    --code 'piBoRSxS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'HEKpF0RQ' \
    --code 'mwVL8H9C' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "YpCzS3AG", "isActive": true, "name": "46JJOqgf", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Xynxsy7e", "parameterType": "STATISTIC_CYCLE", "statCycleId": "JzdtEtbQ", "targetValue": 0.2947491199504796}, {"matcher": "LESS_THAN", "parameterName": "Kax8UcX5", "parameterType": "ACHIEVEMENT", "statCycleId": "IovADGGP", "targetValue": 0.7692140496216223}, {"matcher": "EQUAL", "parameterName": "IBFVWVMo", "parameterType": "USERACCOUNT", "statCycleId": "zRgbJ68g", "targetValue": 0.45215164966209853}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "wJx1aD5r", "parameterType": "STATISTIC_CYCLE", "statCycleId": "OL6MFXDG", "targetValue": 0.8195411248086037}, {"matcher": "EQUAL", "parameterName": "TM6y4CmS", "parameterType": "ACHIEVEMENT", "statCycleId": "0ogbM2ur", "targetValue": 0.4533181746008005}, {"matcher": "LESS_THAN", "parameterName": "BDG9WiH3", "parameterType": "STATISTIC", "statCycleId": "Wjjkvdrr", "targetValue": 0.47290389465897287}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "EWsPwEv1", "parameterType": "ACHIEVEMENT", "statCycleId": "WCwKJfFT", "targetValue": 0.7452672611101864}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "CnAn397m", "parameterType": "ENTITLEMENT", "statCycleId": "7R8cnqTW", "targetValue": 0.9139579064397856}, {"matcher": "LESS_THAN", "parameterName": "CiZ7ngvI", "parameterType": "ENTITLEMENT", "statCycleId": "5nd6OMU5", "targetValue": 0.7671392673803442}]}], "rewards": [{"itemId": "0W6FOk3M", "itemName": "05o5jozR", "qty": 0.26274594266129114, "type": "STATISTIC"}, {"itemId": "HglZ48GQ", "itemName": "AVJ1dPp3", "qty": 0.685563298557404, "type": "STATISTIC"}, {"itemId": "76ntyoaE", "itemName": "eSjvfiid", "qty": 0.7138383078239416, "type": "STATISTIC"}], "schedule": {"endTime": "1978-06-23T00:00:00Z", "order": 18, "startTime": "1981-06-02T00:00:00Z"}, "tags": ["Cg9KAh35", "rwFm9pnS", "bpbJpniU"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'JSaaKXYj' \
    --code 'lTTV1QhF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode '9ZHdmofi' \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'Zp5g43CQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'NMxtxPb3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0Y3hpuUE", "JLaSiWZH", "hIBpIBW8"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["udHDlt7Z", "xpL4i9yJ", "5KldQODm"], "userId": "DddsffQE"}, {"rewardIds": ["DDwE9p9f", "ucF6yqB1", "CMe0BKIL"], "userId": "WxeWGlog"}, {"rewardIds": ["aT8rRsBZ", "CAgnpp9w", "sUHovCFk"], "userId": "4YpI0vpo"}]' \
    > test.out 2>&1
eval_tap $? 16 'AdminClaimUsersRewards' test.out

#- 17 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'R9ZqlWKH' \
    --limit '63' \
    --offset '64' \
    --sortBy 'ENqJBDJN' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetUserRewards' test.out

#- 18 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'I0uyyjFv' \
    --body '{"rewardIDs": ["nSr93e2s", "KWsXFXHh", "VDVPglBM"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminClaimUserRewards' test.out

#- 19 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '70' \
    --sortBy 'EenEqOdL' \
    --status 'RETIRED' \
    > test.out 2>&1
eval_tap $? 19 'GetChallenges' test.out

#- 20 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'JnenTk1H' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '10' \
    --tags '["15leV9hF", "g55Imvvs", "0BD3oJhf"]' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetScheduledGoals' test.out

#- 21 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'EvaluateMyProgress' test.out

#- 22 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode '0PCIqC20' \
    --namespace $AB_NAMESPACE \
    --dateTime '1999-09-17T00:00:00Z' \
    --goalCode 'E14v33nE' \
    --limit '5' \
    --offset '50' \
    --tags '["ot87ECEh", "fI9LLMNK", "IXkqvqIx"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetUserProgression' test.out

#- 23 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'po4OHQOA' \
    --index '10' \
    --namespace $AB_NAMESPACE \
    --goalCode 'VCFo0dT6' \
    --limit '70' \
    --offset '16' \
    --tags '["0guIzOK1", "8tqrrA5Y", "Db7z92gc"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicGetPastUserProgression' test.out

#- 24 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '26' \
    --sortBy 'N13wYzaH' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 24 'PublicGetUserRewards' test.out

#- 25 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["qWPWuxTj", "BUo8RXBQ", "BFcjmOES"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE