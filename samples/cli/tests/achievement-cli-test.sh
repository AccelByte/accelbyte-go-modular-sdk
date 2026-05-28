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
echo "1..31"

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
    --limit '91' \
    --offset '91' \
    --sortBy 'createdAt:asc' \
    --tags '["WY38IeSP", "3Zz1WZDX", "B2AOZ4m4"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "gEhJlw3L", "customAttributes": {"ECxeQOlP": {}, "qXH4ReO0": {}, "JA2eW3OB": {}}, "defaultLanguage": "CCiynonI", "description": {"3IUtZGVR": "KXzpClVx", "4fKVetka": "Y1IW3aWl", "DTOuZ3LG": "pjG5jXM5"}, "global": true, "goalValue": 0.4390233969289352, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "kv33GlAL", "url": "YsYjiC2A"}, {"slug": "s83ljUc4", "url": "nDGjuIjU"}, {"slug": "prs4IExA", "url": "v4x2h7lY"}], "name": {"VuncPE25": "kjSNMrxi", "yxL2Hjxc": "3omHke3q", "60OCDTSK": "fLtCkHnJ"}, "statCode": "xP7cyoNa", "tags": ["rPQrasZF", "PLqafiVR", "7dHdJlm7"], "unlockedIcons": [{"slug": "D3nckHQV", "url": "S85XsGgQ"}, {"slug": "kPQhdX3o", "url": "7pfNGtWV"}, {"slug": "Sng8xt6f", "url": "PaGpKNVx"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["rrq0PkJd", "t20uxYL5", "uVsS4r5h"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'L2JDhyP1' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'CfBk5Tdk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'mgY9Z5TT' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"daULPAa3": {}, "mDi1Hrck": {}, "F3OOossO": {}}, "defaultLanguage": "PpClV8BW", "description": {"NmhWIgaN": "1uioGgfl", "01DNseHP": "jt2sbJuI", "omOHL633": "FnQmBUuL"}, "global": true, "goalValue": 0.5839226121581287, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "LxhNopcf", "url": "R3BrxGJg"}, {"slug": "s2alToKA", "url": "Un1425KU"}, {"slug": "p2qtJiyC", "url": "nytHBsXf"}], "name": {"M4KpKFyE": "fyYoP6qD", "vJ6OLd40": "spMwoQyl", "hmtlGMKV": "KYq3GqNh"}, "statCode": "UWlAecWr", "tags": ["CVT1Qet4", "RouElJTB", "2zOrj8VC"], "unlockedIcons": [{"slug": "15Z8axl4", "url": "11kfW84L"}, {"slug": "JlZVyYbF", "url": "kGOkmSNZ"}, {"slug": "X90LE9l4", "url": "J0fwzmNX"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'WoaxmiKf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'cfNtNLkr' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 82}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'Wc86wLZw' \
    --limit '37' \
    --offset '65' \
    --sortBy 'createdAt:asc' \
    --status 'TQXxiJMP' \
    --tags '["lS8vLS6k", "S90FnJvI", "8PfxmSXt"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'FqVoBgr8' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '62' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '1j9EruDO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "yoLDU8yQ", "eventData": {"eventName": "rNYdOdPO", "properties": {"BMnus5hD": {}, "8Webz5Ae": {}, "bTdrUWBR": {}}}, "eventId": "07JQ7Ldk", "version": "4LkWsUws"}, {"dateTime": "FwrRiavI", "eventData": {"eventName": "eddtFcDp", "properties": {"2fpUcStZ": {}, "BBEU48IY": {}, "OO5528GN": {}}}, "eventId": "weNagHr7", "version": "Pdjkf6ce"}, {"dateTime": "wC1J7H24", "eventData": {"eventName": "0cJXt4N9", "properties": {"tqaJ6bRF": {}, "OY7I8zhZ": {}, "tCgDQPP1": {}}}, "eventId": "AWTuo8fS", "version": "C3wIQcNO"}], "thirdPartyUserId": "YJ7CPQUT", "userId": "xfz80Lxa"}, {"events": [{"dateTime": "yImaEnAv", "eventData": {"eventName": "OZ6TEuYz", "properties": {"JlY95Gpt": {}, "1k2lmQSh": {}, "DOuSE9bt": {}}}, "eventId": "zeYcxvsH", "version": "z9TgAp6f"}, {"dateTime": "hjZMBDB0", "eventData": {"eventName": "MjDKZy9p", "properties": {"GA9PyNwC": {}, "FHEXlSei": {}, "1Qm4gVVD": {}}}, "eventId": "oCzSEMN7", "version": "zlYamr17"}, {"dateTime": "rbZzzkVO", "eventData": {"eventName": "c0HBQI44", "properties": {"7iBfWq7A": {}, "tYQz4yVj": {}, "conngObO": {}}}, "eventId": "7yNqVXPF", "version": "nh0tD2XC"}], "thirdPartyUserId": "DwC9biae", "userId": "LwUKqOUv"}, {"events": [{"dateTime": "AW90H9XT", "eventData": {"eventName": "Y1IBJV61", "properties": {"XGIlcn7U": {}, "2kvC3sv0": {}, "BgKz2X32": {}}}, "eventId": "byLddLoT", "version": "Im6n4sPv"}, {"dateTime": "5eeCTJb0", "eventData": {"eventName": "gjnwKvi8", "properties": {"nOQ8o2q2": {}, "et065VY9": {}, "NZVYztaQ": {}}}, "eventId": "lwyufkwm", "version": "6ShIdlfW"}, {"dateTime": "xf0kyzsH", "eventData": {"eventName": "yxdNXWQ8", "properties": {"vdJ4a12Q": {}, "E4mcq1Fk": {}, "Ni8rnwfY": {}}}, "eventId": "BJsvCV6X", "version": "CWWVvWX4"}], "thirdPartyUserId": "PRTuTY8f", "userId": "KBCdvqJu"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --name '90m1BHCM' \
    --offset '73' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'uVnOG1Fs' \
    --limit '28' \
    --offset '35' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt:desc' \
    --tags '["lgWPqbt8", "77rIcGNQ", "XfOIAYqy"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBatchQueryUserAchievements
samples/cli/sample-apps Achievement adminBatchQueryUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'TnkLYhpr' \
    --body '{"codes": ["f7chWqnm", "n9I5mbzP", "PpFW4S9H"], "status": 22}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBatchQueryUserAchievements' test.out

#- 17 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KS2M2TWy' \
    --body '{"achievementCodes": ["BazqCxJc", "tmUJnTKK", "q37XrIZI"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminBulkUnlockAchievement' test.out

#- 18 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'PoWnKeFw' \
    --namespace $AB_NAMESPACE \
    --userId '1qKFgJyF' \
    > test.out 2>&1
eval_tap $? 18 'AdminResetAchievement' test.out

#- 19 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'GrM2lukO' \
    --namespace $AB_NAMESPACE \
    --userId 'p1c5cBDB' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnlockAchievement' test.out

#- 20 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Xh9hMmZj' \
    > test.out 2>&1
eval_tap $? 20 'AdminAnonymizeUserAchievement' test.out

#- 21 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'swQ88A6W' \
    --achievementCodes 'nyn1146x' \
    --limit '94' \
    --offset '31' \
    --sortBy 'contributedValue:asc' \
    --tags '["AZNnRm9T", "4sCVcqnL", "Zb0x49BG"]' \
    > test.out 2>&1
eval_tap $? 21 'AdminListUserContributions' test.out

#- 22 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '72' \
    --offset '66' \
    --sortBy 'updatedAt:asc' \
    --tags '["8vxviFL8", "Uwyk5Nxu", "4tCIjhfm"]' \
    --language 'JAQrfQA3' \
    > test.out 2>&1
eval_tap $? 22 'PublicListAchievements' test.out

#- 23 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'c2RVWTaW' \
    --namespace $AB_NAMESPACE \
    --language 'SvprlWj6' \
    > test.out 2>&1
eval_tap $? 23 'PublicGetAchievement' test.out

#- 24 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'XV89Oivu' \
    --limit '85' \
    --offset '84' \
    --sortBy 'createdAt' \
    --status 'dHTDpOpc' \
    --tags '["qarYDFru", "xN6A7W4b", "giCsSsp8"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListGlobalAchievements' test.out

#- 25 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'sCgpi3Cc' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '55' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 25 'ListGlobalAchievementContributors' test.out

#- 26 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --name '5tIjr7te' \
    --offset '100' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListTags' test.out

#- 27 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'MmknGAav' \
    --limit '51' \
    --offset '88' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:asc' \
    --tags '["69DUVWFt", "bFyWDS1n", "aOqHHF5C"]' \
    > test.out 2>&1
eval_tap $? 27 'PublicListUserAchievements' test.out

#- 28 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'y2TygOxQ' \
    --body '{"achievementCodes": ["tZbEk4w7", "zIDAtPmg", "0Qouyldc"]}' \
    > test.out 2>&1
eval_tap $? 28 'PublicBulkUnlockAchievement' test.out

#- 29 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'adxbP35k' \
    --namespace $AB_NAMESPACE \
    --userId 'hQN4OJTb' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnlockAchievement' test.out

#- 30 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'n8pqaph2' \
    --achievementCodes '9W6K8c2a' \
    --limit '8' \
    --offset '17' \
    --sortBy 'contributedValue' \
    --tags '["IbKf6lpv", "QIOeHGiv", "4FvF9P5a"]' \
    > test.out 2>&1
eval_tap $? 30 'ListUserContributions' test.out

#- 31 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'G3iY7RlL' \
    --namespace $AB_NAMESPACE \
    --userId '8hLQnK40' \
    > test.out 2>&1
eval_tap $? 31 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE