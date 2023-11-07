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
    --limit '98' \
    --offset '19' \
    --sortBy 'updatedAt:desc' \
    --tags '["Dym4G79y", "Yl6xCNLG", "lRwMKuEC"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "saEqp4t2", "customAttributes": {"O476apqO": {}, "fxgXdizr": {}, "xaVDB7NY": {}}, "defaultLanguage": "2JtnFU2C", "description": {"qh5rxWx2": "I4rwhShb", "yFe77Fbt": "b0trpDKY", "M6OT4d7z": "pQUlOhas"}, "global": true, "goalValue": 0.3438948043573673, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "lbyRgghU", "url": "ilvA3Soa"}, {"slug": "d2PhrPVz", "url": "fUOyREjf"}, {"slug": "uxuDXVwx", "url": "wEPd65Ip"}], "name": {"uxfTjnLj": "TgzdRijd", "emzCPppt": "E2laDurA", "hk6YUuGa": "IAHMvKVp"}, "statCode": "Z2HjKlzv", "tags": ["2PiMi2z9", "60mJWyr5", "sHza40h9"], "unlockedIcons": [{"slug": "yHgWflw5", "url": "KXYDfpFy"}, {"slug": "KkGKZn4T", "url": "3Kcgwecs"}, {"slug": "sk6sJMXe", "url": "lBgUSHn0"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["ilQSd42u", "4ALYlhwp", "SmubM7VM"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'SmbQUuhd' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'vDpndtRU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '8rnPisl5' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"pjMZk07I": {}, "d86Clrkk": {}, "VA0RjXNZ": {}}, "defaultLanguage": "9J9JNu96", "description": {"ETfeMBaa": "OcRmP23X", "CQ7Bdgpd": "YhIkHnCt", "zXZsu7l0": "ECQwbdXg"}, "global": false, "goalValue": 0.16543267177742615, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "zDiNrvoT", "url": "8Hkn1Ego"}, {"slug": "WUWvzCxY", "url": "1t1WnKYO"}, {"slug": "IKtgu6CI", "url": "la8Ly4hn"}], "name": {"Qkc26j5N": "tbn1jecw", "DVWIuiNR": "wtwoIgQb", "Tu2EYMQn": "G9XFQwSh"}, "statCode": "TMiWrs6I", "tags": ["c5TBKchE", "ADs8uaqe", "tvqWgfOV"], "unlockedIcons": [{"slug": "nQmxppmD", "url": "Dg8SYJIp"}, {"slug": "VccdnYJG", "url": "fp3E4ZTB"}, {"slug": "xc4RAUZC", "url": "I1q2F8iX"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'xV0pNZcD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'KuSmr0AF' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 29}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'kCsPVgTu' \
    --limit '11' \
    --offset '71' \
    --sortBy 'ERSBxoo1' \
    --status '37gDlUHE' \
    --tags '["pvneQjzm", "ncD3lBJy", "cZ6cjzj6"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'ppAuUIKU' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '59' \
    --sortBy 'pK5Pr5wr' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'mbgIvpcY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --name 'NC85Gcuk' \
    --offset '85' \
    --sortBy 'DdVBVtPN' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'rcL2bR2p' \
    --limit '63' \
    --offset '6' \
    --preferUnlocked 'true' \
    --sortBy 'P5revWuR' \
    --tags '["kkNk8NSW", "2sNWWjNo", "eac4sR1U"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'gbSOsP1c' \
    --namespace $AB_NAMESPACE \
    --userId 'RGa4C8yU' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'D6RsowqQ' \
    --namespace $AB_NAMESPACE \
    --userId '5HdrleSP' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'zWuy3rHj' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'ZMaLC47F' \
    --achievementCodes 'lAiYeJA3' \
    --limit '58' \
    --offset '67' \
    --sortBy 'kHnDkBJm' \
    --tags '["hwVak87m", "vQuxVx5F", "KA5C25sH"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '44' \
    --offset '12' \
    --sortBy 'createdAt:desc' \
    --tags '["nHVhro1p", "BWbdsUni", "bYAoLVUL"]' \
    --language 'IFb2Fk4w' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'vsPIqYSe' \
    --namespace $AB_NAMESPACE \
    --language 'T3vIw6cl' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'NYm3LCC2' \
    --limit '3' \
    --offset '80' \
    --sortBy 'JN7pDHM5' \
    --status '9RSjPqNc' \
    --tags '["PACGjIXX", "HXC4O8gq", "o8UUuRZM"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'HdNqeBVC' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '62' \
    --sortBy 'EV5xtvOE' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --name 'vyevvioY' \
    --offset '30' \
    --sortBy 'fimbmv08' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'dMNcuwjM' \
    --limit '21' \
    --offset '46' \
    --preferUnlocked 'true' \
    --sortBy 'JCatCDVu' \
    --tags '["AZwtWPbb", "ky5BIhux", "kZQppesi"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'ZMSt8n7r' \
    --namespace $AB_NAMESPACE \
    --userId 'EbmpEfja' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'nAmY3nI6' \
    --achievementCodes 'bvdttmm6' \
    --limit '20' \
    --offset '12' \
    --sortBy 'nNLWMhv4' \
    --tags '["9xlrsZUb", "SwmgIcVj", "1yIULzUu"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '1Ox3d9D4' \
    --namespace $AB_NAMESPACE \
    --userId 'I9rPyM94' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE