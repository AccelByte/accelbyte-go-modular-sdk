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
    --keyword 'Y4wFr5x9' \
    --limit '88' \
    --offset '16' \
    --sortBy 'createdAt:desc' \
    --status 'INIT' \
    --tags '["XWQnV7xE", "r2rM5RtB", "qfCSvUC8"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 27, "assignmentRule": "CUSTOM", "code": "g2JYSVnA", "description": "RVO7gaXf", "endAfter": 1, "endDate": "1977-02-03T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "65Pp6kpD", "randomizedPerRotation": false, "repeatAfter": 37, "resetConfig": {"resetDate": 61, "resetDay": 63, "resetTime": "wYc0uEXg"}, "rotation": "DAILY", "startDate": "1998-07-22T00:00:00Z", "tags": ["tIjfo6rt", "fM1awOuf", "QCvK6chJ"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'HMjtdUwG' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'vuwYw0RA' \
    --limit '63' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'h9HlPkwX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'TqZ4zPQX' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 78, "assignmentRule": "RANDOMIZED", "description": "dV1Z65th", "endAfter": 94, "endDate": "1995-10-29T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "6Ig3eatf", "randomizedPerRotation": true, "repeatAfter": 43, "resetConfig": {"resetDate": 11, "resetDay": 55, "resetTime": "RRGhwpMK"}, "rotation": "NONE", "startDate": "1979-05-24T00:00:00Z", "tags": ["JLoOpVip", "P1PqgybX", "EBKsZoJv"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'LMxr6leP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'BZiaGcR3' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '69' \
    --sortBy 'updatedAt:asc' \
    --tags '["PYnQq3p0", "Lc57dCMv", "cfw1MpP1"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'cJcQafPA' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "VMJMroKp", "description": "olPQUKEk", "isActive": true, "name": "DADZwwzi", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "w9Y5RARd", "parameterType": "ACHIEVEMENT", "statCycleId": "eymsKYge", "targetValue": 0.5704563278109959}, {"matcher": "EQUAL", "parameterName": "j0RbdPyK", "parameterType": "ACHIEVEMENT", "statCycleId": "P87hH3NJ", "targetValue": 0.556009843010872}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "cj43v7Gf", "parameterType": "ACHIEVEMENT", "statCycleId": "PQbQnrpq", "targetValue": 0.31425615803378537}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "MOG4cm2i", "parameterType": "STATISTIC", "statCycleId": "CdU1eQrM", "targetValue": 0.3581918501870077}, {"matcher": "LESS_THAN", "parameterName": "4hp0ySGD", "parameterType": "STATISTIC_CYCLE", "statCycleId": "U2VB0QNP", "targetValue": 0.27893366118076257}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "OWwom28z", "parameterType": "STATISTIC", "statCycleId": "33ZnqS18", "targetValue": 0.9125045078497402}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "EbbyuywF", "parameterType": "STATISTIC", "statCycleId": "qMi4CIv5", "targetValue": 0.9472136529302724}, {"matcher": "GREATER_THAN", "parameterName": "xxKD4nfC", "parameterType": "STATISTIC", "statCycleId": "vHHIpNDi", "targetValue": 0.8323865087074469}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "VXPYK48f", "parameterType": "USERACCOUNT", "statCycleId": "GBwRyEwU", "targetValue": 0.953501384200062}]}], "rewards": [{"itemId": "eg1K0ZKi", "itemName": "enfCLavj", "qty": 0.7164188060477664, "type": "ENTITLEMENT"}, {"itemId": "kprA9oHl", "itemName": "9J6C2K6S", "qty": 0.8079231690103986, "type": "ENTITLEMENT"}, {"itemId": "aceNCcDE", "itemName": "LohyDI76", "qty": 0.6968868204536084, "type": "STATISTIC"}], "schedule": {"endTime": "1997-04-18T00:00:00Z", "order": 89, "startTime": "1992-09-03T00:00:00Z"}, "tags": ["n7Yy6rIg", "vg0NwspL", "h1OaRGgE"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '8FDD3mmr' \
    --code 'ByYjVIdH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode '4xxIhZdG' \
    --code '9yYqGndy' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "4YCln4Im", "isActive": true, "name": "sTdy25tG", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "UPdcoIT4", "parameterType": "ENTITLEMENT", "statCycleId": "0peRiVs5", "targetValue": 0.5856722708937603}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "r7SDYc6f", "parameterType": "ENTITLEMENT", "statCycleId": "Mg6FbUYM", "targetValue": 0.6317165728651564}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "KErlc0R0", "parameterType": "ENTITLEMENT", "statCycleId": "QMBGkFdg", "targetValue": 0.15108849666785495}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "L5EwlZ4O", "parameterType": "ENTITLEMENT", "statCycleId": "RoUeWtUJ", "targetValue": 0.631116029949646}, {"matcher": "LESS_THAN", "parameterName": "t1uMkjm9", "parameterType": "USERACCOUNT", "statCycleId": "JuAS0cVS", "targetValue": 0.08414539406493526}, {"matcher": "GREATER_THAN", "parameterName": "QX3A0HE3", "parameterType": "STATISTIC", "statCycleId": "G0xnWOQ0", "targetValue": 0.05270403090043563}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "ycxin5xl", "parameterType": "ACHIEVEMENT", "statCycleId": "AK7wU8Cp", "targetValue": 0.245055407418729}, {"matcher": "EQUAL", "parameterName": "4XgI0Vp5", "parameterType": "STATISTIC", "statCycleId": "xoSv96My", "targetValue": 0.6051537871845633}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "UtljDpyi", "parameterType": "ACHIEVEMENT", "statCycleId": "Jar1LnP4", "targetValue": 0.10519179208643026}]}], "rewards": [{"itemId": "dG4wN1YC", "itemName": "nwwplrLv", "qty": 0.6015809544289837, "type": "ENTITLEMENT"}, {"itemId": "CJbz4Tmb", "itemName": "NJWqkxFR", "qty": 0.25843194557266136, "type": "ENTITLEMENT"}, {"itemId": "yNL7Ne0p", "itemName": "BCMQ0Yfy", "qty": 0.8712974304622356, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1995-03-21T00:00:00Z", "order": 63, "startTime": "1972-06-26T00:00:00Z"}, "tags": ["jbWpllK4", "1McGZlRR", "X30QZrPR"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'J2fe36UR' \
    --code 'g8IbS4Q2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode '4CvVw9Qs' \
    --code 'xYfRJ2K8' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '84' \
    --userId 'LDRnSTmG' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'pueaLwdi' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'vX2ZrPFM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'TJ14RQzL' \
    --namespace $AB_NAMESPACE \
    --dateTime '1971-12-14T00:00:00Z' \
    --limit '51' \
    --offset '21' \
    --userId 'dMaApWer' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'yP9xtcGV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'HRx95NHz' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1973-11-18T00:00:00Z"}' \
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
    --body '{"appName": "9kyWPBUc", "extendType": "APP", "grpcServerAddress": "snWuHE1n"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "e2nKOpk6", "extendType": "CUSTOM", "grpcServerAddress": "n0479FGp"}' \
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
    --challengeCode '["md6F5ADE", "JpRcJ73k", "ATl9cVst"]' \
    --body '{"userIds": ["wILr0HDl", "SPPI3BDq", "Y0EVIIu2"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["l1YYS0FS", "ppE16Rpq", "DoWAgz3V"], "userId": "U5EgzVx5"}, {"rewardIds": ["iFLsAwHb", "q4GXcl1y", "EVmMF3dw"], "userId": "eZ63nJ5j"}, {"rewardIds": ["nMgnvSnk", "7SZEqvpv", "WKRvqYpZ"], "userId": "2KFu2F2p"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'SOXXmyxA' \
    --namespace $AB_NAMESPACE \
    --userId 'ybPdYA6N' \
    --body '{"goalCode": "tDODNu6s"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'pZXxo7od' \
    --namespace $AB_NAMESPACE \
    --userId 'EiaiN8JD' \
    --dateTime '1997-04-19T00:00:00Z' \
    --goalCode '2BqYPC2R' \
    --limit '6' \
    --offset '64' \
    --tags '["L1SiacnD", "mOMA07cy", "vSnZBykr"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'D5PhSOZZ' \
    --challengeCode 'MDYIRRkv' \
    --goalProgressionId 'JeK2W1rA' \
    --limit '84' \
    --offset '21' \
    --sortBy 'createdAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ruEH6fmz' \
    --body '{"rewardIDs": ["OT8m8AUW", "mijVplY6", "zHtwCqo6"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'anavunPw' \
    --limit '71' \
    --offset '14' \
    --sortBy 'updatedAt' \
    --status 'INIT' \
    --tags '["nF2srvAj", "loicJPqh", "2q6Ma3fl"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'oLPRYvtg' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '27' \
    --sortBy 'updatedAt' \
    --tags '["ezPh7Rfu", "laTj6kqG", "j8l4h5L0"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'MC8K9Sa3' \
    --code '2kzqmLHA' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'jXrLNF0v' \
    --namespace $AB_NAMESPACE \
    --dateTime '1992-11-16T00:00:00Z' \
    --limit '91' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'oD7EiBj6' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "EbaiEtgw"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["AsyZnmVz", "qwzyGyKV", "8KN7B6Ek"]' \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'MzMXg0iO' \
    --namespace $AB_NAMESPACE \
    --dateTime '1980-04-25T00:00:00Z' \
    --goalCode 'RDXTCRUq' \
    --limit '29' \
    --offset '74' \
    --tags '["IyxA1oS7", "ibHKqk4w", "OQpdfG6z"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'SdPXCdQE' \
    --index '47' \
    --namespace $AB_NAMESPACE \
    --goalCode 'GFGnd0P5' \
    --limit '34' \
    --offset '19' \
    --tags '["IYFsf2fY", "DCdnGv90", "5vkzH4mT"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'iBBQdXMK' \
    --goalProgressionId '7ihlVWCP' \
    --limit '15' \
    --offset '84' \
    --sortBy 'updatedAt:asc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["8jkWfr5H", "AGsvNnWT", "3LUUsKI9"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE