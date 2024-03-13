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
    --limit '71' \
    --offset '80' \
    --sortBy 'updatedAt' \
    --tags '["xUMFPh4Z", "DtclkNME", "E4axHxGY"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "9PKaULGE", "customAttributes": {"yBBOJWa9": {}, "WuT2TaRB": {}, "e9PUv4Zg": {}}, "defaultLanguage": "EablaTqV", "description": {"WO8jzMyF": "psYisCwE", "PArJQaAr": "X5lQ9OlG", "lovAtBT3": "hvyMtFO2"}, "global": true, "goalValue": 0.1678574048059326, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "Q8rKheX2", "url": "gLtSR4J6"}, {"slug": "I7TIBFmm", "url": "KG4tkg7H"}, {"slug": "vGReeEiJ", "url": "abDv1tta"}], "name": {"En0be4ug": "Gz7D9Sq1", "MVwi7Lop": "lg4np6pc", "ut2Cjw8B": "4xML6Cyj"}, "statCode": "KoO6ywVS", "tags": ["EuzCwxt6", "dkRN9vCk", "Wi3rDF7t"], "unlockedIcons": [{"slug": "XV81DCrK", "url": "ssbKE1Le"}, {"slug": "kpi64lNz", "url": "cP6SPULx"}, {"slug": "zTJP7ab8", "url": "mOPNJj2u"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["UcHwAhqj", "gRmsvpPK", "yW6IEWWH"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'yB84EyeI' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'hlrfEXnb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'Au2yQJ9W' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"vVsbJZRQ": {}, "iiupH1Eu": {}, "PrBlnSuV": {}}, "defaultLanguage": "4eYtHRct", "description": {"bz0k83a7": "Bg5EDQPB", "BfB6BMik": "f7RbcbAL", "2ALZR9tO": "LoiuIyIA"}, "global": false, "goalValue": 0.7019484263118144, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "ivf1DKTp", "url": "u0AM2dch"}, {"slug": "mpIIr8UE", "url": "fCVwxibJ"}, {"slug": "kkVDsKs2", "url": "eZh6aWy1"}], "name": {"UMTGPZR1": "lIQQOKOf", "vz410oNt": "029C43LF", "KrtM10ah": "ekb9ert4"}, "statCode": "ToPc9ifY", "tags": ["iFGkTtKb", "YNaOIt6d", "5A8JZOvE"], "unlockedIcons": [{"slug": "uwVtLTuF", "url": "7XKuGwQ3"}, {"slug": "0wLyhtu1", "url": "FzSzYGLR"}, {"slug": "We1HRuGh", "url": "0m7KYDdz"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'BgB6NPug' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'CFCzm8Jl' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 96}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'pk9LWdWB' \
    --limit '15' \
    --offset '63' \
    --sortBy 'e2qa6LeD' \
    --status 'sc1X5poG' \
    --tags '["1KctBxxR", "uSpCtp8P", "nOxLi4uA"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'IAdoGjbE' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '93' \
    --sortBy 'rz7OT3zu' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'aHHWjpeV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --name 'SMkdlCNE' \
    --offset '74' \
    --sortBy '8ck4ZT23' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '0reyuP8l' \
    --limit '88' \
    --offset '94' \
    --preferUnlocked 'false' \
    --sortBy 'Bq9982He' \
    --tags '["XMiurSZ0", "BnqX0cbA", "amEBKTri"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'MUyhc7Mj' \
    --namespace $AB_NAMESPACE \
    --userId 'XFh3aLa7' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'HKE75izx' \
    --namespace $AB_NAMESPACE \
    --userId 'QGjdABaK' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'YqfRhMoO' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'pktAajI1' \
    --achievementCodes '4Ii4cdfk' \
    --limit '20' \
    --offset '81' \
    --sortBy '7yuvUuHg' \
    --tags '["Kqa1OyWa", "oiJTmcGl", "gILiPmub"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '51' \
    --offset '38' \
    --sortBy 'createdAt' \
    --tags '["YgyPUR4M", "UH0ovrjG", "4Af6mEsD"]' \
    --language '6LCE8EWS' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'NxKzuYfA' \
    --namespace $AB_NAMESPACE \
    --language '5oltYr2v' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'kWyH0yg7' \
    --limit '71' \
    --offset '77' \
    --sortBy 'kN6JS3HC' \
    --status 'xwAcvXs7' \
    --tags '["f6AFxVsn", "01W0ZwwI", "Uv2EtGqq"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'ezwbJIen' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '58' \
    --sortBy 'oLh7Kkzg' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --name 'GEfhBGg1' \
    --offset '2' \
    --sortBy 'Wt2ptztc' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Z5fHwkiL' \
    --limit '21' \
    --offset '66' \
    --preferUnlocked 'true' \
    --sortBy 'hOTcQDJ1' \
    --tags '["VufQFKZa", "YIXaddp9", "d6yw2YW7"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'z6d31r12' \
    --namespace $AB_NAMESPACE \
    --userId 'tk3FX218' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'RuLhSHle' \
    --achievementCodes 'ICcg1muB' \
    --limit '73' \
    --offset '37' \
    --sortBy 'aprnAHsI' \
    --tags '["kY4Dz2Uq", "Ez46XAUp", "v4vRy2M6"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'QkJFBqTn' \
    --namespace $AB_NAMESPACE \
    --userId 'e4dtoNl7' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE