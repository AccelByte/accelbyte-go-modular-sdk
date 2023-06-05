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
    --limit '21' \
    --offset '47' \
    --sortBy 'updatedAt:desc' \
    --tags '["oOTesSS8nO3fizjG", "LxwpB25z0lyXja7G", "18v2r61dQ8BQPeEL"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "0Spjbn0wAryrRAal", "customAttributes": {"NHcRqnT1UKIbznlT": {}, "LXryJ0lIL7UToqgc": {}, "vQmG0Yrt907Xcefv": {}}, "defaultLanguage": "RQ6wzKTM03ShGuUG", "description": {"4MWFoPR1yjhK5dmi": "m2Utf4HwwEx5lRY2", "6c6pOb86WI6o1nxz": "bVTkbBQvEh6QaSbZ", "xnh00dESIuAWuiDD": "QLSl0WACHQm3DLHX"}, "global": false, "goalValue": 0.6208469658787577, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "S7rH8gTEFcSe7Lhw", "url": "gbiN8yc2PbKLz6i6"}, {"slug": "Cyvs3RjcrmJ9REnX", "url": "0DPGPo3RtWMWpFPp"}, {"slug": "jyQy2x9zecJBqUQ6", "url": "mwfXOpGDMNCgZfjZ"}], "name": {"EpM1aFvjvuNESlu5": "sMIpWtFJHECPesVO", "aYm1YcnUlbDjVOKl": "pHzaAWCGt4MRp8D2", "IW30v1GVRsMmLIU6": "WHx2tDsUg3TvEKl6"}, "statCode": "R1fWOPPz2obAUyzG", "tags": ["bNb2mkaeQHsQCEJ6", "5dAN02oXpnyZRawW", "kezHdNjiASln0fD2"], "unlockedIcons": [{"slug": "nFu806VVO9P5Jr8I", "url": "bbYBua79GmpMieim"}, {"slug": "ARxQkJJb8eUAYPBC", "url": "JVaExb08wrOFIIJi"}, {"slug": "q19fNDDQMEMdRPem", "url": "DPvChOpBIqut7YP2"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["zI2ZN09Ez3vnpHZb", "4gu3RkPqFf1q8JNs", "fy5aiC1MPw4j3wJb"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '4cVILH6uUEdYIaAP' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'M9Wi2N2Y1WBZR2jg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'XyCjwIjnAZ5bBewc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"jcPbg2SzQbMyqsNC": {}, "v25kYfilDPoqhOvX": {}, "wpLHlu5FBfhmWmWW": {}}, "defaultLanguage": "j322ZWvGHASEAmWd", "description": {"HK9MlgcDWFv7Z4BO": "OlQ1fzQKamMuANAQ", "IZGL5FDlwlLrlAIx": "ezQHzvearOH69XHQ", "NiS20bA0YMayjORn": "6qxLJckC8NY0LjDK"}, "global": false, "goalValue": 0.02572182630459463, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "RA9aYtzZb8ycOjFr", "url": "Q77cUlxNjdlbqLxi"}, {"slug": "D0QBgEWN8nYhKYYt", "url": "een5oj0ky6k7ActP"}, {"slug": "vGHaK4of7DPw11D0", "url": "aGn4CIdv6iSkV4tg"}], "name": {"fmStITOEJjDTzc21": "DG13mPzb4O5ogumd", "i9R14LqQMu9GRQHk": "MWt9Q7jXTRNV7eIa", "cJLe6dWDGUzMrIGw": "KsmQ3Qi9ES6Qk2XV"}, "statCode": "j5LtEG7FOqtN0EGk", "tags": ["tcD7TBH2H3ArQKrz", "UR0iqRtDROAoBcei", "g4xp37iHOCMj7tIH"], "unlockedIcons": [{"slug": "U6ifzbJh8qmAxI6A", "url": "Y9Pv1eY7nwFEHHpc"}, {"slug": "8mITrEritaFhxjPM", "url": "LhR58fp6Rk63nEEE"}, {"slug": "dDRcRxXP9sxHjmXJ", "url": "5F51y9HM8tCpoeH7"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'AiSpETPmPAgQfX8x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'faXwJEefCsYceI7m' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 19}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'xBf4v0nHmfLNyWP1' \
    --limit '45' \
    --offset '49' \
    --sortBy 'j7aUc4Fgsa7fI0qU' \
    --status '2DFcqAKxx1qySLE4' \
    --tags '["Xj4KRdtlzjePiQtk", "b5AAF1nA4To1Excb", "h3kQwLnudcgzRzBO"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'dsdIrlzX9Q0aKtpo' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '78' \
    --sortBy 'JZKQBIHCbnbs9YiR' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'YzHS7Y7zjur9h3ct' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name 'd0OXue8ye9Rjn1aI' \
    --offset '24' \
    --sortBy '89O6cWTgc1aJ7rF4' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'znKGCaYnMwGZHDHG' \
    --limit '35' \
    --offset '37' \
    --preferUnlocked 'true' \
    --sortBy '0fTsTXO036CqbgIe' \
    --tags '["0ezVup19eC2v8QCQ", "OAOcLnouRN4JO9VH", "D3WzDAIA2kPtaEQu"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'U0Q1SNrNRsEmsvmx' \
    --namespace $AB_NAMESPACE \
    --userId '17sBvRf4KGC4cNFT' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'zDUP27ksrTdKwIzK' \
    --namespace $AB_NAMESPACE \
    --userId 'bPeH517Cju3EjKvA' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'XYjodIvPQfr7xO1a' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'wN7UKe8foo4gJYr8' \
    --achievementCodes 'hVDcr7YJxxksK0Qp' \
    --limit '55' \
    --offset '39' \
    --sortBy 'UuGp4PHm7jUOiIy6' \
    --tags '["n58VKBmAJocqnBNF", "TkT9kFFlxd69ttHa", "ztvlU7s6WRfmCuoD"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '93' \
    --offset '76' \
    --sortBy 'updatedAt' \
    --tags '["yI86d73ys7Ye7JXI", "hEdNPJkhT5Gb3t42", "bslDcl13oAnK2YP4"]' \
    --language 'ycBwLqCwGkKjLa1R' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 't2xiHNP5ez3Ya9rU' \
    --namespace $AB_NAMESPACE \
    --language '7Uf94ldzfc5OUIIh' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'JpjvfRSKEEDhn4Uq' \
    --limit '69' \
    --offset '46' \
    --sortBy '14JcCM83TVYkQ9CD' \
    --status 'ZuaD7MNsRUCEFKXt' \
    --tags '["1W190DAYWwe9m2DW", "MbDhaF0PHX3gmAJZ", "ogksmi1mM2SMAVcN"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'clpdz8X3LlYuID86' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '73' \
    --sortBy 'O1JymoKEVWebGrtP' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --name 'LRNUSWTr2O34lCYF' \
    --offset '87' \
    --sortBy 'JmKK4LtSePAa0hu2' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'h5mUtfGeP6fWf42C' \
    --limit '52' \
    --offset '21' \
    --preferUnlocked 'false' \
    --sortBy '5WAomPAzq5leCcEg' \
    --tags '["TEggBYgyoXoeuSeL", "I0aQIfkEIuy829Rj", "2KumIrhFs4ep1vwl"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'ytamnVhoxxuoDB5b' \
    --namespace $AB_NAMESPACE \
    --userId 'WTYdhcldb0d0Dlm2' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'icMSRMNBHDxQZ6kp' \
    --achievementCodes '7QXz0ykqEorp0O3M' \
    --limit '42' \
    --offset '18' \
    --sortBy 'dGfn6f076VjHHAmI' \
    --tags '["HZQ5s8sW3f6KPRzO", "pARdFHQLIgdeusOX", "TcGAPq87qOVOKyop"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '0matOnvwRAHAxyCG' \
    --namespace $AB_NAMESPACE \
    --userId 'd0Y7o0RD4jNdAlSm' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE