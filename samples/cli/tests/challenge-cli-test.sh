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
echo "1..34"

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
    --limit '68' \
    --offset '27' \
    --sortBy 'VwOE4Rzb' \
    --status 'TIED' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 52, "assignmentRule": "CUSTOM", "code": "RsYk8oOp", "description": "SzW5olcq", "endAfter": 71, "endDate": "1998-08-30T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "hS3FRvJP", "randomizedPerRotation": false, "repeatAfter": 51, "resetConfig": {"resetDate": 40, "resetDay": 69, "resetTime": "qZWH06dS"}, "rotation": "NONE", "startDate": "1996-01-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId '24CQvG9w' \
    --limit '2' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'nQqLKl9o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode '7ox6t9MN' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 81, "assignmentRule": "CUSTOM", "description": "Hp2moZWV", "endAfter": 50, "endDate": "1988-12-23T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "ugYwNBX6", "randomizedPerRotation": true, "repeatAfter": 22, "resetConfig": {"resetDate": 80, "resetDay": 40, "resetTime": "O42XDk4m"}, "rotation": "MONTHLY", "startDate": "1978-05-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'rexXBOgq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'l8MiYun5' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '81' \
    --sortBy 'ldZjh2HR' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'b9mXR6fi' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tvwP5Bbj", "description": "IPNmYLpp", "isActive": false, "name": "h8X8KfFu", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "ZnRS3xci", "parameterType": "ACHIEVEMENT", "statCycleId": "Vh6ql4nV", "targetValue": 0.8332083495838998}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "RnSinU1A", "parameterType": "ENTITLEMENT", "statCycleId": "M7I4pwaF", "targetValue": 0.15417615585197397}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "zo9dL4BZ", "parameterType": "ACHIEVEMENT", "statCycleId": "Ipw4jsKI", "targetValue": 0.18134659542162868}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "aRmy1DMY", "parameterType": "STATISTIC_CYCLE", "statCycleId": "J31PXDl2", "targetValue": 0.4544402230843335}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "i5uWjxrB", "parameterType": "STATISTIC", "statCycleId": "n088hzK8", "targetValue": 0.9402141944898873}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "WVSpxB7b", "parameterType": "ENTITLEMENT", "statCycleId": "4cn5m6Ia", "targetValue": 0.9095448447654157}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "cppwSRcB", "parameterType": "STATISTIC_CYCLE", "statCycleId": "4DqLubHb", "targetValue": 0.6422925180493044}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "EmwxqsRo", "parameterType": "STATISTIC_CYCLE", "statCycleId": "j89ET7KS", "targetValue": 0.06691492682914191}, {"matcher": "LESS_THAN", "parameterName": "uOoTdyZx", "parameterType": "USERACCOUNT", "statCycleId": "GtokBPWe", "targetValue": 0.30242223301917204}]}], "rewards": [{"itemId": "SGlPLB2L", "itemName": "nOBRyv9Z", "qty": 0.9470316620435082, "type": "ENTITLEMENT"}, {"itemId": "LIyvDHkS", "itemName": "0CwmtnCe", "qty": 0.4181222208722335, "type": "ENTITLEMENT"}, {"itemId": "cKTwFf60", "itemName": "00BH15UH", "qty": 0.5811003495960233, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1978-11-08T00:00:00Z", "order": 20, "startTime": "1992-03-11T00:00:00Z"}, "tags": ["PWWftxnk", "1RH6mqPp", "qQvPzQng"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode '5U9G0deP' \
    --code 'HssSeLRR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode 'c3q6QRHy' \
    --code 'frDsHRla' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7lZnM5oI", "isActive": false, "name": "7eVoiwRQ", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "dNvTmuOb", "parameterType": "ACHIEVEMENT", "statCycleId": "8n5oyDd3", "targetValue": 0.9937680009935203}, {"matcher": "GREATER_THAN", "parameterName": "HW5ve9gJ", "parameterType": "ACHIEVEMENT", "statCycleId": "VqqFb9SR", "targetValue": 0.23820698720437594}, {"matcher": "GREATER_THAN", "parameterName": "uz8nGYCP", "parameterType": "STATISTIC_CYCLE", "statCycleId": "2MCGIkJh", "targetValue": 0.07782018838574545}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "YikMnrOp", "parameterType": "USERACCOUNT", "statCycleId": "1IALzeFT", "targetValue": 0.5217594511753947}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "c7hfLF81", "parameterType": "ACHIEVEMENT", "statCycleId": "SvGWAhjL", "targetValue": 0.5061692421686843}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "p0AKbNTL", "parameterType": "STATISTIC_CYCLE", "statCycleId": "KDddG2Ma", "targetValue": 0.3355101725309414}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "pD17DExc", "parameterType": "ENTITLEMENT", "statCycleId": "bXwIE5VU", "targetValue": 0.8830231494319036}, {"matcher": "GREATER_THAN", "parameterName": "Zqb96BeZ", "parameterType": "STATISTIC", "statCycleId": "bNHBPL1s", "targetValue": 0.8030203284752854}, {"matcher": "LESS_THAN", "parameterName": "I8tkhTF0", "parameterType": "ACHIEVEMENT", "statCycleId": "8y3gLa5m", "targetValue": 0.8772061018882488}]}], "rewards": [{"itemId": "AGzqdevc", "itemName": "IJO2ckiJ", "qty": 0.3938124738403065, "type": "STATISTIC"}, {"itemId": "QgIQpIsV", "itemName": "2dCjr6QF", "qty": 0.37229009971646065, "type": "STATISTIC"}, {"itemId": "YNWYPfx9", "itemName": "78ZIcSng", "qty": 0.557174070290454, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1971-12-18T00:00:00Z", "order": 55, "startTime": "1979-04-30T00:00:00Z"}, "tags": ["PYGtfC42", "dh3cfwAi", "CLLKJwhN"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'UiTpOOdt' \
    --code '1axVajwC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'T6AIj2m1' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPeriods' test.out

#- 14 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode '7UTe3Vt7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminRandomizeChallenge' test.out

#- 15 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'E9s86sVb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteTiedChallenge' test.out

#- 16 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'xqidz7rr' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "STOP", "endDate": "1994-07-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateTiedChallengeSchedule' test.out

#- 17 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAssignmentPlugin' test.out

#- 18 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "xrMzgOMO", "extendType": "CUSTOM", "grpcServerAddress": "4ZI83QDQ"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateAssignmentPlugin' test.out

#- 19 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "nIFskGVO", "extendType": "CUSTOM", "grpcServerAddress": "xuHehfjI"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateAssignmentPlugin' test.out

#- 20 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteAssignmentPlugin' test.out

#- 21 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["560uABRm", "geU8Qg75", "9TKNRD4K"]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminEvaluateProgress' test.out

#- 22 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["E9SgYlCC", "I7SFiaaJ", "OL9llMDE"], "userId": "E6Da35bj"}, {"rewardIds": ["qoOYIv2H", "HGl5kCiz", "d5AC5IDD"], "userId": "mk3Xv7zZ"}, {"rewardIds": ["7Eu8Ht0S", "p0ND5Yoy", "KVnmmLMF"], "userId": "ggZuOz4Q"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminClaimUsersRewards' test.out

#- 23 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode '0IDuYUTO' \
    --namespace $AB_NAMESPACE \
    --userId 'kdJbCqqz' \
    --body '{"goalCode": "B3Gntw5W"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminClaimUserRewardsByGoalCode' test.out

#- 24 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'zXWibMiN' \
    --namespace $AB_NAMESPACE \
    --userId 'WCAvghx5' \
    --dateTime '1991-02-03T00:00:00Z' \
    --goalCode 'GIjTjM6G' \
    --limit '69' \
    --offset '11' \
    --tags '["2XGOlBox", "H3xc4KoG", "reyAv7Uq"]' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserProgression' test.out

#- 25 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'rNyaIDJ4' \
    --limit '95' \
    --offset '83' \
    --sortBy '0Lt5ohyS' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetUserRewards' test.out

#- 26 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'SPDXCE7f' \
    --body '{"rewardIDs": ["U8tR2oTr", "xwOSOPKw", "Z3h76eYq"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewards' test.out

#- 27 GetChallenges
samples/cli/sample-apps Challenge getChallenges \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '47' \
    --sortBy 'KED6Q75v' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 27 'GetChallenges' test.out

#- 28 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'F5WcEz2J' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '30' \
    --tags '["13XOBJ39", "bzcXarGy", "Jcb7U7d4"]' \
    > test.out 2>&1
eval_tap $? 28 'PublicGetScheduledGoals' test.out

#- 29 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'PDQG1tjG' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "YfwNYSFB"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicClaimUserRewardsByGoalCode' test.out

#- 30 EvaluateMyProgress
samples/cli/sample-apps Challenge evaluateMyProgress \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'EvaluateMyProgress' test.out

#- 31 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'iQUSUQ9n' \
    --namespace $AB_NAMESPACE \
    --dateTime '1998-02-26T00:00:00Z' \
    --goalCode 'GjgqJcD6' \
    --limit '92' \
    --offset '6' \
    --tags '["rJ29pivL", "VOixxpKk", "e9s7KaIT"]' \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserProgression' test.out

#- 32 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'OfIhQXYD' \
    --index '75' \
    --namespace $AB_NAMESPACE \
    --goalCode '3S3AEr44' \
    --limit '25' \
    --offset '49' \
    --tags '["myOgAmys", "QTJlOzVJ", "1U3XPPwb"]' \
    > test.out 2>&1
eval_tap $? 32 'PublicGetPastUserProgression' test.out

#- 33 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '70' \
    --sortBy 'rtQ4j6Lx' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 33 'PublicGetUserRewards' test.out

#- 34 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["pBQyfuPK", "UpOKwkVT", "QO7ZiLWi"]}' \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE