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
    --limit '63' \
    --offset '21' \
    --sortBy 'listOrder:desc' \
    --tags '["qmyJPYL4", "FZXjwVWg", "ONM6Bo9y"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "AWMMuqvg", "customAttributes": {"ugCu1FWg": {}, "D5TxeLp3": {}, "Pbe3g1Sw": {}}, "defaultLanguage": "ud0pnpZq", "description": {"BN2HeP45": "AC0tIS9i", "frgVqjLt": "jwb6WP7O", "0F72rwQq": "kB0AHEgE"}, "global": true, "goalValue": 0.2556314333867291, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "q5oRNj1n", "url": "7RtBsoan"}, {"slug": "guyt600K", "url": "9BuvUwS8"}, {"slug": "mR5GgcXP", "url": "6lZWqKnX"}], "name": {"S6Wf0myg": "YXLRigaK", "d4vHkcIP": "CeINplhY", "6vkwLL8v": "LOdCsdnp"}, "statCode": "KYnfXNKP", "tags": ["izZglwMH", "82ot7JE0", "RzyhSDax"], "unlockedIcons": [{"slug": "wN16vDQe", "url": "B2dO7pLt"}, {"slug": "qiyN943M", "url": "qlDaA4zM"}, {"slug": "LeygG56S", "url": "XUIvPGnQ"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["s5RW6ZV9", "8yufIFwR", "mAXWYuWy"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '9yWHvPI1' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'GTTHbPmg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'PxkqroqJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Gk5J07dC": {}, "oo7dbC5G": {}, "9egnjGrp": {}}, "defaultLanguage": "VUYmiOZI", "description": {"5Iewsw0X": "XDWov49r", "OQziWx4N": "USdDpoS3", "FIZ05c9W": "lLIwOspY"}, "global": false, "goalValue": 0.8408598733254647, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "ez2oJN8r", "url": "RfvHGRPc"}, {"slug": "t0l4XLpH", "url": "EnylbaGH"}, {"slug": "jRkNPhDC", "url": "1xwA3cF7"}], "name": {"OoupzHiX": "IucOWGKs", "6kiUsIWI": "mV4t6sUy", "7NH2vlpM": "CraY5Qqn"}, "statCode": "HNR30sCy", "tags": ["lN556XJb", "Hekh09Lu", "UOVOJ7KH"], "unlockedIcons": [{"slug": "J4YgltC6", "url": "u3Q6DK8P"}, {"slug": "YMogQnI6", "url": "v7Klu75c"}, {"slug": "4QZTjLDX", "url": "xPehcxZ1"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'O1zSA9YY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '95pfXvud' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 68}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'gLIAqjD6' \
    --limit '41' \
    --offset '59' \
    --sortBy 'ZGSnUM7x' \
    --status '7kYotEsU' \
    --tags '["NqdXxb76", "AuaZgU2r", "hVPn955j"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'HJhryTI6' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '22' \
    --sortBy 'sPui5jeJ' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'TT1aMmuv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --name 'zBfiHhQk' \
    --offset '35' \
    --sortBy 'gXSiCMxq' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'aKDmY8of' \
    --limit '77' \
    --offset '36' \
    --preferUnlocked 'true' \
    --sortBy 'dcQm5i9O' \
    --tags '["6AypZPSH", "QKjoZNIE", "ZxShuCmb"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '8QpuzyuW' \
    --namespace $AB_NAMESPACE \
    --userId 'vVLBGWqn' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'ciEJVxfD' \
    --namespace $AB_NAMESPACE \
    --userId 'oY2N0gnj' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'mvKusiEp' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'UCequPCK' \
    --achievementCodes 'nSpxzOiP' \
    --limit '95' \
    --offset '14' \
    --sortBy '18YRKakY' \
    --tags '["4gfXprvr", "8oCSMANf", "NgMzaG6P"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '16' \
    --offset '52' \
    --sortBy 'createdAt' \
    --tags '["a4YqqvAF", "982jGm9m", "iZtM8zVI"]' \
    --language 'b18ufb1N' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'oQDFSYrZ' \
    --namespace $AB_NAMESPACE \
    --language 'dGrfleKz' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'uROQlNMw' \
    --limit '8' \
    --offset '54' \
    --sortBy 'Eh7t032E' \
    --status 'gHssKpSb' \
    --tags '["Kn0occp7", "4XilqZl7", "dbUoNyfr"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'T8pnN2xm' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '72' \
    --sortBy '40zmbDP6' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --name 'uq9sBKC5' \
    --offset '80' \
    --sortBy 'tU66qtrX' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'WbJPGYHF' \
    --limit '0' \
    --offset '18' \
    --preferUnlocked 'true' \
    --sortBy 'eP8qtGlP' \
    --tags '["rYsYC6Xf", "zqfVbHuO", "4VjCb7gy"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'dQuezRPh' \
    --namespace $AB_NAMESPACE \
    --userId 'vmTuByDh' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'IbVU7bYE' \
    --achievementCodes 'fJWFqMc8' \
    --limit '45' \
    --offset '85' \
    --sortBy '2nw3ioSh' \
    --tags '["kkWslDDt", "XYqvcK96", "8uOKvTyi"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'vtm437re' \
    --namespace $AB_NAMESPACE \
    --userId 'whIiiRYQ' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE