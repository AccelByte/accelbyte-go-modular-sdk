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
    --limit '99' \
    --offset '86' \
    --sortBy 'createdAt' \
    --tags '["bWa9wr9U", "GCJCW68E", "KpNaJw8P"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "YE6o8Wa7", "customAttributes": {"pAoat3YX": {}, "4SUzvC0i": {}, "kvhQhmWG": {}}, "defaultLanguage": "vdE1qzWw", "description": {"4nmmpCGL": "vc9nSoQQ", "pJLkY9LK": "7pUVPXxq", "8pI7Ycof": "Ox4JvB12"}, "global": false, "goalValue": 0.5101178307272525, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "2RPYhJl8", "url": "Q7vbeAdl"}, {"slug": "ocdml7E7", "url": "zpjCtAjT"}, {"slug": "4d1wNP0x", "url": "il9fnEZr"}], "name": {"HsmoMcM5": "ZTje96Ab", "Ax0NAQD3": "T7AuaRtd", "FWBUUMQp": "zbEFxUEY"}, "statCode": "NmHqEUpj", "tags": ["ejkUEIIP", "kKRtPbrn", "41Spn3UB"], "unlockedIcons": [{"slug": "hcB1fH7S", "url": "4S3tzq0q"}, {"slug": "FKj35ea6", "url": "ipbvCCR3"}, {"slug": "kWuCJw2D", "url": "0birvgH9"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["FTKc7MK2", "QkGf4NxZ", "15BkJae9"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '5MsSlbAu' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'pSZBvjHp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'h5hQNh6m' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"eIgGXKpL": {}, "jBZzaNWD": {}, "7WuNt1eo": {}}, "defaultLanguage": "ue1TpeCM", "description": {"l7vUNdcq": "dqvY1xqk", "0kzDX1JU": "2lyt9l19", "9K3KKeUI": "zDlxx8Vv"}, "global": true, "goalValue": 0.3192508934965257, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "XJ1xeO28", "url": "4726CxyL"}, {"slug": "dYHibJ98", "url": "84tQcdYB"}, {"slug": "S7jdTvuc", "url": "pTqDrysy"}], "name": {"zct4tVJv": "VBXgpc5f", "aVeUu0Mg": "r1WUdMSX", "3z1CJzP6": "73pIZQiZ"}, "statCode": "idAuMFuy", "tags": ["zivHTXM9", "zaGuHLAP", "9BjbSF6E"], "unlockedIcons": [{"slug": "aAFVTiYk", "url": "sVniLtaI"}, {"slug": "PRzawapK", "url": "z6c4f7NL"}, {"slug": "pLPQhMli", "url": "QHdvOIUp"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '83sBBajq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'zTE2VY7v' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 63}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'rDTN0a8N' \
    --limit '0' \
    --offset '16' \
    --sortBy 'createdAt' \
    --status 'X1zMqrtF' \
    --tags '["HfCuzGJz", "V1xGbLzC", "Ly6CtXT1"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'v31OGCk8' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '0' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'eU21guCI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "oBLBx9u5", "eventData": {"eventName": "N62umBjn", "properties": {"G2ShDuWa": {}, "X8t7hlEo": {}, "utzC5VuS": {}}}, "eventId": "UhYF1GFk", "version": "jx6nHRtK"}, {"dateTime": "nAwUGeZM", "eventData": {"eventName": "SxOJt3Ik", "properties": {"6WS4v0QE": {}, "GaJB1TIa": {}, "zf9NcvST": {}}}, "eventId": "CtUvZHrx", "version": "aSW8BVV4"}, {"dateTime": "FMDNklWE", "eventData": {"eventName": "7wBH5qQF", "properties": {"hq36kZeh": {}, "I0dzQ2DF": {}, "DwgcGhSO": {}}}, "eventId": "tgkvpolp", "version": "5PFEZlx1"}], "thirdPartyUserId": "ceF6348C", "userId": "6gI1p3HL"}, {"events": [{"dateTime": "p0ytBLPr", "eventData": {"eventName": "bFDW80eq", "properties": {"1U3RsKr6": {}, "jQyNwnbr": {}, "0os9m7QL": {}}}, "eventId": "G3QRLHTG", "version": "2WOBPh59"}, {"dateTime": "tJX9T0so", "eventData": {"eventName": "UBBb7O00", "properties": {"2LIcQg4Z": {}, "M68MwXPL": {}, "23XQzu0G": {}}}, "eventId": "13SVXfEb", "version": "koO9Q6LS"}, {"dateTime": "p7e1PAl6", "eventData": {"eventName": "V3hhPO8J", "properties": {"v05uP75g": {}, "mrxK2Ego": {}, "b8r14M9y": {}}}, "eventId": "KhRNR5bx", "version": "8Jaqpo3t"}], "thirdPartyUserId": "yrINDzrp", "userId": "v2Vk2RFs"}, {"events": [{"dateTime": "f3FKtIAL", "eventData": {"eventName": "mOcYrk6p", "properties": {"e9sB9Ujd": {}, "CmAJ91oV": {}, "4XgY286K": {}}}, "eventId": "89MwsTR6", "version": "l49GKGSZ"}, {"dateTime": "cg2IOACj", "eventData": {"eventName": "2QZn9Ek4", "properties": {"gE5AtlC4": {}, "axEvsdyX": {}, "22iTgYqn": {}}}, "eventId": "KMhLpHcU", "version": "l69B17Z8"}, {"dateTime": "5tuHqiNU", "eventData": {"eventName": "3osVX3cv", "properties": {"Q43JhNLV": {}, "MvkF20JB": {}, "dbXXbe0n": {}}}, "eventId": "SbQRwhKb", "version": "unuJkH0T"}], "thirdPartyUserId": "mfsdTabg", "userId": "utbuaMpS"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --name '85P8OC3l' \
    --offset '90' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'bjPsk0DA' \
    --limit '5' \
    --offset '80' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt' \
    --tags '["KoNwEuPD", "5hPmyMcZ", "u6c5c2ha"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'RZmHfqbk' \
    --body '{"achievementCodes": ["O4gwUkmL", "uZkhIBZa", "mUaXNXNP"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'RLRO5ObS' \
    --namespace $AB_NAMESPACE \
    --userId 'pq3HKE5Z' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'nYYGAT7v' \
    --namespace $AB_NAMESPACE \
    --userId 'Fr69rZfj' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'iYsepxTV' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '6x5xmHaT' \
    --achievementCodes 'HFBpW8xa' \
    --limit '47' \
    --offset '0' \
    --sortBy 'contributedValue' \
    --tags '["nmZxoHgC", "xyWx2F5g", "Ju9I8LSe"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '97' \
    --offset '80' \
    --sortBy 'createdAt:asc' \
    --tags '["ylMh1OzP", "QF32C8z1", "icbZdYhN"]' \
    --language 'DNlmaVtz' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'ISJBBJqc' \
    --namespace $AB_NAMESPACE \
    --language 'ww3MCXMe' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ZiOUdRsS' \
    --limit '3' \
    --offset '52' \
    --sortBy 'createdAt:desc' \
    --status 'EY1HN8tI' \
    --tags '["KbM1tM8F", "zpdrs4lO", "J8geZ6ZB"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'cb4LPNZt' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '25' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --name 'WLJORpU5' \
    --offset '4' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'N8oPdEsq' \
    --limit '45' \
    --offset '39' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:asc' \
    --tags '["wbfXaztv", "pTNCpGCm", "FxFM3pBB"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KpzpJ5eh' \
    --body '{"achievementCodes": ["AyMdkiUy", "0K3BlF1F", "cj0hsYNr"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'QkxvygHd' \
    --namespace $AB_NAMESPACE \
    --userId '95nGXZdJ' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '2Q5gF1qN' \
    --achievementCodes 'Ift0c7xP' \
    --limit '27' \
    --offset '58' \
    --sortBy 'contributedValue:asc' \
    --tags '["ZprKIluQ", "vjTr0NLO", "PYVWx5bl"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '4wBQkKzT' \
    --namespace $AB_NAMESPACE \
    --userId 'wDJvZyjD' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE