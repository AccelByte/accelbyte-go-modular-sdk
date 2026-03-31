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
    --limit '42' \
    --offset '90' \
    --sortBy 'updatedAt' \
    --tags '["lRiIkxYp", "Sd4JrHar", "UDL74BVk"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "1hopcRZc", "customAttributes": {"mbCVTkyn": {}, "q9sI5CzG": {}, "JdrMQjqA": {}}, "defaultLanguage": "UPmUMwgG", "description": {"Ok3eJPiL": "LeuA4A3u", "WeiNptNm": "PA9fzbUa", "TDfW0rWa": "Ba2X3UxJ"}, "global": true, "goalValue": 0.13002268964068708, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "3Bt7p3hi", "url": "WAZXGoRy"}, {"slug": "NVL9HQtW", "url": "rfXtcql9"}, {"slug": "UKFEqPSv", "url": "fmxW6mOz"}], "name": {"MbQz2qIU": "bYpUhKuz", "WzqQblL7": "xWOEIBjf", "2b1kRlLg": "Z8fj99Dc"}, "statCode": "xzBuBRH8", "tags": ["OMCmgFKF", "Pn5QKj6T", "FWThh5jQ"], "unlockedIcons": [{"slug": "ykGLGAM2", "url": "krG8Nw5Q"}, {"slug": "W1skSGm4", "url": "gIH5gxa3"}, {"slug": "sTFGYtHh", "url": "PWfhoBNc"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["HEZ4h2bk", "mRyS4z0j", "8ndN92MF"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'm4xH2yPa' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'CLhhO1sr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '2xg48WGb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"1xyxaBTu": {}, "xheAnHri": {}, "NnwEXpZG": {}}, "defaultLanguage": "93HGeilV", "description": {"EoOFD3Zm": "8lmAdMRL", "mgTOOdjT": "fMUtCIJU", "giLuGx31": "1KZaw5gx"}, "global": true, "goalValue": 0.5098151827565746, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "bbeH7vYQ", "url": "ufVvF8XX"}, {"slug": "6qX6oUoc", "url": "T2Vx8FrZ"}, {"slug": "eTxDsvPm", "url": "2Opcc2iK"}], "name": {"dIWoi59O": "TrsBUezD", "tUbapnjO": "dkjacwZT", "xHyg9Spb": "sfLJT2jL"}, "statCode": "zzEkNCRQ", "tags": ["eRW974hN", "yjdcy2ir", "LMR0mCHC"], "unlockedIcons": [{"slug": "cAGjevxK", "url": "uBcDZagF"}, {"slug": "dALMzHvv", "url": "iMxbReCR"}, {"slug": "s0QqCDjd", "url": "sUrxLok4"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'nGjixPyJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '9HWxlo6v' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 80}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'IiQGHxn3' \
    --limit '29' \
    --offset '79' \
    --sortBy 'achievedAt:asc' \
    --status 'nZUkRA4f' \
    --tags '["V4aupXla", "bhWCFmbg", "lLZIbGcc"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '5FtAnQkA' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '62' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'x3k8Zydk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "Waxo6OVX", "eventData": {"eventName": "N8AdKGY6", "properties": {"cD6R5pPX": {}, "Ohn529sZ": {}, "BQOxLjG6": {}}}, "eventId": "QTrmm1RZ", "version": "XnT3UWR2"}, {"dateTime": "RClF01Eo", "eventData": {"eventName": "fcmhoNXW", "properties": {"1XgeO7et": {}, "jbyjPvyE": {}, "cQsuFkPY": {}}}, "eventId": "XXZe4n8a", "version": "IilcT3PJ"}, {"dateTime": "grepQsfc", "eventData": {"eventName": "KQv1tO4e", "properties": {"yuCKPZPU": {}, "F4qLbRNo": {}, "ka7ZB5NP": {}}}, "eventId": "tzf4BDiV", "version": "ue0Z5lD2"}], "thirdPartyUserId": "r22rUpXS", "userId": "AaH2dSGA"}, {"events": [{"dateTime": "r6wkAOFa", "eventData": {"eventName": "3BQhqtfJ", "properties": {"ic96aEYd": {}, "weQqxJv2": {}, "cnDteQUH": {}}}, "eventId": "JTbCptbd", "version": "YeY6esCK"}, {"dateTime": "YTEkKJ9Y", "eventData": {"eventName": "L6s2xrQL", "properties": {"k32ush4K": {}, "etiNMkca": {}, "bbuFhrZL": {}}}, "eventId": "KhAOFCIH", "version": "nLpyG8R6"}, {"dateTime": "3H7BSYLL", "eventData": {"eventName": "oODvXsyV", "properties": {"5yPZabyX": {}, "qb3mvgsu": {}, "4Ujms0qD": {}}}, "eventId": "Xi89zP2z", "version": "9wwqFU8X"}], "thirdPartyUserId": "hkN9aB2C", "userId": "pTAhXABo"}, {"events": [{"dateTime": "voGZGFx1", "eventData": {"eventName": "t8kAJ0N2", "properties": {"Vb9KFGpX": {}, "wnM0GGZE": {}, "AeVGAxBv": {}}}, "eventId": "eQ4rIWzX", "version": "gFiEFpBJ"}, {"dateTime": "Wl7u5C3E", "eventData": {"eventName": "52I2OYZw", "properties": {"yHApe9LU": {}, "ueSnjeIx": {}, "fRPmol1r": {}}}, "eventId": "LbUxiecB", "version": "q3P4w9I4"}, {"dateTime": "DgdyyB0j", "eventData": {"eventName": "8bC6kiBB", "properties": {"RwB9Tmc5": {}, "d1d8L0cJ": {}, "L7gZZkB0": {}}}, "eventId": "kBuPY6vM", "version": "aIdkoqOH"}], "thirdPartyUserId": "r6lcSxP4", "userId": "2PRS2wcZ"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --name 'JXsXv1Xg' \
    --offset '24' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Qz4pIT55' \
    --limit '57' \
    --offset '86' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt' \
    --tags '["1r0sJdw4", "YDyE9OAK", "eMB9lEKj"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId '1zDy2THz' \
    --body '{"achievementCodes": ["QLl10CQH", "Eoif4UyV", "BvLx0VVa"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'x4Y4YDbo' \
    --namespace $AB_NAMESPACE \
    --userId '6PF2ohpq' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '4EGlmQGn' \
    --namespace $AB_NAMESPACE \
    --userId 'VkBaNy73' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'FNh5Q2jw' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'mFP4iIAD' \
    --achievementCodes '7ehuVnn4' \
    --limit '9' \
    --offset '95' \
    --sortBy 'contributedValue' \
    --tags '["T5DYg1Gn", "HzXH1ekY", "0Qiev1Tp"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '10' \
    --offset '70' \
    --sortBy 'createdAt:asc' \
    --tags '["SWT1lS2p", "6qKjoxqm", "tIvgFnF1"]' \
    --language 'XZzvuSHw' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'ojadbhF3' \
    --namespace $AB_NAMESPACE \
    --language 'AQaywjAM' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '7nQKGIzz' \
    --limit '63' \
    --offset '37' \
    --sortBy 'createdAt' \
    --status 'YrUdvn88' \
    --tags '["bDna589b", "0LheohAr", "6IAAdxvm"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'elnk6c3y' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '35' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name '9RuiakNZ' \
    --offset '74' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'bWF0c2Vu' \
    --limit '99' \
    --offset '8' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:asc' \
    --tags '["AV7j6M6z", "81J84T9S", "n5ZtqPCX"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'C5DNZ53u' \
    --body '{"achievementCodes": ["huVD37U2", "W5bLUEzq", "pXXiClEl"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'yzHNQUGh' \
    --namespace $AB_NAMESPACE \
    --userId 'qOeTqEdj' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '1JUlty7X' \
    --achievementCodes 'ZFHvZAMA' \
    --limit '66' \
    --offset '64' \
    --sortBy 'contributedValue:asc' \
    --tags '["1o6dwlQV", "sqDBRW8A", "KMGyRg22"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'sCJbYgWs' \
    --namespace $AB_NAMESPACE \
    --userId 'YdgBbQbn' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE