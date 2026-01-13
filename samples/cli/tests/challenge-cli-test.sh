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
    --keyword 'Bl195SZ2' \
    --limit '48' \
    --offset '90' \
    --sortBy 'code:asc' \
    --status 'TIED' \
    --tags '["ZbKcM1zk", "hzawf42Y", "FQeNeDif"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 33, "assignmentRule": "FIXED", "code": "XBfiXkX9", "description": "UOaHqLa9", "endAfter": 49, "endDate": "1992-10-15T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "YKBb1SR5", "randomizedPerRotation": false, "repeatAfter": 62, "resetConfig": {"resetDate": 28, "resetDay": 78, "resetTime": "DiDDzDPG"}, "rotation": "NONE", "startDate": "1979-09-29T00:00:00Z", "tags": ["wiESlpm2", "MLl2NG27", "AkVbuZDq"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'ZKdQ9FRc' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'foc1Ti0d' \
    --limit '38' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'ILYGE18T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'GGuHzlYk' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 18, "assignmentRule": "UNSCHEDULED", "description": "WopcXeAH", "endAfter": 89, "endDate": "1978-12-29T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "JLQy4f6F", "randomizedPerRotation": true, "repeatAfter": 55, "resetConfig": {"resetDate": 9, "resetDay": 78, "resetTime": "XO1fleDb"}, "rotation": "DAILY", "startDate": "1988-05-08T00:00:00Z", "tags": ["vOEVHqGM", "KCouOfCk", "7ZOwREis"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode '1xduztwi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'NhSvdi3a' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '10' \
    --sortBy 'updatedAt:desc' \
    --tags '["en8j7Pqm", "cxI3NlzO", "ONEvrPst"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode '4BcFsi0C' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NzgBpkTr", "description": "4u0w6Onf", "isActive": true, "name": "JhLWJF88", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "6XAbsJDT", "matcher": "GREATER_THAN", "parameterName": "7rxWaOOi", "parameterType": "STATISTIC_CYCLE", "statCycleId": "E0DbVwLS", "targetValue": 0.518259597975744}, {"id": "5lbzq5bQ", "matcher": "LESS_THAN", "parameterName": "CLi5U6f0", "parameterType": "STATISTIC", "statCycleId": "HCVrmmuw", "targetValue": 0.22598153598055692}, {"id": "PgBgQTVs", "matcher": "EQUAL", "parameterName": "iA93jqle", "parameterType": "USERACCOUNT", "statCycleId": "XYgWI0LZ", "targetValue": 0.00924510069270823}]}, {"operator": "AND", "predicates": [{"id": "OmcCksY4", "matcher": "LESS_THAN", "parameterName": "ABgEULvE", "parameterType": "ENTITLEMENT", "statCycleId": "oiEFXcJK", "targetValue": 0.3425849121979522}, {"id": "hHy6ZviL", "matcher": "LESS_THAN_EQUAL", "parameterName": "MnJSyWgb", "parameterType": "USERACCOUNT", "statCycleId": "NclgtiNf", "targetValue": 0.939733876902839}, {"id": "2EGV81yo", "matcher": "LESS_THAN_EQUAL", "parameterName": "1SRUvq7c", "parameterType": "ACHIEVEMENT", "statCycleId": "v7VpPVab", "targetValue": 0.5686471068358876}]}, {"operator": "AND", "predicates": [{"id": "kUyf3J1N", "matcher": "LESS_THAN", "parameterName": "mzZLC4mF", "parameterType": "ENTITLEMENT", "statCycleId": "aytLPwKK", "targetValue": 0.784410789773716}, {"id": "iY1cfg6L", "matcher": "GREATER_THAN", "parameterName": "IGFAJOKT", "parameterType": "ACHIEVEMENT", "statCycleId": "lRLDgeRh", "targetValue": 0.29831001501186816}, {"id": "x5ABAf7p", "matcher": "EQUAL", "parameterName": "TSJs0n8k", "parameterType": "STATISTIC_CYCLE", "statCycleId": "IyvpSeDs", "targetValue": 0.9954853188329653}]}], "rewards": [{"itemId": "9aTlryom", "itemName": "yfZ8hoLh", "qty": 0.7996659848924016, "type": "STATISTIC"}, {"itemId": "guD3R8f3", "itemName": "8tpveZ58", "qty": 0.5243351943752872, "type": "ENTITLEMENT"}, {"itemId": "JWz2UBsS", "itemName": "rPoMMEgc", "qty": 0.20850537693905902, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1986-05-17T00:00:00Z", "order": 85, "startTime": "1982-08-24T00:00:00Z"}, "tags": ["uAcTa3pM", "9uPfiarJ", "ahfCnRw4"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'qe0UC6Ms' \
    --code 'aLzcnW03' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'OWY87fS0' \
    --code 'JgKZBRdM' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "P7cCp2LA", "isActive": false, "name": "eE1w0Ier", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "3gWBOFpx", "matcher": "LESS_THAN_EQUAL", "parameterName": "AUYyTYqw", "parameterType": "STATISTIC", "statCycleId": "uKFR0rqh", "targetValue": 0.10042299535123267}, {"id": "szeX0dpO", "matcher": "LESS_THAN_EQUAL", "parameterName": "vNSg4lPf", "parameterType": "ACHIEVEMENT", "statCycleId": "MQAffbqc", "targetValue": 0.32012567764354793}, {"id": "rVz9ijix", "matcher": "LESS_THAN", "parameterName": "APOmBAl6", "parameterType": "STATISTIC_CYCLE", "statCycleId": "xMHCXkCL", "targetValue": 0.42546265386607673}]}, {"operator": "AND", "predicates": [{"id": "kXhLVu1o", "matcher": "GREATER_THAN", "parameterName": "IKlpMz5E", "parameterType": "ACHIEVEMENT", "statCycleId": "uuaPM2XB", "targetValue": 0.11809477162976101}, {"id": "QvUkc3VZ", "matcher": "GREATER_THAN", "parameterName": "02t7phc9", "parameterType": "STATISTIC_CYCLE", "statCycleId": "15RSyodS", "targetValue": 0.6068591489503773}, {"id": "YhxSIr8l", "matcher": "LESS_THAN", "parameterName": "yrM7Niv3", "parameterType": "STATISTIC_CYCLE", "statCycleId": "NmaptPTd", "targetValue": 0.4326644206060376}]}, {"operator": "AND", "predicates": [{"id": "ysPqJAYW", "matcher": "GREATER_THAN", "parameterName": "LekiXR9S", "parameterType": "USERACCOUNT", "statCycleId": "nPdtJLZg", "targetValue": 0.29402950076354717}, {"id": "cBXuq87L", "matcher": "LESS_THAN_EQUAL", "parameterName": "d4zTH6Gc", "parameterType": "USERACCOUNT", "statCycleId": "SEfduTd0", "targetValue": 0.5551343055445912}, {"id": "xMnNpMlb", "matcher": "EQUAL", "parameterName": "ymJACbA5", "parameterType": "STATISTIC", "statCycleId": "I4ZJDgBC", "targetValue": 0.36038051825695094}]}], "rewards": [{"itemId": "xF3sHHHb", "itemName": "W1gthX0c", "qty": 0.4932103358496389, "type": "ENTITLEMENT"}, {"itemId": "B5FEfTV7", "itemName": "W1yONAWP", "qty": 0.07005868606746346, "type": "ENTITLEMENT"}, {"itemId": "ZTxoDHy3", "itemName": "rntEMli0", "qty": 0.4891463312732264, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1996-08-04T00:00:00Z", "order": 38, "startTime": "1988-11-20T00:00:00Z"}, "tags": ["7oyWMNOE", "fYZPFA9l", "Zy1tRAWZ"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode '6mSPaNL9' \
    --code 'EezexnmS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'Yx0SRlpv' \
    --code 'QaaOHKHu' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '85' \
    --userId 'ADzj8Usi' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'gY9DV4ko' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '19yHjdme' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode '7XgFAqJS' \
    --namespace $AB_NAMESPACE \
    --dateTime '1999-08-28T00:00:00Z' \
    --limit '17' \
    --offset '87' \
    --userId 'a8UsqtNr' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'uNTg2V5f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'mVlVAGLM' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1986-08-02T00:00:00Z"}' \
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
    --body '{"appName": "1tnXfjc4", "extendType": "APP", "grpcServerAddress": "VNfmti6Q"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "DJhLVHgK", "extendType": "CUSTOM", "grpcServerAddress": "G97b2gZB"}' \
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
    --challengeCode '["Ek1CA6Hz", "DkDUPjId", "Guy793b8"]' \
    --body '{"userIds": ["lydRJlGe", "QXLXGAMa", "CheYGfGK"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["ch0NUMfu", "Pz0qPx2p", "SkfWMqC6"], "userId": "ujAQd7AR"}, {"rewardIds": ["Pd6Rtntn", "JZ56n9p7", "S3co00WW"], "userId": "Tken5g4C"}, {"rewardIds": ["lXyuUTFF", "S1NQV1oA", "LdhUd5YM"], "userId": "mx9b4Gdu"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'lcmr14t8' \
    --namespace $AB_NAMESPACE \
    --userId '3vcHiL6d' \
    --body '{"goalCode": "fNRfnoaf"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'baKDiia4' \
    --namespace $AB_NAMESPACE \
    --userId 'a0KGIwM3' \
    --dateTime '1985-04-03T00:00:00Z' \
    --goalCode 'Na9EmEPf' \
    --limit '68' \
    --offset '39' \
    --tags '["y6Zazdrl", "vgvb10Ur", "MKeb2YO5"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'iFWNg9VY' \
    --challengeCode 'D0KbKnYG' \
    --goalProgressionId '6hWicCre' \
    --limit '57' \
    --offset '79' \
    --sortBy 'createdAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'svA8lGNV' \
    --body '{"rewardIDs": ["F6CIYm6y", "7TbCnm3r", "k3M3zNYx"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword '9aT91clC' \
    --limit '81' \
    --offset '74' \
    --sortBy 'updatedAt:asc' \
    --status 'TIED' \
    --tags '["DEye6C3B", "xc56iEyN", "KzGVZG2j"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'UGeaR9xs' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '90' \
    --sortBy 'updatedAt:desc' \
    --tags '["jZ3jDWox", "LLmfPD17", "MyboQHqf"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'dEqzkW2P' \
    --code 'YmQeiXua' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'olU78jDH' \
    --namespace $AB_NAMESPACE \
    --dateTime '1972-07-17T00:00:00Z' \
    --limit '38' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode '2r5I1GHZ' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "AtMbqcvg"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["hEC2HRcI", "bm0rF9xe", "sckNjkzi"]' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'h1M6TkVs' \
    --namespace $AB_NAMESPACE \
    --dateTime '1975-06-26T00:00:00Z' \
    --goalCode 'lByG0Ltt' \
    --limit '56' \
    --offset '71' \
    --tags '["SgOvd4lY", "KJRBQdw5", "xIYE8xiJ"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'LRTWnRQR' \
    --index '52' \
    --namespace $AB_NAMESPACE \
    --goalCode 'j59Pn1KA' \
    --limit '81' \
    --offset '38' \
    --tags '["qUSMwJlm", "siJIt7Ga", "fbnSgwvA"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'naglrRVP' \
    --goalProgressionId 'F9Vvf0zf' \
    --limit '20' \
    --offset '19' \
    --sortBy 'updatedAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["l4ywAkhv", "52BF58QG", "1VgzyT4m"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE