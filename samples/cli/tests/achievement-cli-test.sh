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
    --limit '68' \
    --offset '21' \
    --sortBy 'updatedAt:desc' \
    --tags '["c4M4PDcC", "OV59E40m", "OhaKB2Sx"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "ZXURghPn", "customAttributes": {"noLcILM1": {}, "xSwSxcQ1": {}, "jVp8M9bp": {}}, "defaultLanguage": "LwALRjRm", "description": {"N76KJ7BC": "vnVotyTC", "X3xqEVPw": "7QYFuUVX", "7Lfqtddr": "Dl1biNhA"}, "global": true, "goalValue": 0.4027549631817018, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "uOUswl5g", "url": "DqV96cNB"}, {"slug": "R8SZloP3", "url": "pEA0YzY4"}, {"slug": "nAuOiIcU", "url": "8bcxfYbJ"}], "name": {"R7ID7hek": "5DwUKOkg", "z1QYVkjg": "39Uz5p0r", "9fjSSK1B": "QdVITKum"}, "statCode": "Fu1thPeN", "tags": ["SxFTkXoD", "u3Yiq47S", "jf9e0D51"], "unlockedIcons": [{"slug": "SXkSb6Ut", "url": "YAYHHajz"}, {"slug": "bOT455ZQ", "url": "WHp8E1cP"}, {"slug": "nYLBnIlu", "url": "bbD94chM"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["d7whG7uZ", "YnpMifF1", "pi3Dh9AY"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'Lt9T98GW' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'iG8jAIbB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'TVSvhWCT' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"EjvtRS6F": {}, "pVOxbmXo": {}, "rZQrOUdc": {}}, "defaultLanguage": "ijosnvWf", "description": {"EJ7Bx2d7": "vpoENSep", "fPEaoM2h": "1jdzKz0j", "kcVmFzqG": "LkRu1JlY"}, "global": true, "goalValue": 0.18707399500898914, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "VO8ZQUKM", "url": "vz6gaUPn"}, {"slug": "ZlVdfWf1", "url": "bTegO0da"}, {"slug": "yA8AW4EJ", "url": "8wqOyJB3"}], "name": {"TTOxvezi": "dajIFhOv", "h50xAMk8": "YBRQ7Lys", "XuFwLagX": "p8XN8eMj"}, "statCode": "j96vYPCa", "tags": ["rAi3aZse", "feXUXkvn", "DmKULfWm"], "unlockedIcons": [{"slug": "ySletJ4m", "url": "14XvfeMv"}, {"slug": "eh6KfWCI", "url": "FAB5FBek"}, {"slug": "BLNp4q8x", "url": "MOmU2cgX"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '0ll008f0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'tnSXXeSM' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 93}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'pCAhVSwP' \
    --limit '44' \
    --offset '99' \
    --sortBy 'XRbCDZnM' \
    --status '4tQoIpx5' \
    --tags '["3UlaF1b9", "UYPchQoz", "0S55eDaP"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'ZBHV00KM' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '86' \
    --sortBy '4QAIFfPB' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '55G4j5rN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name 'E2H6CeSw' \
    --offset '82' \
    --sortBy 'Aw9E1EuM' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'GjugtSVB' \
    --limit '21' \
    --offset '39' \
    --preferUnlocked 'false' \
    --sortBy '227lFFnt' \
    --tags '["zXwCEaaO", "vaB74sAn", "2RVu4jDa"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'ulRfJcDo' \
    --namespace $AB_NAMESPACE \
    --userId 'cYHsfEyK' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'ePGxBV28' \
    --namespace $AB_NAMESPACE \
    --userId '5lZaCw0t' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'i20fkO85' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'Wj7VL2r9' \
    --achievementCodes 'YZPoFZMJ' \
    --limit '6' \
    --offset '34' \
    --sortBy 'a71BYW4W' \
    --tags '["6KhV9J8T", "oSD1lHxA", "VrH6Plil"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '84' \
    --offset '2' \
    --sortBy 'listOrder:asc' \
    --tags '["AYsKML0T", "c7UxdnU0", "gkBX6FEF"]' \
    --language 'lWOlnjoI' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'yR6p3bTH' \
    --namespace $AB_NAMESPACE \
    --language 'RsVvsNQF' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '51i5e3lL' \
    --limit '56' \
    --offset '63' \
    --sortBy 'd8MJ6SXN' \
    --status '4Huq4sC8' \
    --tags '["Vonp3vuK", "cLoi4w6L", "png25aBC"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'Jt9jPvDI' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '66' \
    --sortBy 'pXVIQMLh' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name 'wmGXkZiD' \
    --offset '77' \
    --sortBy 'wFB62P51' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Mmi7KTLc' \
    --limit '100' \
    --offset '60' \
    --preferUnlocked 'false' \
    --sortBy 'NgXiDHtW' \
    --tags '["mxSlW1BZ", "tN3IRSyA", "Vaa0kY0Q"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'mSyQLbiN' \
    --namespace $AB_NAMESPACE \
    --userId 'E6kDV0av' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'jqdKt9CN' \
    --achievementCodes 'x0XFq0Y1' \
    --limit '82' \
    --offset '55' \
    --sortBy '7Z1ff7wy' \
    --tags '["yXxsnNeX", "wUNKx5Zu", "Habl79ug"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'FCLcPKlc' \
    --namespace $AB_NAMESPACE \
    --userId '97q4i7Fn' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE