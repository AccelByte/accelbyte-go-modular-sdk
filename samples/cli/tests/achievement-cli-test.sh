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
    --limit '96' \
    --offset '22' \
    --sortBy 'updatedAt' \
    --tags '["5MMzXKGO", "0mlV3EQ8", "YSOBn0LU"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "eVck8j85", "customAttributes": {"otuy5WcZ": {}, "92hqYbyL": {}, "nmvEdyRT": {}}, "defaultLanguage": "v08QTl11", "description": {"zYjwJO1U": "RascfPnA", "AHlTbldL": "N95ER8VU", "Flxk4Xty": "qRS73RIF"}, "global": true, "goalValue": 0.6487595802017287, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "2vc0c3aL", "url": "fBawyUhx"}, {"slug": "PumvpBIB", "url": "sCoXlmxG"}, {"slug": "ExWg3g2S", "url": "aOpto06j"}], "name": {"Amjw77IR": "CLPFSSB6", "nxlna1hN": "G8oSZ9Yh", "l85cdqMM": "oc2uckYo"}, "statCode": "ZuTu7w7k", "tags": ["xar153Iw", "v1XM7tod", "5JJIIHyL"], "unlockedIcons": [{"slug": "5IbbXIjx", "url": "EYdllWVA"}, {"slug": "ajT8NZLx", "url": "HxQ6Gzq4"}, {"slug": "g5putM3R", "url": "1oNMiqDr"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["7wRSRIxV", "2lmZiBg2", "UqBsb6fv"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'AyuTpf0v' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'JRc3WaKf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'zKPnd0xh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"yRvNkdII": {}, "uLlso9ex": {}, "r8tNRdpd": {}}, "defaultLanguage": "wNtHqhFr", "description": {"lpXNoO8o": "wCH7vGO7", "eqIcz9EE": "VO0FulMj", "4pmgwt5G": "AyxpN6rd"}, "global": true, "goalValue": 0.8581981959454879, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "9as5nOAM", "url": "RUgeT7VN"}, {"slug": "cvq8wK6K", "url": "HLhLZ5Ho"}, {"slug": "5jnpMdbd", "url": "H8xGnSNs"}], "name": {"VzzHNvZL": "Ao1tYgXm", "0bGlJUbQ": "TopmA4BY", "6gDZWSAx": "QvozPV0k"}, "statCode": "d1CvZY4E", "tags": ["01wlCUi3", "cAiDiT0h", "y7b9lOfv"], "unlockedIcons": [{"slug": "BIPiKShS", "url": "jW2vTPio"}, {"slug": "aCdZ6YDn", "url": "JajibpI0"}, {"slug": "AV1h67UH", "url": "6TWayHAD"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'efEbcmEO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'jSskDa3G' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 1}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'HCDpJZIG' \
    --limit '84' \
    --offset '75' \
    --sortBy '5l21Ka8p' \
    --status 'ESseygmW' \
    --tags '["EItmSug6", "PU7iEwQ5", "MKK2gpQz"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'exYLzMmj' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '57' \
    --sortBy 'UwrlsONc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'xdTC2TpH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --name 'cT7Gjt4C' \
    --offset '16' \
    --sortBy '3hbXTeY3' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Mxe8M5kn' \
    --limit '45' \
    --offset '44' \
    --preferUnlocked 'false' \
    --sortBy '3zUl1MmB' \
    --tags '["4VWvptXA", "alzrN2AY", "etZwNilQ"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'a2VVUZKw' \
    --namespace $AB_NAMESPACE \
    --userId 'Hq07lJx1' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'Y5znKFyj' \
    --namespace $AB_NAMESPACE \
    --userId 'ejLNnsnC' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'aJCx1JjP' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'ea3j6pvz' \
    --achievementCodes 'mZ349eY3' \
    --limit '88' \
    --offset '54' \
    --sortBy 'ko1SH0t5' \
    --tags '["jvUwM2Jt", "RTpHQIg7", "EQ39BncO"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '41' \
    --offset '98' \
    --sortBy 'createdAt' \
    --tags '["INiwVAWV", "z9ONulJI", "XKPOQRBL"]' \
    --language 'EB8Ixjzw' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'rzRKFKJU' \
    --namespace $AB_NAMESPACE \
    --language 'JkFaScNh' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'VFnl0Fsw' \
    --limit '57' \
    --offset '97' \
    --sortBy 'rDZGOMVc' \
    --status 'rHMQZ1A6' \
    --tags '["ZGQt5wi8", "SIYeGmFV", "P5jnsQuI"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'GPSInWUm' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '61' \
    --sortBy 'H6OHvAeM' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name 'iPOwBwB6' \
    --offset '46' \
    --sortBy 'Dw4IPMxO' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '6gsgtkXE' \
    --limit '92' \
    --offset '28' \
    --preferUnlocked 'true' \
    --sortBy 'q6Cndk7e' \
    --tags '["tyJJX5ik", "QEzED9p4", "QCNy6vNi"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'cUhlr2kp' \
    --namespace $AB_NAMESPACE \
    --userId 'efSw7j98' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '0qyJeQIa' \
    --achievementCodes 'Fh4sGGL4' \
    --limit '96' \
    --offset '71' \
    --sortBy 'TywXoZOH' \
    --tags '["4eu6BizR", "Q1oyU4K1", "jnBjTkIf"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'VNY1vpEy' \
    --namespace $AB_NAMESPACE \
    --userId 'imnIFZh8' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE