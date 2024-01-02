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
    --limit '58' \
    --offset '45' \
    --sortBy 'createdAt:asc' \
    --tags '["yKSZrwFB", "DCIeZSp1", "94OyzmKb"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "ZXau50p1", "customAttributes": {"T53trtnp": {}, "ijjOWOLC": {}, "44jfgKEn": {}}, "defaultLanguage": "gPFTXJQ4", "description": {"OOOoBbcF": "lcPCzq1l", "hcFeG15T": "q0zHLYC8", "svFB3Ynh": "6DNMAE2o"}, "global": false, "goalValue": 0.7908473351493065, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "cmttWyWc", "url": "E9mhM0DK"}, {"slug": "YzoTxydK", "url": "wGFK4PEy"}, {"slug": "mMrAl9Yz", "url": "sngjupwz"}], "name": {"JjxAoZqT": "XzbXTqej", "84WUzhTv": "HODHpNvf", "wucaAAT0": "9ST6VuQB"}, "statCode": "oC0ECBg7", "tags": ["HvF5iDY7", "uZTm8jMK", "GldJiA4E"], "unlockedIcons": [{"slug": "I8zU4CLs", "url": "XerrD3XH"}, {"slug": "QgsfeBfa", "url": "iZdns0uM"}, {"slug": "LPPq1wEE", "url": "kjMlaEhP"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["0aFF6tCH", "KFzmplhX", "YdjKY1jW"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'QjNrtnOe' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'SOANZWgb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'dBbKMj4p' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"k9VVc02y": {}, "78XfPjHK": {}, "QNIykyFj": {}}, "defaultLanguage": "0czRcp6b", "description": {"xQWAuNQO": "0Kod4ST6", "i3qkcZrF": "cR2Mg93z", "F2agWLtX": "L73fTfWF"}, "global": false, "goalValue": 0.7774087706598616, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "oCwCwNWw", "url": "50Z0KKTv"}, {"slug": "EAtbbsxc", "url": "qdIgyVML"}, {"slug": "LMSn8JuI", "url": "vQpbQg9E"}], "name": {"XzSIGrWU": "Hcp8j44L", "DsuRV2mN": "JPwAwL4w", "OMbPEjhv": "YlMHUgfd"}, "statCode": "cxD8i7GL", "tags": ["x6PfqhA9", "MBjj5q6l", "PvNg08uY"], "unlockedIcons": [{"slug": "MuWuLeT1", "url": "0p1qdCGy"}, {"slug": "FY0u19JF", "url": "pvsLcmIy"}, {"slug": "Go39KUoI", "url": "liFFGqWb"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'k3P5tgeK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '91ga9ufs' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 22}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'SXK3TJ75' \
    --limit '40' \
    --offset '61' \
    --sortBy 'mItAzmjM' \
    --status 'crQRmwKa' \
    --tags '["Ry3x1Lmn", "LErVw6VV", "QX6SYuTD"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'losVbxRZ' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '82' \
    --sortBy 'nUiBcXTL' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '5yeC1ano' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --name 'zFz6Dxu5' \
    --offset '62' \
    --sortBy 'ShmmR2OE' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'eqDZAxIw' \
    --limit '59' \
    --offset '65' \
    --preferUnlocked 'false' \
    --sortBy 'fUEz1nry' \
    --tags '["oNnPQWyz", "siKfbe71", "VlGCRpwf"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'QxOZ2LL1' \
    --namespace $AB_NAMESPACE \
    --userId '2L5PwBsS' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'wtUVhL2L' \
    --namespace $AB_NAMESPACE \
    --userId 'lQCY8BqZ' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '9sdMQCmR' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'U1TuMNnE' \
    --achievementCodes 'Ru3N7i3w' \
    --limit '85' \
    --offset '29' \
    --sortBy 'VmtjeeVR' \
    --tags '["EZrPVpwf", "LxlVDuNY", "kISObw3G"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '76' \
    --offset '32' \
    --sortBy 'createdAt:asc' \
    --tags '["9ePvUkEP", "EkP74Khi", "x0J0pH10"]' \
    --language 'hW1pdI4h' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'LqT0kzhK' \
    --namespace $AB_NAMESPACE \
    --language '8zhlw7kF' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'fPt61DVA' \
    --limit '55' \
    --offset '57' \
    --sortBy 'xmUHAprG' \
    --status '7EZP7LfO' \
    --tags '["4h9cFmYU", "jFk7bhAh", "E7qyUnMt"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'dWDFwdgX' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '65' \
    --sortBy 'fRhhkeDY' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --name 'lNh3Tmo9' \
    --offset '58' \
    --sortBy 'v2QLcDb2' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'QP6AZNez' \
    --limit '0' \
    --offset '43' \
    --preferUnlocked 'false' \
    --sortBy 'RaB7Ahnz' \
    --tags '["tTMYlHFD", "2YW6hkIF", "e1oJMlKc"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'qBtn9x4N' \
    --namespace $AB_NAMESPACE \
    --userId 'V89FYoyT' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'c2xTw7np' \
    --achievementCodes 'OL69DVuX' \
    --limit '51' \
    --offset '4' \
    --sortBy 'e911ZJi6' \
    --tags '["wkz4voad", "xbt44jts", "QjA8RL0V"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'Xy7Od5TH' \
    --namespace $AB_NAMESPACE \
    --userId 'vTp1VV2R' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE