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
echo "1..28"

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
    --limit '30' \
    --offset '97' \
    --sortBy 'updatedAt:desc' \
    --tags '["gRXABoMB", "4FMLzz81", "4U9pg2VG"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "60TCsSjF", "customAttributes": {"ZBaJA0TQ": {}, "uHkpwd4u": {}, "stBYWi67": {}}, "defaultLanguage": "hh2fZ0Ag", "description": {"krM36Q3l": "0t66MYeK", "zJrHd7Wl": "93hsyL1I", "ALx4WRaK": "rdMm7mfG"}, "global": false, "goalValue": 0.5458192170581542, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "BgqwsfFJ", "url": "ivx62rhN"}, {"slug": "hUrXykuJ", "url": "1RGvssFz"}, {"slug": "22vNnjqG", "url": "jxhw3jbJ"}], "name": {"gBaZN1wi": "SvOXGCVt", "A5WrOdcc": "KlNuBjDA", "AovhQWr3": "xegi8ioe"}, "statCode": "FReVDSTM", "tags": ["ZonZWWyu", "ZfCrqaaU", "C1YZ8d4e"], "unlockedIcons": [{"slug": "RmldHcqd", "url": "DVmJPQo6"}, {"slug": "48tyq3Tv", "url": "udRSE8Xo"}, {"slug": "4JERdcgh", "url": "p34Ku2Ab"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["vPftu6ej", "dHHFQP0B", "4usvjHRQ"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'hVMj8AzW' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'fBS2xIlS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '8A8lbpLO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"KBIzK5L1": {}, "lTNaxoDW": {}, "fE7aoLdo": {}}, "defaultLanguage": "7XOz59Dg", "description": {"fbQVuymf": "szpgEqMU", "jUTwri2s": "Qo3UuoeS", "Fyk5SXcj": "qTCmLxrP"}, "global": false, "goalValue": 0.38009951180144974, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "GaLSrVtV", "url": "v85cWuSJ"}, {"slug": "KcsTZkWh", "url": "pnbebcpT"}, {"slug": "WUJYtjUS", "url": "Vr5W0mKB"}], "name": {"1pYAtjFU": "59OBbWuR", "n8R5yN1J": "6FrBgukb", "zzhQmbIP": "Ttk4AypV"}, "statCode": "gnySqTiQ", "tags": ["f1q9kFIf", "wXXp5o22", "yDK8gHqO"], "unlockedIcons": [{"slug": "Ebwz6mAC", "url": "7kvbHy6e"}, {"slug": "1TrN0Qvo", "url": "gy12zJ4o"}, {"slug": "QfL1jNl4", "url": "s89UsG0z"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'TkWSEF5n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'shmaq7Rs' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 30}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'f6PyPjr2' \
    --limit '98' \
    --offset '0' \
    --sortBy 'achievedAt:desc' \
    --status 'VJ1TJKkQ' \
    --tags '["edm3s9wA", "IbeUZuoE", "7xZassaU"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'hquU6MmH' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '61' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 't8RYiwjX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "cpnJ6GNT", "eventData": {"eventName": "Gd5BvOAF", "properties": {"4Yq2ekxw": {}, "MRL1RUN7": {}, "DdXuKJG6": {}}}, "eventId": "gjeNPQY0", "version": "gBDRh4dh"}, {"dateTime": "aHzI7Mku", "eventData": {"eventName": "LyEL2IFC", "properties": {"LmFQ3YEl": {}, "UC7fTE2A": {}, "vnT1rkDv": {}}}, "eventId": "ujOpjySi", "version": "FTu4jqav"}, {"dateTime": "6pat1YAH", "eventData": {"eventName": "0bJxnpu0", "properties": {"0CqKZTol": {}, "A07EJIly": {}, "mDouXMib": {}}}, "eventId": "9k8hsuU1", "version": "cHMrl4il"}], "thirdPartyUserId": "hXD8pxL2", "userId": "hHNQe7Ni"}, {"events": [{"dateTime": "HhFkCN8j", "eventData": {"eventName": "FhHA4j5F", "properties": {"gYGyAq6r": {}, "cGBxF6tS": {}, "HyQT0sVC": {}}}, "eventId": "1Tyh1xSe", "version": "RKsjcOUD"}, {"dateTime": "FM9mwSY5", "eventData": {"eventName": "iwqtSAu8", "properties": {"tFEvI5XJ": {}, "G0eGhrWA": {}, "G44fJj02": {}}}, "eventId": "82HYu8ZV", "version": "BVoUCnZl"}, {"dateTime": "Gznbn81b", "eventData": {"eventName": "X8oI1xv6", "properties": {"u2o06PA7": {}, "Na3iw2CE": {}, "MguXtJB5": {}}}, "eventId": "1gCYMiDy", "version": "84ztoYip"}], "thirdPartyUserId": "ewYn64OP", "userId": "Mu7bYi9m"}, {"events": [{"dateTime": "3fFnUC3Y", "eventData": {"eventName": "XeeBYz0U", "properties": {"JPCABplo": {}, "jz4KvvNY": {}, "EHBja9Q5": {}}}, "eventId": "dOqBCUyy", "version": "K8jD8aez"}, {"dateTime": "fGRNlKDh", "eventData": {"eventName": "qJFQEssX", "properties": {"2AYQClmI": {}, "UoMdKvX8": {}, "GHkKBNjz": {}}}, "eventId": "WqwYiWAx", "version": "EpZ2yhKE"}, {"dateTime": "AxvIVMlt", "eventData": {"eventName": "EpP0eH2p", "properties": {"Olp5TZEa": {}, "MqThCTeQ": {}, "56ePUWVi": {}}}, "eventId": "90iL8ebR", "version": "uUlFc2UZ"}], "thirdPartyUserId": "SUyOVS7O", "userId": "gGNxNnxN"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --name 'FxoZCxMH' \
    --offset '76' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '5qzxcWPS' \
    --limit '41' \
    --offset '60' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:asc' \
    --tags '["Cdev9dUL", "mW8pNQG3", "AnAGDytQ"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'qyXKjUJs' \
    --namespace $AB_NAMESPACE \
    --userId 'zzlGXh7m' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '1vV2PEAO' \
    --namespace $AB_NAMESPACE \
    --userId 'ePMNBAYx' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'z6mCGmOb' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'oOmWtGDf' \
    --achievementCodes 'KOXparAM' \
    --limit '48' \
    --offset '66' \
    --sortBy 'contributedValue' \
    --tags '["hyRJNV1A", "3u7GBGGY", "SiLVso1L"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '26' \
    --offset '21' \
    --sortBy 'createdAt:desc' \
    --tags '["yIUttgOQ", "RHSsdJM6", "IwB48Xhg"]' \
    --language '8BBNLprD' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'W0PYiK7H' \
    --namespace $AB_NAMESPACE \
    --language 'oId0wOwx' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'IEmPZD3I' \
    --limit '55' \
    --offset '57' \
    --sortBy 'achievedAt:desc' \
    --status 'FG7cBK3i' \
    --tags '["VI7x0m34", "AOTSsi8V", "UdUcaq9I"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode '2VzxWt0I' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '89' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --name 'MrueGl5D' \
    --offset '95' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'IdLkjjbl' \
    --limit '48' \
    --offset '93' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:asc' \
    --tags '["c8j1dtOg", "uqtiZgC8", "xupKqZGK"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '3jhLe3tV' \
    --namespace $AB_NAMESPACE \
    --userId 'V1Yi66sz' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'wQe3hTc1' \
    --achievementCodes 'KCPpRZdm' \
    --limit '98' \
    --offset '19' \
    --sortBy 'contributedValue:asc' \
    --tags '["UhgxNLgH", "Lbs14KUA", "YvXwbJsu"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'Ad9oTA3A' \
    --namespace $AB_NAMESPACE \
    --userId 'IuPAUb1O' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE