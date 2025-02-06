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
    --keyword 'exYa0LDR' \
    --limit '28' \
    --offset '76' \
    --sortBy 'createdAt:asc' \
    --status 'INIT' \
    --tags '["zUniDJhP", "Uqa3vM17", "tC7ZiG03"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 51, "assignmentRule": "FIXED", "code": "Gdtpr9X2", "description": "lcOEDrqs", "endAfter": 52, "endDate": "1981-03-17T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "tcyihIkz", "randomizedPerRotation": true, "repeatAfter": 94, "resetConfig": {"resetDate": 24, "resetDay": 47, "resetTime": "v4xk08Yl"}, "rotation": "DAILY", "startDate": "1972-07-21T00:00:00Z", "tags": ["mGIHojdM", "YcWUt5wA", "LcFHIuHN"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'QepmPHey' \
    --limit '78' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'mo9VkZ59' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 's0zzyUAn' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 68, "assignmentRule": "UNSCHEDULED", "description": "wPn4k0s4", "endAfter": 91, "endDate": "1990-08-05T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "SgWzrB5n", "randomizedPerRotation": false, "repeatAfter": 5, "resetConfig": {"resetDate": 54, "resetDay": 28, "resetTime": "8QjW530C"}, "rotation": "WEEKLY", "startDate": "1975-08-11T00:00:00Z", "tags": ["xSkagxOh", "ZO5on8a3", "SbuM7HNC"]}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'F4alAgx0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'sceDd033' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '92' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'Sb9Z9r4p' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UhdR29aK", "description": "b6ZIOr0R", "isActive": true, "name": "6T9m8YwG", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "8oudGNKu", "parameterType": "USERACCOUNT", "statCycleId": "NasgVJc6", "targetValue": 0.42851018838699795}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "AhYsjbyH", "parameterType": "ACHIEVEMENT", "statCycleId": "MuItqhRO", "targetValue": 0.36650106646260094}, {"matcher": "LESS_THAN", "parameterName": "Xha15b8e", "parameterType": "STATISTIC_CYCLE", "statCycleId": "qAqqRcSB", "targetValue": 0.9115386621574625}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "6Ea9zkPQ", "parameterType": "STATISTIC", "statCycleId": "9G5PfkNu", "targetValue": 0.3880338773143762}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "4O5APmXs", "parameterType": "ACHIEVEMENT", "statCycleId": "AocpCz3N", "targetValue": 0.053358110420305804}, {"matcher": "EQUAL", "parameterName": "rjxpkLfU", "parameterType": "USERACCOUNT", "statCycleId": "ZVOMghy2", "targetValue": 0.538305177808022}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "LkVc8V1N", "parameterType": "USERACCOUNT", "statCycleId": "yufrIPbS", "targetValue": 0.3913112469199199}, {"matcher": "GREATER_THAN", "parameterName": "wW1Qvxiv", "parameterType": "ENTITLEMENT", "statCycleId": "kjBGhP7K", "targetValue": 0.3003802978526573}, {"matcher": "LESS_THAN", "parameterName": "sSf9fCqF", "parameterType": "STATISTIC_CYCLE", "statCycleId": "CmFjWwWu", "targetValue": 0.5832200991175689}]}], "rewards": [{"itemId": "MNIY9D4Z", "itemName": "ckWFmOGq", "qty": 0.6737405272069391, "type": "STATISTIC"}, {"itemId": "C3tKqQUo", "itemName": "MUYq83mn", "qty": 0.8215106908836325, "type": "STATISTIC"}, {"itemId": "HKY9dawK", "itemName": "hfNki4qR", "qty": 0.5574806596264147, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1988-06-17T00:00:00Z", "order": 100, "startTime": "1995-12-19T00:00:00Z"}, "tags": ["lmC7sdXz", "4NLyBMGG", "6k9mdwo2"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'bIWePMEm' \
    --code 'ms6tZJOV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'NQvGrTps' \
    --code 'yKgp7poW' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "1lA30iVO", "isActive": false, "name": "V9mRp4gS", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "v96NX0s0", "parameterType": "ACHIEVEMENT", "statCycleId": "G5RjMfwV", "targetValue": 0.30031195398033683}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "iQ6QT0j4", "parameterType": "STATISTIC_CYCLE", "statCycleId": "zWedLvNy", "targetValue": 0.8826290829309084}, {"matcher": "GREATER_THAN", "parameterName": "8B9d5fRd", "parameterType": "ACHIEVEMENT", "statCycleId": "UTezMmEu", "targetValue": 0.40332610312776307}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "FudY2Vgd", "parameterType": "STATISTIC", "statCycleId": "tPFzaci7", "targetValue": 0.4883387861966175}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "DVm7UUYc", "parameterType": "ENTITLEMENT", "statCycleId": "vlH20qhj", "targetValue": 0.63986580879719}, {"matcher": "EQUAL", "parameterName": "UZbfSwoh", "parameterType": "STATISTIC", "statCycleId": "wAJ3roaW", "targetValue": 0.6496852321820104}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "P1qAp6NB", "parameterType": "ENTITLEMENT", "statCycleId": "XakyTd9m", "targetValue": 0.19145865400497686}, {"matcher": "LESS_THAN", "parameterName": "Ff4Pn0SX", "parameterType": "STATISTIC", "statCycleId": "vg7yhUyj", "targetValue": 0.3905700970160333}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "F6mMvwAH", "parameterType": "USERACCOUNT", "statCycleId": "2CAHN2uC", "targetValue": 0.655926396551899}]}], "rewards": [{"itemId": "4oGd2Bkw", "itemName": "19gq07HJ", "qty": 0.5133861760272467, "type": "STATISTIC"}, {"itemId": "Ru4nsbRS", "itemName": "DbEdCtQb", "qty": 0.8281946615814917, "type": "STATISTIC"}, {"itemId": "bjom680I", "itemName": "lcgIIEvN", "qty": 0.6325430462484263, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1996-12-05T00:00:00Z", "order": 17, "startTime": "1998-07-09T00:00:00Z"}, "tags": ["HeowAYyk", "Gy4AO06E", "dhIkwTc3"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'E17dMMpB' \
    --code '24JVPhF5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'SbjS8syh' \
    --code '0H4nNLpE' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '36' \
    --userId 'voIyzcbL' \
    > test.out 2>&1
eval_tap $? 13 'AdminListSchedulesByGoal' test.out

#- 14 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'LXgjT6yU' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetPeriods' test.out

#- 15 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'wYwH9khy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminRandomizeChallenge' test.out

#- 16 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'pawxfh60' \
    --namespace $AB_NAMESPACE \
    --dateTime '1973-04-20T00:00:00Z' \
    --limit '81' \
    --offset '95' \
    --userId '3OelcnPL' \
    > test.out 2>&1
eval_tap $? 16 'AdminListSchedules' test.out

#- 17 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode '66rJm1P6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteTiedChallenge' test.out

#- 18 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'WHqcUyKR' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1976-12-29T00:00:00Z"}' \
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
    --body '{"appName": "AbX3Qvmf", "extendType": "CUSTOM", "grpcServerAddress": "BnLzV0pM"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateAssignmentPlugin' test.out

#- 21 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "1MTKJh5u", "extendType": "CUSTOM", "grpcServerAddress": "KzfiwSof"}' \
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
    --body '{"userIds": ["b3Pn2Nou", "uqz4M47w", "NnaxTjM7"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminEvaluateProgress' test.out

#- 24 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["5wH1pcuE", "fDTqfFlP", "u8Fh4Hcf"], "userId": "hAjjsdwr"}, {"rewardIds": ["tigUwNtw", "qvuSwv9h", "Bqwd0Wby"], "userId": "PGePe32A"}, {"rewardIds": ["YMgGKXPt", "gqYIlBEr", "w8Fa3z8p"], "userId": "XMoWxPul"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminClaimUsersRewards' test.out

#- 25 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'gol7qJlg' \
    --namespace $AB_NAMESPACE \
    --userId 'KrUm4wUY' \
    --body '{"goalCode": "NaZHngOt"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUserRewardsByGoalCode' test.out

#- 26 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'hGLmDzRU' \
    --namespace $AB_NAMESPACE \
    --userId 'Dh3Jz07B' \
    --dateTime '1989-06-11T00:00:00Z' \
    --goalCode 'CwKATGKf' \
    --limit '2' \
    --offset '38' \
    --tags '["6tT1IXsa", "7EDyeV7X", "zfiCwOcd"]' \
    > test.out 2>&1
eval_tap $? 26 'AdminGetUserProgression' test.out

#- 27 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'fQkasxnT' \
    --challengeCode 'r8WO5Dwe' \
    --goalProgressionId 'Muyx9Jbq' \
    --limit '72' \
    --offset '79' \
    --sortBy 'createdAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserRewards' test.out

#- 28 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'kzFTAbU5' \
    --body '{"rewardIDs": ["31ZtWXBq", "WmxYnMJ6", "xMZWSdi7"]}' \
    > test.out 2>&1
eval_tap $? 28 'AdminClaimUserRewards' test.out

#- 29 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'p4Dws2dn' \
    --limit '83' \
    --offset '96' \
    --sortBy 'updatedAt:asc' \
    --status 'INIT' \
    --tags '["DncJmQOW", "rGU1JkYP", "XDthuzWO"]' \
    > test.out 2>&1
eval_tap $? 29 'GetChallenges' test.out

#- 30 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'LaQCOg4D' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '19' \
    --tags '["LDSVZwPi", "QRmBABcr", "LsXdxmZJ"]' \
    > test.out 2>&1
eval_tap $? 30 'PublicGetScheduledGoals' test.out

#- 31 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'FEVk5tRw' \
    --code 'S5JhNl8W' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 31 'PublicListSchedulesByGoal' test.out

#- 32 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'dwp76PaB' \
    --namespace $AB_NAMESPACE \
    --dateTime '1984-03-13T00:00:00Z' \
    --limit '100' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedules' test.out

#- 33 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'faoAFw33' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "9xOW0Lj0"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicClaimUserRewardsByGoalCode' test.out

#- 34 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'EvaluateMyProgress' test.out

#- 35 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'gfHhJdx0' \
    --namespace $AB_NAMESPACE \
    --dateTime '1984-11-09T00:00:00Z' \
    --goalCode 'PYfFa6Ky' \
    --limit '16' \
    --offset '13' \
    --tags '["ANczGz3l", "1dqntGQS", "ApcLCpCJ"]' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetUserProgression' test.out

#- 36 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'kz3LZJSF' \
    --index '78' \
    --namespace $AB_NAMESPACE \
    --goalCode 'dtCwN0yK' \
    --limit '98' \
    --offset '76' \
    --tags '["wP2gJsgk", "lP6ZoZ7z", "rWTuvqzW"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetPastUserProgression' test.out

#- 37 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'GyrC3xvd' \
    --goalProgressionId '19EaTNYr' \
    --limit '59' \
    --offset '87' \
    --sortBy 'createdAt:asc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetUserRewards' test.out

#- 38 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["Ii6DUfna", "fX1IqHNY", "P8fys6Wp"]}' \
    > test.out 2>&1
eval_tap $? 38 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE