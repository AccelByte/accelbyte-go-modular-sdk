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
    --global 'true' \
    --limit '3' \
    --offset '32' \
    --sortBy 'updatedAt:desc' \
    --tags '["BqWj91jV", "loc5ALyr", "ciwkZ3MN"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "hL8vEKHd", "customAttributes": {"SlWFQacV": {}, "u2yiB8mu": {}, "hp9xlApQ": {}}, "defaultLanguage": "Kc2W0EgD", "description": {"XcfOn5q0": "l5E5iPWl", "wJWt8K4Z": "v4735hiO", "umEHbFjJ": "z6k5DB47"}, "global": true, "goalValue": 0.20871398928457618, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "DDDpgXJR", "url": "1AIXr6rL"}, {"slug": "LNjq6VAs", "url": "6VBYmpgd"}, {"slug": "Wzt90twM", "url": "bTFTBM1l"}], "name": {"T3cBJ6pw": "PN5E5WRf", "fa1C2cqO": "H6eahIkf", "l4AQ9F6j": "JrGftKGX"}, "statCode": "170AVINf", "tags": ["YAVOFVZt", "ghIydERE", "3Rxepv6V"], "unlockedIcons": [{"slug": "V8sjZk25", "url": "lAaqb3Dl"}, {"slug": "8aoNKvd6", "url": "ApuTSehy"}, {"slug": "pivDnP6C", "url": "Bxzqscei"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["RhfbCigP", "iCHEUeCq", "p45ezuBe"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '5LyVUzAj' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'q34T18KF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'hpkgHu7y' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"fdF5krlo": {}, "qqJ3ycYk": {}, "TNTEdVL2": {}}, "defaultLanguage": "XzWJxlCu", "description": {"deSSaBnm": "IfXeyPci", "xNQNKIbK": "aq3rz7Zj", "Req9gMT5": "SymZ1J01"}, "global": true, "goalValue": 0.8852361010098351, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "isu3ARj6", "url": "RumjeWpp"}, {"slug": "V2ubIwFl", "url": "zJG0AWEb"}, {"slug": "RQN9EypD", "url": "Jp6NfbRq"}], "name": {"IbB2F0J0": "WRZQxdED", "N1YzApCQ": "pfrh3iJc", "dxpdgoAy": "jfSim2AO"}, "statCode": "CSV0rgzE", "tags": ["MpSdy88Y", "sQZ1ygzF", "rCL59CmH"], "unlockedIcons": [{"slug": "MWA2gWoS", "url": "YuGIE3ZI"}, {"slug": "q5N5aSyQ", "url": "G156Awhl"}, {"slug": "SmMrztoc", "url": "5SZnNvDM"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'FJKIR98W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'fADiujqw' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 39}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'X8eCubdl' \
    --limit '23' \
    --offset '77' \
    --sortBy 'sZ0fopG0' \
    --status 'FzMzBEpQ' \
    --tags '["EP6KmhcX", "UqtG2HTJ", "HirZqzqo"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'NV5dKJTD' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '61' \
    --sortBy 'k2UGUA0n' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '3skffa4o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'Lh1CQkfX' \
    --offset '5' \
    --sortBy 'ALGBydvv' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '2dW7iNEB' \
    --limit '5' \
    --offset '92' \
    --preferUnlocked 'true' \
    --sortBy 'VSjnYvOj' \
    --tags '["rh6JQbBT", "NQCUMvTN", "IegwfHnW"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'EDOz7USw' \
    --namespace $AB_NAMESPACE \
    --userId 'M09GMg1e' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'WWkrjPvj' \
    --namespace $AB_NAMESPACE \
    --userId 'N8qwyXnz' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'eDDmXova' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'jhwJVBlK' \
    --achievementCodes 'AUVma43y' \
    --limit '15' \
    --offset '74' \
    --sortBy '5BZVCLXo' \
    --tags '["z9cFf4aV", "Cgc2ujOs", "YZ4Bt5mk"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '13' \
    --offset '92' \
    --sortBy 'listOrder:desc' \
    --tags '["9uyY4y82", "x2WB5tJ0", "vO8Dnnsl"]' \
    --language 'IHsZQqZR' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'rDkcrztq' \
    --namespace $AB_NAMESPACE \
    --language 'SIXLAs2R' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'gI1DADzI' \
    --limit '42' \
    --offset '79' \
    --sortBy 'Un5igPhV' \
    --status 'z5Bkfq4R' \
    --tags '["M6zUK8JQ", "ZruDJoQo", "7Sv9hpID"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'TPSqEpSp' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '77' \
    --sortBy 'g9w7RLJy' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --name '8BJSU5Ip' \
    --offset '46' \
    --sortBy 'j9g8CJQi' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'gGrC1UvB' \
    --limit '7' \
    --offset '80' \
    --preferUnlocked 'false' \
    --sortBy '5rHno2oo' \
    --tags '["9SnUJ8w9", "Lyo0no4D", "kg9MeB1F"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '5rgU4XXF' \
    --namespace $AB_NAMESPACE \
    --userId 'c3BuPGZg' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'oszhYdaL' \
    --achievementCodes 'L3bJD2nA' \
    --limit '77' \
    --offset '61' \
    --sortBy 'xxLubSqF' \
    --tags '["mycU7Rj8", "lEJ19gHa", "aoyvp7de"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'e0v7nNcL' \
    --namespace $AB_NAMESPACE \
    --userId 'ftyxv4HM' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE