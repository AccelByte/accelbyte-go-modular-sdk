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
    --limit '37' \
    --offset '89' \
    --sortBy 'listOrder' \
    --tags '["d3egDyUG", "VaZtBHZ2", "J16P5JJH"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "I5W2e53T", "customAttributes": {"4CwGuq0M": {}, "1MTf51Mk": {}, "JONTpGJa": {}}, "defaultLanguage": "vHpSG3Fd", "description": {"a457jNUG": "R0SFOBys", "SK8VQXSq": "tjFen4UD", "vZvztzsM": "QU9KF8AY"}, "global": true, "goalValue": 0.840240008700598, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "DOHad1h6", "url": "d1omrPiI"}, {"slug": "ttRRoEEE", "url": "4DGd7L2Y"}, {"slug": "yCUyLaig", "url": "6UXXBg6i"}], "name": {"lUcjKQyq": "J7cgw3Wx", "5UPF7l82": "NCjxGufn", "NI5muCd4": "QcJR88pz"}, "statCode": "DRR77qHs", "tags": ["OoYaKsZb", "bVitXYxf", "rdrt6S8d"], "unlockedIcons": [{"slug": "x5jsw1PO", "url": "R8l2PFLj"}, {"slug": "rpJsZZD5", "url": "XyOjpJi2"}, {"slug": "aqna6nS9", "url": "20BdqS7A"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["W2oOZkh4", "DUqbJgY7", "wyo9EnOD"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'UBmeGE3v' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'zKJXXnG2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'zaYstOSL' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"q2TMWowg": {}, "voYgOKiE": {}, "agPXhEv4": {}}, "defaultLanguage": "14TjQxou", "description": {"8DeY5Ggb": "oUXUSD2y", "okPkLjuw": "HgjyUgQC", "Y5LX0Swr": "n864UUVl"}, "global": false, "goalValue": 0.0028920443298993126, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "mF765H9R", "url": "BiTwzjm4"}, {"slug": "gFZqpGi1", "url": "6bapJJHZ"}, {"slug": "UCbT44Mj", "url": "FWLTGvh1"}], "name": {"2Soe0gPZ": "Zshe1FD9", "7Qg3nitJ": "W2zcF3t9", "ur3dpOhj": "NwF5N7JZ"}, "statCode": "mp3V2uy2", "tags": ["niule9Vl", "Zy4rDVqq", "K7fm5TD2"], "unlockedIcons": [{"slug": "ZZ3lWBk7", "url": "fkMWV0nT"}, {"slug": "isH9Dy1c", "url": "8y2Un2yk"}, {"slug": "9pusMUVY", "url": "askP6VBR"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'iasAMihO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '0n6zf9Rq' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 31}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'qVXrRVoN' \
    --limit '80' \
    --offset '42' \
    --sortBy 'E5zVnuw2' \
    --status 'zBqWU2Zw' \
    --tags '["c0SSO6e7", "mIibNkVU", "gi9NI7Ms"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'EGvFsPwo' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '38' \
    --sortBy 'zdtsuRIV' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'IpAduMhY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --name 'rGl3cZXX' \
    --offset '94' \
    --sortBy 'iuXXupaq' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'tc0zD0Zj' \
    --limit '46' \
    --offset '73' \
    --preferUnlocked 'false' \
    --sortBy 'hpNZHLAu' \
    --tags '["rbaNCbf3", "N4qmvR5u", "MiJa9mZR"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'hH5wchwd' \
    --namespace $AB_NAMESPACE \
    --userId '1v5JXuJ3' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '8fH6YN1Y' \
    --namespace $AB_NAMESPACE \
    --userId 'AEgSeWO3' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Lcwr2YdC' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'IS7LpMyj' \
    --achievementCodes '1oeVKNtL' \
    --limit '99' \
    --offset '11' \
    --sortBy 'n4O9qTLR' \
    --tags '["wUjoM7PN", "0BGcMOaW", "CQRFNg0B"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '10' \
    --offset '15' \
    --sortBy 'createdAt' \
    --tags '["wGQ155XF", "Kp2Hjj93", "F6fYO9aW"]' \
    --language '3LRqavkA' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'g0sW0JQr' \
    --namespace $AB_NAMESPACE \
    --language 'HZsV1QuY' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'W9CeRezQ' \
    --limit '63' \
    --offset '78' \
    --sortBy 'VJ6R4V9w' \
    --status 'oTS8llGC' \
    --tags '["dGGUonMQ", "ZVvA6wK5", "m43xSLgv"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'hRcSr4RB' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '3' \
    --sortBy 'kV9lc3Zo' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --name 'w1bItKsy' \
    --offset '43' \
    --sortBy 'ZgZcg5qf' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '0j1c6Qly' \
    --limit '3' \
    --offset '97' \
    --preferUnlocked 'true' \
    --sortBy 'wQq9gbcH' \
    --tags '["m2Bkp1P3", "mDK5KeEF", "yBFTlEqc"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'dW2bqXYf' \
    --namespace $AB_NAMESPACE \
    --userId 'UUm9dRt7' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'RA0TmDpi' \
    --achievementCodes '60vCrK1p' \
    --limit '28' \
    --offset '28' \
    --sortBy 'Ldd6HvpO' \
    --tags '["i8Dy9LXa", "ZrA1RAPW", "FXolwfXn"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '7NXszCcG' \
    --namespace $AB_NAMESPACE \
    --userId 'L9SrR32C' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE