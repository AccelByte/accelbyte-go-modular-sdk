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
echo "1..41"

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
    --keyword 'Kk6o2dDk' \
    --limit '64' \
    --offset '43' \
    --sortBy 'name:desc' \
    --status 'INIT' \
    --tags '["Nsrb9tpH", "KkSizlxT", "tOkQCj6j"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
samples/cli/sample-apps Challenge adminCreateChallenge \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 32, "assignmentRule": "UNSCHEDULED", "code": "uFdm6N2M", "description": "w8p8YVRn", "endAfter": 83, "endDate": "1999-02-19T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "T97wcf2Y", "randomizedPerRotation": false, "repeatAfter": 26, "resetConfig": {"resetDate": 63, "resetDay": 78, "resetTime": "P5ujZvGN"}, "rotation": "NONE", "startDate": "1981-03-29T00:00:00Z", "tags": ["p5DGrrNV", "2U8Gw9H9", "9tuqYQC4"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
samples/cli/sample-apps Challenge adminGetItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'walqJZW3' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
samples/cli/sample-apps Challenge adminGetActiveChallenges \
    --namespace $AB_NAMESPACE \
    --userId 'E50J8jre' \
    --limit '82' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
samples/cli/sample-apps Challenge adminGetChallenge \
    --challengeCode 'GRAuX93u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
samples/cli/sample-apps Challenge adminUpdateChallenge \
    --challengeCode 'EzwCg4sp' \
    --namespace $AB_NAMESPACE \
    --body '{"activeGoalsPerRotation": 86, "assignmentRule": "FIXED", "description": "xCEwNRGq", "endAfter": 7, "endDate": "1995-10-25T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "Br8UVIdq", "randomizedPerRotation": true, "repeatAfter": 70, "resetConfig": {"resetDate": 66, "resetDay": 87, "resetTime": "FkesWgOW"}, "rotation": "DAILY", "startDate": "1975-01-07T00:00:00Z", "tags": ["eE1z80Wl", "H2RUt6z1", "Bs7LeRzA"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
samples/cli/sample-apps Challenge adminDeleteChallenge \
    --challengeCode 'ij7PvZAm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
samples/cli/sample-apps Challenge adminGetGoals \
    --challengeCode 'JDk1TJbk' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '10' \
    --sortBy 'updatedAt' \
    --tags '["PsH5H88X", "keFhdEiw", "eFxl9qrG"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
samples/cli/sample-apps Challenge adminCreateGoal \
    --challengeCode 'b0oB3ocm' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "l2tx25IO", "description": "1hjNu6Tm", "isActive": false, "name": "qaG5kzgO", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "nxD3lyqE", "matcher": "GREATER_THAN_EQUAL", "parameterName": "BAggT0g9", "parameterType": "STATISTIC_CYCLE", "statCycleId": "iv3O2rla", "targetValue": 0.46468547744488187}, {"id": "cGuuBoC3", "matcher": "EQUAL", "parameterName": "kIIQUS8z", "parameterType": "ACHIEVEMENT", "statCycleId": "YX7XtRZA", "targetValue": 0.4851965845111825}, {"id": "8fukTl80", "matcher": "LESS_THAN_EQUAL", "parameterName": "s1tPS9RG", "parameterType": "USERACCOUNT", "statCycleId": "X3vj5PTp", "targetValue": 0.8082924478464308}]}, {"operator": "AND", "predicates": [{"id": "56gg8zTU", "matcher": "GREATER_THAN_EQUAL", "parameterName": "jP9ATWw1", "parameterType": "ACHIEVEMENT", "statCycleId": "aULZKhOq", "targetValue": 0.7843366883960771}, {"id": "hSyab0Ya", "matcher": "GREATER_THAN_EQUAL", "parameterName": "ldmfiYGR", "parameterType": "STATISTIC_CYCLE", "statCycleId": "vIJ1qQWJ", "targetValue": 0.22275210805773793}, {"id": "b0ZG20aF", "matcher": "EQUAL", "parameterName": "ppbpLkHR", "parameterType": "STATISTIC_CYCLE", "statCycleId": "AuZZVbDZ", "targetValue": 0.10362252061117294}]}, {"operator": "AND", "predicates": [{"id": "9yD8oR8S", "matcher": "EQUAL", "parameterName": "so14NbWF", "parameterType": "ENTITLEMENT", "statCycleId": "jgC3Y0je", "targetValue": 0.4113018219394682}, {"id": "BAmeFTHm", "matcher": "EQUAL", "parameterName": "dLzW52pq", "parameterType": "STATISTIC", "statCycleId": "ahOvZR5O", "targetValue": 0.7869809005191164}, {"id": "Jbusb3vT", "matcher": "LESS_THAN_EQUAL", "parameterName": "Wn3cNxy4", "parameterType": "STATISTIC_CYCLE", "statCycleId": "21fCQeyV", "targetValue": 0.6707331383451225}]}], "rewards": [{"itemId": "eBlxFWWX", "itemName": "yDb2hKBT", "qty": 0.7790598387976004, "type": "ENTITLEMENT"}, {"itemId": "xj2fmLO0", "itemName": "6XNzeHMM", "qty": 0.3867255399133369, "type": "STATISTIC"}, {"itemId": "zJkmzokJ", "itemName": "vYWM4FRC", "qty": 0.05061996624396281, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1971-03-24T00:00:00Z", "order": 33, "startTime": "1977-04-15T00:00:00Z"}, "tags": ["zZUVz6rK", "LYQDrzry", "KKj6r3SE"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
samples/cli/sample-apps Challenge adminGetGoal \
    --challengeCode 'MzJTz3Y7' \
    --code 'w8fmRmtQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
samples/cli/sample-apps Challenge adminUpdateGoals \
    --challengeCode '10El0q0B' \
    --code 'csQLMLiU' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JFUsXFZQ", "isActive": false, "name": "L1xtJKOJ", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "kEtMSJRZ", "matcher": "EQUAL", "parameterName": "sVM9otrq", "parameterType": "STATISTIC", "statCycleId": "W6AN5sSy", "targetValue": 0.4751886123678253}, {"id": "0XBux7r6", "matcher": "GREATER_THAN_EQUAL", "parameterName": "ZFMiOAGq", "parameterType": "ENTITLEMENT", "statCycleId": "01CWbyUR", "targetValue": 0.8524511411897497}, {"id": "qrg16sRo", "matcher": "EQUAL", "parameterName": "ChnLqbl1", "parameterType": "ACHIEVEMENT", "statCycleId": "0CXIpe67", "targetValue": 0.47628590297942697}]}, {"operator": "AND", "predicates": [{"id": "ZiKEqxvh", "matcher": "GREATER_THAN_EQUAL", "parameterName": "IuRyDZvf", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Jf4i3wfE", "targetValue": 0.32584154581007707}, {"id": "CojWZquy", "matcher": "GREATER_THAN", "parameterName": "nYJRspCz", "parameterType": "STATISTIC", "statCycleId": "cush4VCq", "targetValue": 0.6791499712479524}, {"id": "5s1YLslH", "matcher": "LESS_THAN_EQUAL", "parameterName": "877RuO7t", "parameterType": "USERACCOUNT", "statCycleId": "1yZT6XuY", "targetValue": 0.7684597445267602}]}, {"operator": "AND", "predicates": [{"id": "2UuIj9W6", "matcher": "LESS_THAN", "parameterName": "Rp612Q36", "parameterType": "ACHIEVEMENT", "statCycleId": "3OwBq1ae", "targetValue": 0.278411200789216}, {"id": "jSOeKcB3", "matcher": "LESS_THAN_EQUAL", "parameterName": "hi3ATnQD", "parameterType": "STATISTIC_CYCLE", "statCycleId": "KpFHqacC", "targetValue": 0.7103325035821528}, {"id": "MKdCfK5g", "matcher": "LESS_THAN", "parameterName": "C0KDJ9Of", "parameterType": "ACHIEVEMENT", "statCycleId": "P7TgGCn9", "targetValue": 0.5000648871387385}]}], "rewards": [{"itemId": "mfK7W1cR", "itemName": "QA5WKkWo", "qty": 0.7270981893125928, "type": "ENTITLEMENT"}, {"itemId": "IvyNvs7k", "itemName": "vTfYM6IA", "qty": 0.822107358935591, "type": "ENTITLEMENT"}, {"itemId": "BFXaM3nI", "itemName": "BuKKeiBZ", "qty": 0.506881601247268, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1993-12-23T00:00:00Z", "order": 0, "startTime": "1973-07-22T00:00:00Z"}, "tags": ["g7GW52cZ", "kJfOg0Bi", "aoGW90F3"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
samples/cli/sample-apps Challenge adminDeleteGoal \
    --challengeCode 'VbOPoFvm' \
    --code '4hLFgX8o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
samples/cli/sample-apps Challenge adminListSchedulesByGoal \
    --challengeCode '7uTFmbuO' \
    --code 'ulmKGVk5' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '49' \
    --userId 'VUtdRzvq' \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminMoveGoalToSlot
samples/cli/sample-apps Challenge adminMoveGoalToSlot \
    --challengeCode 'WJnTE46O' \
    --code 'C4SU5ZAB' \
    --namespace $AB_NAMESPACE \
    --body '{"slotIndex": 85}' \
    > test.out 2>&1
eval_tap $? 15 'AdminMoveGoalToSlot' test.out

#- 16 AdminGetPeriods
samples/cli/sample-apps Challenge adminGetPeriods \
    --challengeCode 'FsLfsAq8' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetPeriods' test.out

#- 17 AdminRandomizeChallenge
samples/cli/sample-apps Challenge adminRandomizeChallenge \
    --challengeCode 'gh2JgK9J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminRandomizeChallenge' test.out

#- 18 AdminListSchedules
samples/cli/sample-apps Challenge adminListSchedules \
    --challengeCode 'xVQh1X2b' \
    --namespace $AB_NAMESPACE \
    --dateTime '1974-07-21T00:00:00Z' \
    --limit '42' \
    --offset '18' \
    --userId 'd0jkvV9I' \
    > test.out 2>&1
eval_tap $? 18 'AdminListSchedules' test.out

#- 19 AdminGetChallengeSlots
samples/cli/sample-apps Challenge adminGetChallengeSlots \
    --challengeCode '3XbUFQhw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminGetChallengeSlots' test.out

#- 20 AdminDeleteTiedChallenge
samples/cli/sample-apps Challenge adminDeleteTiedChallenge \
    --challengeCode 'OFf0WW3A' \
    --namespace $AB_NAMESPACE \
    --safeDelete 'PkpZI9vi' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTiedChallenge' test.out

#- 21 AdminUpdateTiedChallengeSchedule
samples/cli/sample-apps Challenge adminUpdateTiedChallengeSchedule \
    --challengeCode 'l1H23Ek9' \
    --namespace $AB_NAMESPACE \
    --body '{"action": "ACCELERATE", "endDate": "1987-08-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateTiedChallengeSchedule' test.out

#- 22 AdminGetAssignmentPlugin
samples/cli/sample-apps Challenge adminGetAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetAssignmentPlugin' test.out

#- 23 AdminUpdateAssignmentPlugin
samples/cli/sample-apps Challenge adminUpdateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "pU4ki8AS", "extendType": "APP", "grpcServerAddress": "jrA8rgzT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdateAssignmentPlugin' test.out

#- 24 AdminCreateAssignmentPlugin
samples/cli/sample-apps Challenge adminCreateAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "Rxvlu7SE", "extendType": "APP", "grpcServerAddress": "0kSb7QPU"}' \
    > test.out 2>&1
eval_tap $? 24 'AdminCreateAssignmentPlugin' test.out

#- 25 AdminDeleteAssignmentPlugin
samples/cli/sample-apps Challenge adminDeleteAssignmentPlugin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteAssignmentPlugin' test.out

#- 26 AdminEvaluateProgress
samples/cli/sample-apps Challenge adminEvaluateProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["bBEFj5RT", "ZY49Zqfc", "BtQxS60d"]' \
    --includeOneTimeEvent '9VGfpyBL' \
    --body '{"userIds": ["rUe6s9JP", "hMGs3Fke", "Y7NgBmyT"]}' \
    > test.out 2>&1
eval_tap $? 26 'AdminEvaluateProgress' test.out

#- 27 AdminClaimUsersRewards
samples/cli/sample-apps Challenge adminClaimUsersRewards \
    --namespace $AB_NAMESPACE \
    --body '[{"rewardIds": ["0WFzjNQx", "Gb4bwI5j", "u2APIury"], "userId": "JNdkYpD1"}, {"rewardIds": ["UWFanEOj", "5CW1cFfG", "upRAwG25"], "userId": "QFm0yS7b"}, {"rewardIds": ["rpw1JQoD", "0R3YQ9a3", "6SFYSMTC"], "userId": "5VI9oNcs"}]' \
    > test.out 2>&1
eval_tap $? 27 'AdminClaimUsersRewards' test.out

#- 28 AdminClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge adminClaimUserRewardsByGoalCode \
    --challengeCode 'uaOGFTF1' \
    --namespace $AB_NAMESPACE \
    --userId 'OrvLKkLt' \
    --body '{"goalCode": "3xYkNTQ9"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminClaimUserRewardsByGoalCode' test.out

#- 29 AdminGetUserProgression
samples/cli/sample-apps Challenge adminGetUserProgression \
    --challengeCode 'zsY40vBu' \
    --namespace $AB_NAMESPACE \
    --userId 'FZJcIdMA' \
    --dateTime '1999-11-24T00:00:00Z' \
    --goalCode 'wLBtgM8B' \
    --limit '36' \
    --offset '30' \
    --tags '["amuB9g3N", "IMduqpIV", "wybAhQVe"]' \
    > test.out 2>&1
eval_tap $? 29 'AdminGetUserProgression' test.out

#- 30 AdminGetUserRewards
samples/cli/sample-apps Challenge adminGetUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'er57uDZh' \
    --challengeCode 'CwOxRlMj' \
    --goalProgressionId 'XVXriPwO' \
    --limit '35' \
    --offset '99' \
    --sortBy 'createdAt' \
    --status 'CLAIMED' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserRewards' test.out

#- 31 AdminClaimUserRewards
samples/cli/sample-apps Challenge adminClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'WmcYYFD5' \
    --body '{"rewardIDs": ["PngiuWmz", "byTQM0HK", "Zl81scEh"]}' \
    > test.out 2>&1
eval_tap $? 31 'AdminClaimUserRewards' test.out

#- 32 PublicGetChallenges
samples/cli/sample-apps Challenge publicGetChallenges \
    --namespace $AB_NAMESPACE \
    --keyword 'Q4wqJeVq' \
    --limit '24' \
    --offset '37' \
    --sortBy 'code:asc' \
    --status 'INIT' \
    --tags '["iMsPUmGA", "Qfukep57", "7wOgnPA7"]' \
    > test.out 2>&1
eval_tap $? 32 'PublicGetChallenges' test.out

#- 33 PublicGetScheduledGoals
samples/cli/sample-apps Challenge publicGetScheduledGoals \
    --challengeCode 'JYtaWvSF' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '10' \
    --sortBy 'createdAt' \
    --tags '["odYJicOQ", "CaENjgrX", "3K6sAfha"]' \
    > test.out 2>&1
eval_tap $? 33 'PublicGetScheduledGoals' test.out

#- 34 PublicListSchedulesByGoal
samples/cli/sample-apps Challenge publicListSchedulesByGoal \
    --challengeCode 'w9gFgHbT' \
    --code 'Lz5y9CCh' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 34 'PublicListSchedulesByGoal' test.out

#- 35 PublicListSchedules
samples/cli/sample-apps Challenge publicListSchedules \
    --challengeCode 'iiRMyLX7' \
    --namespace $AB_NAMESPACE \
    --dateTime '1973-10-18T00:00:00Z' \
    --limit '36' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 35 'PublicListSchedules' test.out

#- 36 PublicClaimUserRewardsByGoalCode
samples/cli/sample-apps Challenge publicClaimUserRewardsByGoalCode \
    --challengeCode 'x37DgY5h' \
    --namespace $AB_NAMESPACE \
    --body '{"goalCode": "3X5Mpf3k"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicClaimUserRewardsByGoalCode' test.out

#- 37 PublicEvaluateMyProgress
samples/cli/sample-apps Challenge publicEvaluateMyProgress \
    --namespace $AB_NAMESPACE \
    --challengeCode '["KAJQPqX5", "RiG6t0B2", "S6oYRtmX"]' \
    --includeOneTimeEvent 'If3IzOKo' \
    > test.out 2>&1
eval_tap $? 37 'PublicEvaluateMyProgress' test.out

#- 38 PublicGetUserProgression
samples/cli/sample-apps Challenge publicGetUserProgression \
    --challengeCode 'HPV6p9Vo' \
    --namespace $AB_NAMESPACE \
    --dateTime '1981-07-27T00:00:00Z' \
    --goalCode '0NOPRVTo' \
    --limit '68' \
    --offset '98' \
    --tags '["hE33gIHr", "qitvBH45", "FIe2hNEH"]' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserProgression' test.out

#- 39 PublicGetPastUserProgression
samples/cli/sample-apps Challenge publicGetPastUserProgression \
    --challengeCode 'lFcsuUxD' \
    --index '94' \
    --namespace $AB_NAMESPACE \
    --goalCode '7VlKCWT4' \
    --limit '15' \
    --offset '58' \
    --tags '["xc3S26g6", "yqKwukHq", "dY0iDKDo"]' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetPastUserProgression' test.out

#- 40 PublicGetUserRewards
samples/cli/sample-apps Challenge publicGetUserRewards \
    --namespace $AB_NAMESPACE \
    --challengeCode '1NZLiBOi' \
    --goalProgressionId 'MTC2o9pk' \
    --limit '28' \
    --offset '32' \
    --sortBy 'updatedAt:desc' \
    --status 'UNCLAIMED' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetUserRewards' test.out

#- 41 PublicClaimUserRewards
samples/cli/sample-apps Challenge publicClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --body '{"rewardIDs": ["Hf0twJ78", "w2v0EX5v", "rY6ceOU8"]}' \
    > test.out 2>&1
eval_tap $? 41 'PublicClaimUserRewards' test.out


rm -f "tmp.dat"

exit $EXIT_CODE