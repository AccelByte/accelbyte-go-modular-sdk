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
    --limit '35' \
    --offset '32' \
    --sortBy 'createdAt:desc' \
    --tags '["4rdmMgNK", "zxlHm2Lu", "KgZoyAlK"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "nx8MB5dk", "customAttributes": {"wU5DUSbQ": {}, "fkF9YIrR": {}, "8wBXlzeY": {}}, "defaultLanguage": "MhHATIRF", "description": {"1IADaOdo": "2ssg2QQG", "w5zwLe3Q": "LjRx8Tre", "CyhiSyvb": "KzfzZsB5"}, "global": true, "goalValue": 0.014868172182770922, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "CvbzDued", "url": "wgZIPJKl"}, {"slug": "ZfKKYmkf", "url": "qbdrIDXK"}, {"slug": "LgeSoccu", "url": "UwfB64Od"}], "name": {"CoZEe8s7": "xZhF6uID", "L3Qzhegr": "8Jo410PE", "r6HYxkfm": "VCBpBqoD"}, "statCode": "irGDvOkM", "tags": ["OaLFGwbu", "t0nOV3tE", "id5v1zje"], "unlockedIcons": [{"slug": "8rTY2ncg", "url": "OGYtagy3"}, {"slug": "Gu4exiwa", "url": "Jq7n2BlD"}, {"slug": "52OwspmZ", "url": "GAJMVSpY"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["ThrVzTdm", "Qt1gluRZ", "5zoyWmRl"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'jSzBJ3kW' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'NjG48McO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'ygq6umIT' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"I7TLDTrL": {}, "NO4Bv618": {}, "LppLpQpt": {}}, "defaultLanguage": "hhwXvugo", "description": {"5DmbuxGG": "6oxyS660", "FwMCWY1p": "spDzePIM", "TVjoqm3e": "PbmWIYzX"}, "global": false, "goalValue": 0.17267932009976916, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "mRkzUq6x", "url": "8kBr3w6e"}, {"slug": "N6mq7q8g", "url": "OQDueuDm"}, {"slug": "LQswy3JN", "url": "BAGnihPU"}], "name": {"f3hlIMcG": "946MOfdY", "j71acRGx": "s8WlzKJp", "XAmqY0XC": "bNjLkyKg"}, "statCode": "ihCZ3wDQ", "tags": ["BXC6RSK8", "aDmJP7jD", "UlgTfQkW"], "unlockedIcons": [{"slug": "YLPPRhEk", "url": "DxjYUT75"}, {"slug": "6wffuCuG", "url": "I4cnnpzB"}, {"slug": "BT5kFbBa", "url": "mEh32FcR"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'RdHS8itn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'Z4WVNH4B' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 0}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'W0GJEqq1' \
    --limit '64' \
    --offset '55' \
    --sortBy 'EQ8eyJJp' \
    --status '5JnyQIZG' \
    --tags '["NG3ZTQ2m", "VIM1y8VU", "HYhDDynL"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'twJHepwU' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '48' \
    --sortBy 'SYkXzgke' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '21FG8m3b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --name 'B5cEKT85' \
    --offset '49' \
    --sortBy 'GAL9Vwr5' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'T7eMfkdm' \
    --limit '86' \
    --offset '4' \
    --preferUnlocked 'true' \
    --sortBy 'UZ7eD2qB' \
    --tags '["Z809hIBj", "jEtSIZss", "Ray517Y7"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'Va6MZVpG' \
    --namespace $AB_NAMESPACE \
    --userId 'PczeWjko' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'D6peaSpE' \
    --namespace $AB_NAMESPACE \
    --userId '515XIPLd' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'wQj5fLVI' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'ybmsxhQJ' \
    --achievementCodes '4x8QwXWn' \
    --limit '51' \
    --offset '18' \
    --sortBy 'zIdPhWHZ' \
    --tags '["N0cNbM0E", "arlKi09r", "PzfgE10b"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '90' \
    --offset '8' \
    --sortBy 'updatedAt' \
    --tags '["34PaJ9jM", "4YMcAuei", "DYgukIhN"]' \
    --language '38i8tRTV' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'zLkBUqgD' \
    --namespace $AB_NAMESPACE \
    --language '4gqFpYPb' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'Mm6OmpRH' \
    --limit '96' \
    --offset '53' \
    --sortBy 'UKR9edEy' \
    --status 'Jl5ANliT' \
    --tags '["DEqsGqg9", "WB4LYnkk", "NlmHesgK"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'HzNZvkmd' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '89' \
    --sortBy 'x2tdDa0l' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name 'pM8iVufQ' \
    --offset '76' \
    --sortBy 'mQkHZrh0' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'kuDwJjFL' \
    --limit '54' \
    --offset '8' \
    --preferUnlocked 'true' \
    --sortBy '6PfCkAAE' \
    --tags '["enWz1gtd", "lk1MAjFR", "Xc7cN46M"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'MBglTXOQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Ym1gPHEG' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'kfYagqbe' \
    --achievementCodes 'WTuMLifA' \
    --limit '15' \
    --offset '61' \
    --sortBy 'h3K1DbRD' \
    --tags '["Zebl1lQm", "BXgIDhUn", "ClzUmn1f"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'qNWudOYj' \
    --namespace $AB_NAMESPACE \
    --userId 'AAcbKRmr' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE