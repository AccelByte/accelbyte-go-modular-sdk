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
echo "1..27"

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
    --global 'false' \
    --limit '73' \
    --offset '16' \
    --sortBy 'listOrder:desc' \
    --tags '["kFI7UnYU", "mic7uNSD", "dkwyIkEy"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "NrZ9oKCN", "customAttributes": {"ECr9IlWh": {}, "v9FcMVOJ": {}, "ZDdc9qdj": {}}, "defaultLanguage": "N6nNCdZV", "description": {"0lnIJt9A": "TZMQHWWD", "0sGF9lua": "GRPBN6uG", "0fRELeMf": "G1RPLK9s"}, "global": true, "goalValue": 0.23053804508918396, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "64bX4fPR", "url": "MGgiM8ne"}, {"slug": "YjODtD33", "url": "fLNiG6j5"}, {"slug": "JG9avyIj", "url": "BWnKKPXI"}], "name": {"Ojfrxqw1": "IYqKrcZo", "72M3Euba": "cfPFE0gx", "1ChWGfvT": "H7ymAWYN"}, "statCode": "cTTCp8Fy", "tags": ["GCB79HJA", "k9PybsFp", "IuyWlNsZ"], "unlockedIcons": [{"slug": "47MyYhbb", "url": "nyMJnvYt"}, {"slug": "qT2ItfAN", "url": "QBV9Yz34"}, {"slug": "DaIkTRGG", "url": "utmVp0jn"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["ybmIOfM4", "tNRrUhaJ", "UQVB7UbB"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '9nQV7SiA' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'GBJFB0T5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '6f8jMg8o' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"SOOj3CKH": {}, "a1MHBr43": {}, "eg2OtDBo": {}}, "defaultLanguage": "uumKNIQa", "description": {"WHmCqq4N": "ybo7t8FV", "pHp60YmG": "X04rNX4l", "rztEMfxU": "63gaTdqz"}, "global": false, "goalValue": 0.3236983798917037, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "HA2thNwI", "url": "uw2CBhwE"}, {"slug": "ZjCtfBin", "url": "PVJsL38V"}, {"slug": "kcmry4xY", "url": "5crlF8G7"}], "name": {"a6JPBIEh": "hhynrEV7", "UNWvt27Q": "5a9iQQZz", "Q02nnOtj": "ZqO0LxXJ"}, "statCode": "ZSSnbw3c", "tags": ["FeJAxRXk", "uYikcvpB", "2pp1BawK"], "unlockedIcons": [{"slug": "bvMYoSXr", "url": "8e2hf8CH"}, {"slug": "ILGJnQ1q", "url": "4klDFs5n"}, {"slug": "0DSx4yRv", "url": "pT8Ls4VY"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'sywqKsT1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'eG8UGxBt' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 35}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'MSksTdBY' \
    --limit '2' \
    --offset '9' \
    --sortBy 'DfiMWnla' \
    --status 'dtE26LUZ' \
    --tags '["IzhzAb6C", "FF2OnXJK", "iDIlCReI"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'zSYrhVvB' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '98' \
    --sortBy 'Wkmqcd7N' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'WaWUkFAz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --name 'Lv6c0oVt' \
    --offset '100' \
    --sortBy 'SlsmiSo9' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '4ZIgrUxl' \
    --limit '41' \
    --offset '10' \
    --preferUnlocked 'true' \
    --sortBy 'uGmGA1tS' \
    --tags '["E4KJNhPI", "TulSJltO", "U0CyEVoT"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'cYHMF4RQ' \
    --namespace $AB_NAMESPACE \
    --userId 'oqpiERh5' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'nxebP5hr' \
    --namespace $AB_NAMESPACE \
    --userId 'eeKo47RG' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '2ifTQZDR' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'lD4aFloP' \
    --achievementCodes '6VwgkHN7' \
    --limit '90' \
    --offset '18' \
    --sortBy '5h8l4gUU' \
    --tags '["Du4q9jLt", "Ildw6uoa", "Qom1iS5m"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '47' \
    --offset '60' \
    --sortBy 'listOrder' \
    --tags '["X15mz1sJ", "6iC7hB0I", "uJmcEeFs"]' \
    --language 'FRUi2jg7' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '8JTo5oB7' \
    --namespace $AB_NAMESPACE \
    --language 'sXZQCrqM' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'Ef0qSgnC' \
    --limit '55' \
    --offset '47' \
    --sortBy 'HrbtJ5VM' \
    --status 'ISzrhIDz' \
    --tags '["9XZaCe4A", "7WKmIoxv", "V0blcHcs"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'QW59GZEt' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '58' \
    --sortBy 'gQ97tkAG' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --name 'xUHGv6YB' \
    --offset '33' \
    --sortBy 'RfbLeiWX' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'DDWxd7kG' \
    --limit '31' \
    --offset '57' \
    --preferUnlocked 'true' \
    --sortBy 'UUlIVPAK' \
    --tags '["uTPbOUFP", "oHMwsVVN", "XkCwoh7j"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Qdg9QaOP' \
    --namespace $AB_NAMESPACE \
    --userId 'eUoLt8xK' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '593hRJu5' \
    --achievementCodes 'T0YxPdu8' \
    --limit '46' \
    --offset '6' \
    --sortBy 'u7b90WQ1' \
    --tags '["JXX3NXzV", "I4d69UH3", "Whj8oj2R"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'VggrxWN2' \
    --namespace $AB_NAMESPACE \
    --userId 'BQb3DL2D' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE