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
    --keyword 'qzhVM7vR' \
    --limit '89' \
    --offset '66' \
    --sortBy 'createdAt' \
    --status 'RETIRED' \
    --tags '["cqytEzOl", "GhhhzKDH", "qnYrdXXE"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 90, "assignmentRule": "FIXED", "code": "j1nG3pAG", "description": "4v1Q1Mcz", "endAfter": 83, "endDate": "1982-11-13T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "kDjZMeii", "randomizedPerRotation": false, "repeatAfter": 59, "resetConfig": {"resetDate": 24, "resetDay": 57, "resetTime": "71Gp9mQs"}, "rotation": "MONTHLY", "startDate": "1982-04-14T00:00:00Z", "tags": ["Tm0Xdqj1", "dIHmHUAy", "5zbNQTDs"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'jhjNkDYI' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'jkcLz8ts' \
    --limit '93' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'uYSv0xd2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'xutKUp0a' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 43, "assignmentRule": "CUSTOM", "description": "3sUQup8R", "endAfter": 32, "endDate": "1986-08-25T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "f5UzmkN4", "randomizedPerRotation": false, "repeatAfter": 55, "resetConfig": {"resetDate": 91, "resetDay": 88, "resetTime": "J9iLPls8"}, "rotation": "WEEKLY", "startDate": "1975-08-21T00:00:00Z", "tags": ["zYslPJSQ", "nxxQjoFB", "uVLx1gHa"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'XCYvkBaD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'nMOothyh' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '65' \
    --sortBy 'createdAt' \
    --tags '["PoMEdwcs", "4luVYlJd", "VGi0wpLv"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'BjrzLZfT' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uA9N0TnZ", "description": "Jf5r5iRV", "isActive": true, "name": "q9bWnuVW", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "eIxfys2i", "parameterType": "USERACCOUNT", "statCycleId": "MMxL8mjD", "targetValue": 0.4604736688436659}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "OEFIzZMW", "parameterType": "ACHIEVEMENT", "statCycleId": "RK6HOzdT", "targetValue": 0.3704004956625364}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "NGu8ImnQ", "parameterType": "ENTITLEMENT", "statCycleId": "6c0rSr5K", "targetValue": 0.25810476118585635}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "3wFdQbwx", "parameterType": "STATISTIC_CYCLE", "statCycleId": "nk0welN8", "targetValue": 0.3777670030431959}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "MLWaaiHZ", "parameterType": "ACHIEVEMENT", "statCycleId": "Q2f90gIH", "targetValue": 0.6841327854449647}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "obHt2MHA", "parameterType": "STATISTIC_CYCLE", "statCycleId": "14ngdMLk", "targetValue": 0.8402090280385335}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "vKcX0cIq", "parameterType": "STATISTIC", "statCycleId": "0YYAcd6b", "targetValue": 0.41568691704347505}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "Mn1DU5Ty", "parameterType": "ENTITLEMENT", "statCycleId": "dJNTaQKo", "targetValue": 0.39152971958399374}, {"matcher": "EQUAL", "parameterName": "x3vEGmn4", "parameterType": "STATISTIC_CYCLE", "statCycleId": "GSx3Emih", "targetValue": 0.38052640123286197}]}], "rewards": [{"itemId": "vleW20cH", "itemName": "IS0ZaltJ", "qty": 0.7572742889514428, "type": "STATISTIC"}, {"itemId": "aoYZzWAy", "itemName": "URXxh9Xn", "qty": 0.8060855487198422, "type": "ENTITLEMENT"}, {"itemId": "gJpUYh8H", "itemName": "m2KZSZnj", "qty": 0.18095592134394378, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1973-08-21T00:00:00Z", "order": 9, "startTime": "1994-06-28T00:00:00Z"}, "tags": ["sO4zjM1m", "3AsaI27Z", "TKGx3tPu"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '5Es1x2VS' \
    --code 'hiZpDiAX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'v7dTc6cN' \
    --code 'SZTOFK74' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8TODEA8g", "isActive": true, "name": "2JgNv3pz", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "eXEyzE4x", "parameterType": "ACHIEVEMENT", "statCycleId": "OHy0omeK", "targetValue": 0.20654005526751384}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "OejEaXmG", "parameterType": "STATISTIC", "statCycleId": "Qrwsm2nh", "targetValue": 0.7718153401357656}, {"matcher": "GREATER_THAN", "parameterName": "pyyfsS3O", "parameterType": "ACHIEVEMENT", "statCycleId": "tIbCyrBp", "targetValue": 0.17024988929513107}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "9RpMREtA", "parameterType": "ACHIEVEMENT", "statCycleId": "QH16Jm7q", "targetValue": 0.845988508486015}, {"matcher": "GREATER_THAN", "parameterName": "iChJqkmg", "parameterType": "STATISTIC_CYCLE", "statCycleId": "0P79f45l", "targetValue": 0.5772047776856688}, {"matcher": "EQUAL", "parameterName": "SeyCDIgC", "parameterType": "ENTITLEMENT", "statCycleId": "JB0amVZ5", "targetValue": 0.49515269839267084}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "bJsWbCqp", "parameterType": "STATISTIC", "statCycleId": "EK3PXy7r", "targetValue": 0.07415360186119535}, {"matcher": "GREATER_THAN", "parameterName": "TVBFJD7f", "parameterType": "ACHIEVEMENT", "statCycleId": "K966p5ZJ", "targetValue": 0.5550790608394272}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "SfCVM4gL", "parameterType": "ENTITLEMENT", "statCycleId": "fRyzNUqZ", "targetValue": 0.4104433928519817}]}], "rewards": [{"itemId": "ZXc1mCKq", "itemName": "GzhyB6Uk", "qty": 0.763874849727002, "type": "STATISTIC"}, {"itemId": "lCb3GhfI", "itemName": "ywQJRWDQ", "qty": 0.5779765347599036, "type": "STATISTIC"}, {"itemId": "Ym83pc2M", "itemName": "243Ccupv", "qty": 0.22943436774320736, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1991-07-21T00:00:00Z", "order": 0, "startTime": "1973-03-28T00:00:00Z"}, "tags": ["XZQqLAM3", "MkVievf6", "klTKqak2"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'odyWcGgu' \
    --code 'ouy9nk2n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'JQUDYgXu' \
    --code 'EmCmuipA' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '68' \
    --userId 'qPFo9aXj' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode '6WUtevqb' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '5U50piu9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'RlYElDiM' \
    --namespace $AB_NAMESPACE \
    --dateTime '1993-08-08T00:00:00Z' \
    --limit '75' \
    --offset '65' \
    --userId 'Gxmuz9tD' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'SfAJhSNi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'v83dR2Qm' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1999-03-09T00:00:00Z"}' \
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
    --body '{"appName": "irczZafT", "extendType": "CUSTOM", "grpcServerAddress": "vEzhs5oh"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "6xd0sCKn", "extendType": "APP", "grpcServerAddress": "ZgkXfm0f"}' \
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
    --body '{"userIds": ["m2s1Q5kg", "kDVirNtw", "hTYCNXmB"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["mWY9Yl4o", "OOWW7rYC", "zrU0Jale"], "userId": "zBPUZOv6"}, {"rewardIds": ["6fngm2e7", "7YjAWMS5", "1ebj6v7I"], "userId": "8jmkSJiz"}, {"rewardIds": ["yUqbz5Q9", "9nhDDMNn", "4hp8pbzP"], "userId": "bjM2la2I"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode '9fax9ADQ' \
    --namespace $AB_NAMESPACE \
    --userId 'mi66J4or' \
    --body '{"goalCode": "D8wstnZj"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'UrZTZLEr' \
    --namespace $AB_NAMESPACE \
    --userId 'Ah9djuHB' \
    --dateTime '1987-05-12T00:00:00Z' \
    --goalCode 'gmbifg3h' \
    --limit '59' \
    --offset '81' \
    --tags '["ktlfWn27", "qqTXzzvG", "zZnUumEr"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 's52ZZP0o' \
    --challengeCode 'CVl7mTzM' \
    --goalProgressionId 'Vk7TmhS6' \
    --limit '33' \
    --offset '29' \
    --sortBy 'updatedAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Ceu39GZv' \
    --body '{"rewardIDs": ["QYFbKmqZ", "jzeIiUM9", "SglYJ2Js"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'CgJiNSi9' \
    --limit '92' \
    --offset '76' \
    --sortBy 'createdAt' \
    --status 'INIT' \
    --tags '["eKmdRwWb", "6tHPQt67", "1CLgoVN1"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode '7V3R6OWc' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '48' \
    --sortBy 'createdAt:asc' \
    --tags '["k3UGBAlL", "dIRI728e", "D68Y6Xm8"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'vITnGPc3' \
    --code 'fOQ5s6hG' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode '0KgaH685' \
    --namespace $AB_NAMESPACE \
    --dateTime '1988-10-19T00:00:00Z' \
    --limit '5' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'QbFTByso' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "L7yJ1C11"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'nFoYRkz9' \
    --namespace $AB_NAMESPACE \
    --dateTime '1980-06-13T00:00:00Z' \
    --goalCode 'Sqfsrfz0' \
    --limit '99' \
    --offset '80' \
    --tags '["p63sonEV", "2MY89vFY", "14ZnYOBJ"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'uvdGX8MZ' \
    --index '58' \
    --namespace $AB_NAMESPACE \
    --goalCode 'I4yhSvVM' \
    --limit '8' \
    --offset '46' \
    --tags '["AvVLFwZL", "6p7ZIClQ", "7qF1XATb"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'Vbzcw0BP' \
    --goalProgressionId 'emwKVJBM' \
    --limit '51' \
    --offset '63' \
    --sortBy 'createdAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["YU621j9K", "UEHSdD94", "mLHrL4fO"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE