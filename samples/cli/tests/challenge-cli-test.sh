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
    --keyword 'NZqabL5r' \
    --limit '74' \
    --offset '66' \
    --sortBy 'createdAt' \
    --status 'INIT' \
    --tags '["4k1iRHKn", "yu0bew4z", "kOfbXrIj"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 43, "assignmentRule": "FIXED", "code": "kreCW1nx", "description": "EhUDuSvK", "endAfter": 4, "endDate": "1971-01-22T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "ZwSN6Ees", "randomizedPerRotation": true, "repeatAfter": 100, "resetConfig": {"resetDate": 15, "resetDay": 78, "resetTime": "FdUvZ2yA"}, "rotation": "WEEKLY", "startDate": "1989-01-01T00:00:00Z", "tags": ["4YiY0Sdd", "XSi0EyVw", "53rP94dB"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId '4PKCGBrb' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'LRu21g5g' \
    --limit '4' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '4NYFoJ4a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'Qfkd5ut9' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 28, "assignmentRule": "FIXED", "description": "ncemM1Mq", "endAfter": 92, "endDate": "1974-06-01T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "kSBpHJxs", "randomizedPerRotation": true, "repeatAfter": 46, "resetConfig": {"resetDate": 39, "resetDay": 65, "resetTime": "reDBsJUy"}, "rotation": "DAILY", "startDate": "1991-12-18T00:00:00Z", "tags": ["GFSFw4Qg", "NSmgirM5", "8H5WWBcC"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode '7Qw9LvoZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'X5l1TojB' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '60' \
    --sortBy 'updatedAt' \
    --tags '["PdY28g7R", "KXVIpeNT", "RVn9Monr"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'eqxCaMcE' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rwZDmRqE", "description": "s1rjgpZW", "isActive": true, "name": "NpLsTSqx", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "iNMxxzFm", "matcher": "GREATER_THAN", "parameterName": "v5vRcIQR", "parameterType": "USERACCOUNT", "statCycleId": "IXJv8A8p", "targetValue": 0.3223203603199576}, {"id": "xtkN3oK7", "matcher": "GREATER_THAN", "parameterName": "8VRXpQqK", "parameterType": "USERACCOUNT", "statCycleId": "uA0SUdTo", "targetValue": 0.7995269941418262}, {"id": "9CWKbf1F", "matcher": "EQUAL", "parameterName": "ojdcD9TG", "parameterType": "ACHIEVEMENT", "statCycleId": "sD5s3ifj", "targetValue": 0.8342059458421369}]}, {"operator": "AND", "predicates": [{"id": "KjOKMfWP", "matcher": "LESS_THAN", "parameterName": "Macnzzvn", "parameterType": "ENTITLEMENT", "statCycleId": "2Az5zwQ7", "targetValue": 0.7141568246851199}, {"id": "sZxqT3hp", "matcher": "GREATER_THAN_EQUAL", "parameterName": "MUa7LDnx", "parameterType": "ACHIEVEMENT", "statCycleId": "nw2EOCJD", "targetValue": 0.7197547096166989}, {"id": "Ir2Tol8O", "matcher": "GREATER_THAN", "parameterName": "NSEjnUhW", "parameterType": "STATISTIC_CYCLE", "statCycleId": "IH2pcLk2", "targetValue": 0.2959872499454478}]}, {"operator": "AND", "predicates": [{"id": "KGPPXi7O", "matcher": "EQUAL", "parameterName": "m2UnQF8R", "parameterType": "STATISTIC_CYCLE", "statCycleId": "VwtM9HJx", "targetValue": 0.928694346433259}, {"id": "uBTnpdil", "matcher": "LESS_THAN", "parameterName": "yJY6h7j3", "parameterType": "ENTITLEMENT", "statCycleId": "E1nAJgIZ", "targetValue": 0.17562318501434038}, {"id": "JkxEQkeL", "matcher": "LESS_THAN_EQUAL", "parameterName": "3SZydNzt", "parameterType": "USERACCOUNT", "statCycleId": "KiIR9HI3", "targetValue": 0.034758530103659147}]}], "rewards": [{"itemId": "qF4E318V", "itemName": "qfTvakP9", "qty": 0.3001212409974795, "type": "STATISTIC"}, {"itemId": "pq0rGl6d", "itemName": "GWVaKy7O", "qty": 0.4275548886561339, "type": "STATISTIC"}, {"itemId": "eqUjAHKR", "itemName": "uNfVOzAE", "qty": 0.5750423279260626, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1983-01-11T00:00:00Z", "order": 66, "startTime": "1986-02-21T00:00:00Z"}, "tags": ["r7C4JwVt", "jm43Exfr", "SeUziBKX"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'VNnWRq0E' \
    --code 'pczG34zn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'dM1RxAvs' \
    --code '1MyYEEh3' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BAU4Pp18", "isActive": false, "name": "62OoKCkY", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "ze38HLT0", "matcher": "LESS_THAN_EQUAL", "parameterName": "qwpvxjJ3", "parameterType": "USERACCOUNT", "statCycleId": "u5mdE9rU", "targetValue": 0.4160238701693445}, {"id": "n3nTHRGA", "matcher": "LESS_THAN", "parameterName": "aPnYv7k0", "parameterType": "ENTITLEMENT", "statCycleId": "8PhvZ8Wv", "targetValue": 0.4301184478318818}, {"id": "zwLBZ2Nm", "matcher": "EQUAL", "parameterName": "cd2jYGdk", "parameterType": "ACHIEVEMENT", "statCycleId": "ZVWSTxax", "targetValue": 0.4246439989199974}]}, {"operator": "AND", "predicates": [{"id": "6G5tpSfQ", "matcher": "LESS_THAN_EQUAL", "parameterName": "VMtbBfIt", "parameterType": "USERACCOUNT", "statCycleId": "igiQCJOZ", "targetValue": 0.4229290222984704}, {"id": "XS6TZCvF", "matcher": "LESS_THAN_EQUAL", "parameterName": "ScATB4vT", "parameterType": "STATISTIC_CYCLE", "statCycleId": "7SaHx4GY", "targetValue": 0.49629392063371747}, {"id": "pezugEDk", "matcher": "LESS_THAN_EQUAL", "parameterName": "16d4eEzu", "parameterType": "ACHIEVEMENT", "statCycleId": "oKcnNGAb", "targetValue": 0.35363571462370313}]}, {"operator": "AND", "predicates": [{"id": "hY2SkTck", "matcher": "LESS_THAN_EQUAL", "parameterName": "fjO0gegA", "parameterType": "STATISTIC", "statCycleId": "lVEC6teI", "targetValue": 0.945327606224232}, {"id": "kcO4QTmw", "matcher": "GREATER_THAN_EQUAL", "parameterName": "3W1vWeLg", "parameterType": "ENTITLEMENT", "statCycleId": "9phiV4Z2", "targetValue": 0.4450465014293671}, {"id": "fTowsQPo", "matcher": "LESS_THAN_EQUAL", "parameterName": "NDCsDZYe", "parameterType": "STATISTIC_CYCLE", "statCycleId": "I1cgp8ZM", "targetValue": 0.734423607395204}]}], "rewards": [{"itemId": "Ap3BsKaz", "itemName": "c0QYJxTn", "qty": 0.5353251589893832, "type": "ENTITLEMENT"}, {"itemId": "2ggCFKTp", "itemName": "vo2QJv9E", "qty": 0.4398524954070472, "type": "STATISTIC"}, {"itemId": "rEfcziDs", "itemName": "jz626oPC", "qty": 0.44394655660483007, "type": "STATISTIC"}], "schedule": {"endTime": "1978-03-09T00:00:00Z", "order": 55, "startTime": "1980-03-28T00:00:00Z"}, "tags": ["xGkDZ9hS", "3iydVSy2", "RYEkWNYw"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'Waa8a6fw' \
    --code 'v0rMRLHi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'AtASglb1' \
    --code '84UW5NR6' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '13' \
    --userId 'BAqIVdnF' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'PtuxFPC3' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '4fyWHsE7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'oFcWjic4' \
    --namespace $AB_NAMESPACE \
    --dateTime '1978-11-08T00:00:00Z' \
    --limit '67' \
    --offset '46' \
    --userId 'HZolYbaG' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'GxP09RoN' \
    --namespace $AB_NAMESPACE \
    --safeDelete 'sgpl4MlH' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'GcStKhxC' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1990-01-15T00:00:00Z"}' \
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
    --body '{"appName": "8R41EaOy", "extendType": "CUSTOM", "grpcServerAddress": "J8Q6Fupn"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "U6aLYcRo", "extendType": "APP", "grpcServerAddress": "8lnToFgO"}' \
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
    --challengeCode '["mmOXvKHs", "ItLWD3KR", "zax0E7QN"]' \
    --includeOneTimeEvent 'rEyJp4cY' \
    --body '{"userIds": ["RILrXQ1d", "hxQbbZFh", "GOcZhXHJ"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["LacuAlgP", "wSP6ETz1", "utdlNGvw"], "userId": "Fzx1w25p"}, {"rewardIds": ["AEXRIU2S", "1aKdUE6E", "dSXDHinM"], "userId": "DdF7ejwv"}, {"rewardIds": ["sSSWEXfG", "c12mobUv", "O51ZQuRq"], "userId": "7bkq5wIY"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'l1iCXwQY' \
    --namespace $AB_NAMESPACE \
    --userId 's9UhtfQb' \
    --body '{"goalCode": "sX2MR0QH"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'EfJgxUK5' \
    --namespace $AB_NAMESPACE \
    --userId 'aLskSHio' \
    --dateTime '1976-09-21T00:00:00Z' \
    --goalCode 'Co0y7zTU' \
    --limit '77' \
    --offset '62' \
    --tags '["dm3w9JbX", "Erq5bnKq", "Uax4pRbU"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'FD3pJmCe' \
    --challengeCode 'h71yf6Z8' \
    --goalProgressionId 'zntXYGF2' \
    --limit '86' \
    --offset '48' \
    --sortBy 'createdAt:asc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'PYuQ6ckj' \
    --body '{"rewardIDs": ["tGQdbFR8", "Zov1Rubi", "sHQCxfex"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'Y9cmEC0s' \
    --limit '83' \
    --offset '43' \
    --sortBy 'createdAt:desc' \
    --status 'RETIRED' \
    --tags '["ewh328f2", "GkJGH3ky", "7hWEqaMM"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'Suc8Y65Y' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '61' \
    --sortBy 'createdAt' \
    --tags '["CyfZ6y8d", "gWAUSCkd", "SYD3JbTk"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode '2AdxDLup' \
    --code 'lJkEWn3v' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'l4IWEeI3' \
    --namespace $AB_NAMESPACE \
    --dateTime '1999-03-31T00:00:00Z' \
    --limit '63' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode '1SvbTzC2' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "73vqt4xY"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["dCA9CrS7", "HcWZXvVA", "9Rhl3KbV"]' \
    --includeOneTimeEvent 'vKyXgqzY' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'crGMCbC8' \
    --namespace $AB_NAMESPACE \
    --dateTime '1995-05-08T00:00:00Z' \
    --goalCode '3jG8zNKs' \
    --limit '95' \
    --offset '58' \
    --tags '["RdXUMSB3", "NnSUtVVt", "fx2svL5m"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'yx3eVVwu' \
    --index '81' \
    --namespace $AB_NAMESPACE \
    --goalCode 'C5Gm0Pra' \
    --limit '14' \
    --offset '3' \
    --tags '["crF3L25T", "5Iz5Pnny", "DgJMpHny"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'ErQpEGVU' \
    --goalProgressionId 'TkhW5AmK' \
    --limit '77' \
    --offset '82' \
    --sortBy 'createdAt:desc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["O9pl9LFC", "B6cVJFNE", "uGXNqcP1"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE