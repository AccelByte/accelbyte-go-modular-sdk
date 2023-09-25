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
    --limit '40' \
    --offset '21' \
    --sortBy 'createdAt' \
    --tags '["G46dh0Bd", "50RhXQqO", "2EzCqJwH"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "rp8UJPrJ", "customAttributes": {"6CGAyC7B": {}, "mT2nLuE0": {}, "o5QCFJUO": {}}, "defaultLanguage": "KuLEE2IG", "description": {"gynRcJx6": "cOW1TJ44", "vwRe2eeQ": "yk0ma7bn", "lsejrjOG": "oep36vAz"}, "global": false, "goalValue": 0.27619443016830514, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "kUBFgqMS", "url": "C2lNnF8M"}, {"slug": "p5GtINim", "url": "1rabyL3T"}, {"slug": "JvtM7UvS", "url": "r104Gml1"}], "name": {"uY3l5ldG": "FySw3fMX", "62qWoS3C": "6kspo4Wu", "OGmzhMwu": "dk5hs6dN"}, "statCode": "jsD3UPqh", "tags": ["T4knKi0q", "boAd9dvO", "9ZfIdAun"], "unlockedIcons": [{"slug": "wECQRPxg", "url": "m3OYD3oz"}, {"slug": "4S9eDila", "url": "OIWyQeow"}, {"slug": "PPFyzWkU", "url": "ShdhAmSb"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["Bx2It9oP", "nxselvgr", "VRueSZ0A"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'rtcuwmze' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'BGplZh9Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'IgL0g38D' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"F67dcA1i": {}, "MkMSeMbw": {}, "3YiLjMhC": {}}, "defaultLanguage": "nNTLzTfs", "description": {"xjpyeupR": "XYEpbqsd", "rgF0E3tl": "Kgv9JkfW", "puQYIYom": "0Wxq5NvS"}, "global": true, "goalValue": 0.4765165870591165, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "iFSEgRXH", "url": "Zl4Va4h1"}, {"slug": "nHfSqvHb", "url": "WlLla1V3"}, {"slug": "6mz5rDOe", "url": "nixa6Zv7"}], "name": {"2VPfmvn4": "bkSSEeVR", "zkmHjVLZ": "QR8Ii6T2", "mSuvp7T5": "1alAk9to"}, "statCode": "7B8cYIA4", "tags": ["VKIDJP12", "s8zm2Apo", "7oL29XUq"], "unlockedIcons": [{"slug": "KAfIHsCm", "url": "ZOLk4dgh"}, {"slug": "lvM0YX4n", "url": "8jRhMOL7"}, {"slug": "hCstrtux", "url": "7p4TcjKX"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'SzB9Y3ky' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'G6FyUkp1' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 85}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'Fetm3aB5' \
    --limit '26' \
    --offset '24' \
    --sortBy 'gaynmQ2W' \
    --status 'hQ1F2JKr' \
    --tags '["Lv1s0cED", "sSWXjzsd", "uIflaBeC"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '58nj2EhL' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '60' \
    --sortBy 'pdSVDKEz' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'FACY7EMw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --name 'tUSX8VT1' \
    --offset '88' \
    --sortBy 'ICQTD2zT' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'twGqhJE9' \
    --limit '69' \
    --offset '72' \
    --preferUnlocked 'true' \
    --sortBy 'ZNPoW5om' \
    --tags '["RvnxHe8q", "lL0gu21Y", "4qg9lvxw"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'HNn1lnxf' \
    --namespace $AB_NAMESPACE \
    --userId 'hwP5jhrp' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'XvI3shHI' \
    --namespace $AB_NAMESPACE \
    --userId 'hPBtyZsL' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'k4bE20iB' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '0V67p5zq' \
    --achievementCodes 'nELqKhDb' \
    --limit '100' \
    --offset '90' \
    --sortBy 'uUZKXjK9' \
    --tags '["Ch2t0tOP", "tNeyMBf2", "xU27df0U"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '20' \
    --offset '78' \
    --sortBy 'listOrder:asc' \
    --tags '["ZRtrAEYr", "uwj0w8b6", "cdYRuuO1"]' \
    --language 'v8vqfr4U' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'F1VELu0S' \
    --namespace $AB_NAMESPACE \
    --language 'bZhv03FC' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'VmOfVDVg' \
    --limit '14' \
    --offset '29' \
    --sortBy 'P15NdfXL' \
    --status 'ui14H3cs' \
    --tags '["LcNtdJXE", "5B95a5NS", "avL73M9J"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'jZ6r65Rc' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '43' \
    --sortBy 'IBNpjkgc' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --name 'eIlzdEbb' \
    --offset '80' \
    --sortBy 'QmYq7rP3' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '2ycV6Ntm' \
    --limit '64' \
    --offset '96' \
    --preferUnlocked 'true' \
    --sortBy 'esdMtGbW' \
    --tags '["EttMGufT", "C4sM37fN", "WFRtTDue"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'FYEaXPUC' \
    --namespace $AB_NAMESPACE \
    --userId 'x6JugeLt' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'FSvNjq2d' \
    --achievementCodes '9ZlnIQWB' \
    --limit '0' \
    --offset '100' \
    --sortBy 'bMia8MLp' \
    --tags '["GQFQOTaF", "pcWYSyVS", "kkCvOoVY"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'COdCiQ0U' \
    --namespace $AB_NAMESPACE \
    --userId 'X9MgGxtX' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE