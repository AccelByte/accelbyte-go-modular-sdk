#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
    --limit '59' \
    --offset '87' \
    --sortBy 'createdAt:desc' \
    --tags '["c25RZNbu", "zxrZvRbz", "XU8vz2QN"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "1SK48v5F", "defaultLanguage": "3Lpc1j2r", "description": {"NsMgcZ9W": "EnGGMS02", "EFWk0x84": "ELI8SNEg", "tvokACzq": "cpDJs2W8"}, "global": true, "goalValue": 0.4224200594153352, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "wNLY9tpY", "url": "XFj0XGXS"}, {"slug": "LQDJT0bY", "url": "m7xmu89t"}, {"slug": "FO1c3waT", "url": "RGKEueLk"}], "name": {"IrGOCSfS": "Uyn2NLOu", "sdneHtXk": "HqejjZS5", "X9VTAyvz": "IRVuJJtG"}, "statCode": "8s0HiARs", "tags": ["eD2fH6Pe", "UC2ReaKC", "3j2oV8Z1"], "unlockedIcons": [{"slug": "kLXo3xMo", "url": "hYX1BTlU"}, {"slug": "TheN3UIw", "url": "ne57npVP"}, {"slug": "7HwddBXl", "url": "HpGpOwrO"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["oxOKmMjV", "IiW7M9sl", "SguBVn0R"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'b4wiC8pJ' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '4B70sDgq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '0ADcKc5r' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "LVSDOkzR", "description": {"WmaynODB": "3WfHNKWN", "YLlLO8dJ": "R2stz3Nr", "Q0Acy1l2": "qCFBPP3N"}, "global": true, "goalValue": 0.9556814795254859, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "Nnwofhhi", "url": "4bg1Pl0j"}, {"slug": "x7IxybUb", "url": "opzr7GxB"}, {"slug": "rTOVptiR", "url": "B0BxPrN1"}], "name": {"of0j9Aie": "pbTKAE3W", "Z3qty6GI": "wYEuBiAQ", "AYdOaiDg": "7PuzKbuk"}, "statCode": "j4BD1E0m", "tags": ["JTPZTFOU", "Dj9RVniL", "0d6X1IzH"], "unlockedIcons": [{"slug": "7ENaFsEH", "url": "UQPBuyP8"}, {"slug": "wOevasbG", "url": "mN9bzaIW"}, {"slug": "GkFnl7pP", "url": "2CvRM98W"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '9uhzLZfI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '8RoYHoZS' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 59}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'AddMc0CK' \
    --limit '80' \
    --offset '27' \
    --sortBy 'BWOGWlfW' \
    --status 'fzWlSLF9' \
    --tags '["w8PHn8wO", "5hOypbmh", "09YnRyfa"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'CpyRDAv9' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '99' \
    --sortBy 'bv8tCHC8' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'ovkYZR0V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --name 'Rio7uxs6' \
    --offset '14' \
    --sortBy 'Q74lOEr3' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'scVBNlCo' \
    --limit '63' \
    --offset '66' \
    --preferUnlocked 'false' \
    --sortBy 'HhD0tbqg' \
    --tags '["ZzjqtXWm", "pzRLIDdb", "3VwylvPH"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '4ditVz91' \
    --namespace $AB_NAMESPACE \
    --userId 'GF4WF3xk' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '2HwidZjZ' \
    --namespace $AB_NAMESPACE \
    --userId 'NwLff7ZU' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Os5oHa18' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'z7u4bKBd' \
    --achievementCodes 'fVKT45UB' \
    --limit '74' \
    --offset '54' \
    --sortBy 'TEv5OJdW' \
    --tags '["p8hgRdHS", "pQXr3u16", "phFf0gG9"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '38' \
    --offset '96' \
    --sortBy 'listOrder:asc' \
    --tags '["xoVfBmBp", "N9nR97iE", "RdOfyGO2"]' \
    --language '76yJ8bFv' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'pwjape2K' \
    --namespace $AB_NAMESPACE \
    --language 'xipdOjgk' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'PgbF8yfy' \
    --limit '24' \
    --offset '97' \
    --sortBy '1XO1rM2Y' \
    --status '4Eb5Qoyo' \
    --tags '["jTuBpCUS", "owu8omle", "Vx6HxHmF"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode '60iYQ2CK' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '100' \
    --sortBy 'K3FWCpMF' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'mcXR584k' \
    --offset '25' \
    --sortBy 'BZ18KesC' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'xvzFYv2I' \
    --limit '49' \
    --offset '41' \
    --preferUnlocked 'false' \
    --sortBy 'BPDMYHG6' \
    --tags '["iC6dVm4z", "vCnuQJRA", "6w3zUowC"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'zZiq3daR' \
    --namespace $AB_NAMESPACE \
    --userId '1ifd0teC' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '7Z54jj6G' \
    --achievementCodes 'vW5zOE6m' \
    --limit '5' \
    --offset '88' \
    --sortBy 'PSjvbRlE' \
    --tags '["GuWVZvZq", "89hb0NAI", "O14w4lrT"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'd1pMYVzI' \
    --namespace $AB_NAMESPACE \
    --userId '9Y4S3UKq' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE