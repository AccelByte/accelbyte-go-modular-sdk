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
echo "1..30"

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

#- 2 AdminListAchievements
samples/cli/sample-apps Achievement adminListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '32' \
    --offset '75' \
    --sortBy 'updatedAt:desc' \
    --tags '["Ym8IZISd", "pgUq2yUq", "efIVqGxF"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "Ts77C3uT", "customAttributes": {"woMRmCnR": {}, "tP7pzSoe": {}, "PByAVmD5": {}}, "defaultLanguage": "SLFS8XAk", "description": {"NFmdh4Uo": "O2HT4Brz", "4oBnw6wO": "GZAI6mwg", "LD7iZcn9": "NPmpb8k8"}, "global": true, "goalValue": 0.7388026217047877, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "3HTKHXaM", "url": "CaxswVUf"}, {"slug": "O3KRyC67", "url": "jr44u2vA"}, {"slug": "oggeYucN", "url": "3ZkRm6jF"}], "name": {"KsFCEUbK": "TQnrca7w", "yzB9ZGst": "7omwJYjA", "wdcNbUBc": "j1B29hTR"}, "statCode": "zYnmMNvT", "tags": ["cywdw6gj", "F6643NR8", "6hCHaPsj"], "unlockedIcons": [{"slug": "RKJ9wLEs", "url": "43SvVXOn"}, {"slug": "ca5bhOzu", "url": "VBgfrOuu"}, {"slug": "W6XIiXKJ", "url": "QjcN9imP"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["lDPcWx47", "KqYhfbeK", "coLlqb7h"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'ER3uc6X0' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'm4E4jIQM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'deAydZHR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"c6Nh9IC4": {}, "027lJmqX": {}, "KEbzwLaE": {}}, "defaultLanguage": "7paM9SBP", "description": {"jn5NhTNs": "XWyAgJ0z", "ARFR4aV8": "icuuDD2z", "5z93dDzC": "EI80ItcU"}, "global": false, "goalValue": 0.5418967166176919, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "garj01P7", "url": "G3f1cNUh"}, {"slug": "Zb5FERTR", "url": "kRnB3MsI"}, {"slug": "7M4tmr29", "url": "OOFb05dN"}], "name": {"O8quj0QK": "bwIBcUK6", "9Fclj2PU": "BGC9LHWb", "tOIAoqqs": "KC1RNL30"}, "statCode": "apuN6sbO", "tags": ["WfL52s16", "fvbBFEIN", "ytjYwW93"], "unlockedIcons": [{"slug": "fEgvvdwO", "url": "JbLJltJ5"}, {"slug": "NVZ6ZpAU", "url": "3zaVZX0e"}, {"slug": "kBoW2zHt", "url": "kNtcL39E"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'nyArMi9t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'HihnM921' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 51}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '7b69cJ0A' \
    --limit '88' \
    --offset '31' \
    --sortBy 'achievedAt:desc' \
    --status '2ZufNpf1' \
    --tags '["lwjtZLpB", "g7PlJF6a", "KC171Y8R"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'zA2cG1EI' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '92' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'o2sUr40g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "MFbiMEmi", "eventData": {"eventName": "6lGmmouQ", "properties": {"XgyPX5eJ": {}, "CHmjeWVo": {}, "HizLzTDc": {}}}, "eventId": "19cFkkwC", "version": "hdiOzV6G"}, {"dateTime": "Iad9s1Il", "eventData": {"eventName": "ikxuqKoH", "properties": {"pvxNSG5l": {}, "9HEvxxjy": {}, "jkZBTLUv": {}}}, "eventId": "GcAVWPKt", "version": "szKTSDF9"}, {"dateTime": "OYAnRFZy", "eventData": {"eventName": "GwSktep9", "properties": {"cD2IxaOq": {}, "FiocAJdi": {}, "yvNtcEHd": {}}}, "eventId": "0b98AcCN", "version": "wBXG272n"}], "thirdPartyUserId": "yl0zLT73", "userId": "PybsaxKu"}, {"events": [{"dateTime": "NOQTjaJS", "eventData": {"eventName": "xQKf3fiy", "properties": {"s4qvIBnr": {}, "J2OKWuNE": {}, "7CmMmy3S": {}}}, "eventId": "hezgzeTv", "version": "2GY2MjSw"}, {"dateTime": "cBJkO7MD", "eventData": {"eventName": "8bmZ3IjU", "properties": {"Ql7imMqP": {}, "0rwiIrGW": {}, "XSn8t5EZ": {}}}, "eventId": "DZoloO2Q", "version": "yye8XVkt"}, {"dateTime": "1OxymWKg", "eventData": {"eventName": "EVeNt3Vq", "properties": {"WQSnV6XU": {}, "krzB9WxG": {}, "sFrALbbo": {}}}, "eventId": "oweGcEyu", "version": "K9blJ3yG"}], "thirdPartyUserId": "3sTmFAS9", "userId": "yfj4LmUg"}, {"events": [{"dateTime": "aApR1Jen", "eventData": {"eventName": "l6ib6bQT", "properties": {"Cxti7TvJ": {}, "f3JpbX8t": {}, "1hQxiazH": {}}}, "eventId": "Aaf4T5A9", "version": "wRm8g300"}, {"dateTime": "A78OqltG", "eventData": {"eventName": "G77zmq4I", "properties": {"8tsmwzN5": {}, "S78RJKSd": {}, "brJi9YDU": {}}}, "eventId": "rXrDQRfy", "version": "BJWk07jN"}, {"dateTime": "FsdfHggV", "eventData": {"eventName": "7kK3nvBS", "properties": {"ViP1zBH2": {}, "mSLq6aZS": {}, "62NPNYiu": {}}}, "eventId": "7iUwlnTn", "version": "ievxu0es"}], "thirdPartyUserId": "azPTvWkp", "userId": "iOx7tqmH"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --name 'k6ihfVC2' \
    --offset '46' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'W7oUqSqL' \
    --limit '33' \
    --offset '61' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:asc' \
    --tags '["g7B6gbQE", "HopONrsu", "9Q1XNqiW"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'R9H0mp9r' \
    --body '{"achievementCodes": ["Oa9F440T", "ONL1YyrX", "uS6aCir5"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'kx9Q78tm' \
    --namespace $AB_NAMESPACE \
    --userId 'b60DUaot' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'bKZ54j2L' \
    --namespace $AB_NAMESPACE \
    --userId 'aq9Jt3JX' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ZPivkZY9' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '6Suh4Yts' \
    --achievementCodes '8uhXDOIz' \
    --limit '2' \
    --offset '34' \
    --sortBy 'contributedValue:asc' \
    --tags '["tQnciemE", "jonQ5uBd", "s9BqPdBe"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '80' \
    --offset '77' \
    --sortBy 'listOrder' \
    --tags '["dAzPkzza", "qJcnQm97", "FXhvylU8"]' \
    --language 'P2UX88nE' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'uthyk1sh' \
    --namespace $AB_NAMESPACE \
    --language 'dKCWG7vV' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'jAvJWrJG' \
    --limit '45' \
    --offset '92' \
    --sortBy 'createdAt' \
    --status 'kUzwKkbz' \
    --tags '["aPatSBBS", "m5ekLMYF", "WMetL6VX"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'E5wtDcxv' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '7' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --name 'VPerZOuN' \
    --offset '86' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'JkdUELCg' \
    --limit '57' \
    --offset '44' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:desc' \
    --tags '["xM8asDEq", "mUGS7YWz", "LZksrE5j"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Miehfqwo' \
    --body '{"achievementCodes": ["gk7kBvtk", "6qdIoH7U", "ABdGygDd"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'whp08T3I' \
    --namespace $AB_NAMESPACE \
    --userId 'mXHzJ52u' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'hHILR3Bt' \
    --achievementCodes 'EjCnTNTO' \
    --limit '1' \
    --offset '40' \
    --sortBy 'contributedValue:desc' \
    --tags '["306P2R8o", "gz5dUpUn", "fDLwTJAR"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'OngAtZFQ' \
    --namespace $AB_NAMESPACE \
    --userId 'at0WTcOr' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE