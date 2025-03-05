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
    --keyword 'Jaq2Jmnq' \
    --limit '12' \
    --offset '55' \
    --sortBy 'createdAt:asc' \
    --status 'TIED' \
    --tags '["ICojgbn8", "CEuvLjwe", "r7sFcUNH"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 30, "assignmentRule": "UNSCHEDULED", "code": "VOq5oJNL", "description": "d0VwOZSy", "endAfter": 18, "endDate": "1990-10-14T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "rHUv4JyR", "randomizedPerRotation": false, "repeatAfter": 38, "resetConfig": {"resetDate": 92, "resetDay": 74, "resetTime": "zwVEM5EI"}, "rotation": "NONE", "startDate": "1993-09-14T00:00:00Z", "tags": ["E9BBHYOM", "yZfj6Wy7", "IjzBTe26"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId '9zOQOc0t' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'JXkFUs48' \
    --limit '32' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode '8vk7ENsK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'WCns3ZO3' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 98, "assignmentRule": "RANDOMIZED", "description": "oC7jA4FN", "endAfter": 88, "endDate": "1972-08-10T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "tlCRV37t", "randomizedPerRotation": false, "repeatAfter": 93, "resetConfig": {"resetDate": 15, "resetDay": 8, "resetTime": "2hguhdum"}, "rotation": "MONTHLY", "startDate": "1984-04-30T00:00:00Z", "tags": ["VAr44vfw", "WUoziKvC", "IoRXK0Na"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'qhDhahnV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'tiFTIkL7' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '31' \
    --sortBy 'updatedAt:desc' \
    --tags '["NHetcTHO", "TXTGLXI3", "7BymiMYb"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'gPJcOY77' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Gu2MaxyR", "description": "qqxCg8dM", "isActive": false, "name": "3mEMvY4t", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "ChQbl3cH", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Ga72Htzc", "targetValue": 0.5478833164905287}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "J1pNGW30", "parameterType": "ENTITLEMENT", "statCycleId": "SOlpyq0x", "targetValue": 0.3642672101114802}, {"matcher": "GREATER_THAN", "parameterName": "GMMmfLav", "parameterType": "STATISTIC_CYCLE", "statCycleId": "dvBWnMb9", "targetValue": 0.18540043400741324}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "7HWs3wmP", "parameterType": "ACHIEVEMENT", "statCycleId": "OF0cX7ma", "targetValue": 0.43788101284244607}, {"matcher": "GREATER_THAN", "parameterName": "sLiMqqmt", "parameterType": "STATISTIC_CYCLE", "statCycleId": "d6wQZ4xH", "targetValue": 0.9254483014834401}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "b9E2RCzb", "parameterType": "ACHIEVEMENT", "statCycleId": "PRbr9Y1E", "targetValue": 0.2133767433403848}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "rQJpIyEZ", "parameterType": "ACHIEVEMENT", "statCycleId": "0C5vHBZ9", "targetValue": 0.429295320643733}, {"matcher": "LESS_THAN", "parameterName": "aPtu4DrV", "parameterType": "USERACCOUNT", "statCycleId": "2uLpc4NK", "targetValue": 0.739129530176256}, {"matcher": "LESS_THAN", "parameterName": "eADz0v8r", "parameterType": "USERACCOUNT", "statCycleId": "0CbE8V6W", "targetValue": 0.855659639483704}]}], "rewards": [{"itemId": "KL9hHdv9", "itemName": "VRFb9CfC", "qty": 0.5729660682421663, "type": "ENTITLEMENT"}, {"itemId": "oOTxKFUz", "itemName": "SVKJmmVZ", "qty": 0.7477913706642705, "type": "STATISTIC"}, {"itemId": "yztvxXZb", "itemName": "uXqHV109", "qty": 0.6702232274375038, "type": "STATISTIC"}], "schedule": {"endTime": "1986-12-29T00:00:00Z", "order": 76, "startTime": "1973-10-15T00:00:00Z"}, "tags": ["tizl1ViL", "PNBGaSGg", "5K3yYcNH"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'W4NtC2Bv' \
    --code 'xh8FXR6P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'hagIbbIu' \
    --code 'QRIkVCcq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6lGxfUDE", "isActive": false, "name": "U1ifdCBB", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "doK8TqlU", "parameterType": "STATISTIC", "statCycleId": "xTSBB2ot", "targetValue": 0.033037302766096066}, {"matcher": "LESS_THAN", "parameterName": "kJVgoO9g", "parameterType": "USERACCOUNT", "statCycleId": "6TsheHhr", "targetValue": 0.003829360012385097}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "aGTnBF1D", "parameterType": "ACHIEVEMENT", "statCycleId": "9cimy165", "targetValue": 0.9968844141303425}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "BSlyiJRR", "parameterType": "STATISTIC", "statCycleId": "lM1TraF3", "targetValue": 0.39021884283565467}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "FGPf10Yu", "parameterType": "ENTITLEMENT", "statCycleId": "ffIn4yso", "targetValue": 0.2380690352872309}, {"matcher": "GREATER_THAN", "parameterName": "AuE6a4lu", "parameterType": "STATISTIC", "statCycleId": "cUpeK1SR", "targetValue": 0.8212461616242073}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "LH7vd7eN", "parameterType": "STATISTIC", "statCycleId": "3GJ2nqaD", "targetValue": 0.9062888047296331}, {"matcher": "GREATER_THAN", "parameterName": "8ly2FvcS", "parameterType": "USERACCOUNT", "statCycleId": "kpvyMdx4", "targetValue": 0.17336554469348908}, {"matcher": "GREATER_THAN", "parameterName": "BuRYe7WO", "parameterType": "ACHIEVEMENT", "statCycleId": "9G4B9Prx", "targetValue": 0.311195392907055}]}], "rewards": [{"itemId": "HwDERFcb", "itemName": "9uf0lTrR", "qty": 0.5445611256238829, "type": "STATISTIC"}, {"itemId": "nvpmAM0r", "itemName": "c56mPhMl", "qty": 0.26393155662277856, "type": "ENTITLEMENT"}, {"itemId": "N2hXDT9k", "itemName": "rLOZNJbm", "qty": 0.23616904862709587, "type": "STATISTIC"}], "schedule": {"endTime": "1975-03-09T00:00:00Z", "order": 33, "startTime": "1987-07-11T00:00:00Z"}, "tags": ["VjS298ep", "wvfeTafT", "nikDSMPa"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'u7woKcUY' \
    --code 'sJusXEs8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode 'tIHS6v0k' \
    --code 'AyCUCyvI' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '54' \
    --userId 'GlKuWsiq' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'MKhIz4VX' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '7NyIR8Wc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'rCTIO4lE' \
    --namespace $AB_NAMESPACE \
    --dateTime '1999-05-16T00:00:00Z' \
    --limit '44' \
    --offset '35' \
    --userId 'WEY7dwtF' \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'roGkVhu7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'orcesUjS' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1984-10-20T00:00:00Z"}' \
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
    --body '{"appName": "tWToQQWH", "extendType": "APP", "grpcServerAddress": "0TgpHUMz"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "4zezw1k0", "extendType": "APP", "grpcServerAddress": "PNIlRjWE"}' \
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
    --body '{"userIds": ["l88djdCf", "KGuPXOv2", "sjrc6Vmj"]}' \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["Xf7q1vi8", "RcIJ3ff3", "rMjsSjhk"], "userId": "OrAFOQTi"}, {"rewardIds": ["3mC8Fu8K", "KmKYZI4I", "c3VsBgGv"], "userId": "lxVRGYtG"}, {"rewardIds": ["Y1lTSoeB", "0x4tKFZf", "OPB7ytMx"], "userId": "HwHfv0Yu"}]' \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode '7ra7PBVn' \
    --namespace $AB_NAMESPACE \
    --userId 'U5nwdklW' \
    --body '{"goalCode": "V10pM4Cb"}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'fGmuDB4B' \
    --namespace $AB_NAMESPACE \
    --userId 'Oiebgme4' \
    --dateTime '1985-01-24T00:00:00Z' \
    --goalCode 'aItDsGVy' \
    --limit '20' \
    --offset '61' \
    --tags '["cYagYSE2", "VoY5hYGt", "aFRRobwm"]' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '7VSrg2Pw' \
    --challengeCode 'J5h9f1j2' \
    --goalProgressionId 'RdGzPplu' \
    --limit '28' \
    --offset '40' \
    --sortBy 'createdAt' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'H3B1qcqL' \
    --body '{"rewardIDs": ["S4HxL4o5", "oAm7fscb", "sEOD5eZm"]}' \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'hDD4jrJL' \
    --limit '37' \
    --offset '17' \
    --sortBy 'updatedAt' \
    --status 'INIT' \
    --tags '["9XoZpcqs", "kChbulFl", "ekvF06c6"]' \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode '3Cj2Nf3o' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '87' \
    --sortBy 'updatedAt' \
    --tags '["4eQc9K2h", "zFRglVaN", "0iJyVOcC"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'vtHfMoyw' \
    --code 'vhwHKTik' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode '4ZX8fXpb' \
    --namespace $AB_NAMESPACE \
    --dateTime '1997-10-20T00:00:00Z' \
    --limit '12' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode '2b7hYIL2' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "VzfjsSSZ"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'iRiI6t22' \
    --namespace $AB_NAMESPACE \
    --dateTime '1976-11-02T00:00:00Z' \
    --goalCode 'C73kIvA3' \
    --limit '39' \
    --offset '26' \
    --tags '["nrOfAHgP", "QQJQOXGi", "9AFKtb7E"]' \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode '8KSBJXXM' \
    --index '57' \
    --namespace $AB_NAMESPACE \
    --goalCode 'RhtBjTkP' \
    --limit '76' \
    --offset '63' \
    --tags '["l3xIFIrk", "n69JwN9E", "wl6fnNjn"]' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode 'VfxeYgmS' \
    --goalProgressionId 'CxNEzhKN' \
    --limit '93' \
    --offset '61' \
    --sortBy 'createdAt:desc' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["IKSs3eu6", "kp16MbXq", "peyM8IS0"]}' \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE