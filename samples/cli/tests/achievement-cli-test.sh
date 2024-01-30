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
    --limit '9' \
    --offset '31' \
    --sortBy 'createdAt:asc' \
    --tags '["xb8ENccL", "m2Z10SWH", "KxWdph3v"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "ZC3FPIup", "customAttributes": {"hZhJxOzc": {}, "wFPTEaSs": {}, "JgKle7VZ": {}}, "defaultLanguage": "55XYWQoa", "description": {"xxJMKv5W": "93YECuLm", "b9bk5GoM": "s7xbJ7yi", "KGKftJWX": "oAk1Zel0"}, "global": false, "goalValue": 0.21744956907343438, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "X0o87O0d", "url": "t2TopeGS"}, {"slug": "L9uaK6jj", "url": "gdgEcKk8"}, {"slug": "782mXnOW", "url": "2d6V8sDS"}], "name": {"gB30ZN45": "Ja3NHmNl", "IyGsMWPU": "k9KwDSbN", "KVDAdW3f": "KvpSn3FP"}, "statCode": "cK0UuEIj", "tags": ["e3Sty6D1", "koy5bXRs", "HbClHDno"], "unlockedIcons": [{"slug": "h0n7qEZI", "url": "YooN7764"}, {"slug": "4kufyDFv", "url": "ygHn1qiF"}, {"slug": "Px5TQQm7", "url": "lpOEriyX"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["Z2ofdId3", "xsjZuCZ6", "pKuQkGAU"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '5BMuSHTO' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '1ZXk1uzM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'vYb8b7kw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"IVVruBCY": {}, "u04jW7Hx": {}, "x0egEw4X": {}}, "defaultLanguage": "XYgMzmiq", "description": {"t1XAPkx6": "HK7n1yGr", "Nex6WPu6": "aTuupVG5", "7GPCcy5s": "YEmB5tLn"}, "global": true, "goalValue": 0.9889780652285436, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "c2pyELtN", "url": "lLiUjcnW"}, {"slug": "UfFIeReq", "url": "1KrEZRPn"}, {"slug": "KE55Moq3", "url": "v6E4MJw1"}], "name": {"0DpGZEdI": "4u3aqokO", "jKlFyscC": "LnKJ8a2y", "W2DgMfA0": "rnhh8yJW"}, "statCode": "uIPz9b9w", "tags": ["CFlPTRNl", "nueRWisW", "k1iikT6T"], "unlockedIcons": [{"slug": "znbJx8gI", "url": "zD08MSGn"}, {"slug": "NxXsxESA", "url": "o6njBccb"}, {"slug": "lXe7HhSo", "url": "p5W0kEmP"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'qVeKnGVS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'lV1o8J2C' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 57}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'TXuvTMlV' \
    --limit '7' \
    --offset '79' \
    --sortBy 'eqVnTDqS' \
    --status '1pGs5ssa' \
    --tags '["QIHcqhpf", "OX69gjfJ", "UTRA5WzQ"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'bBrzDDB4' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '76' \
    --sortBy 'Bu1gdQIi' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'AYowg5W3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --name 'R6wePIKJ' \
    --offset '80' \
    --sortBy 'KqYuBUiP' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'QFQly3Hu' \
    --limit '93' \
    --offset '24' \
    --preferUnlocked 'false' \
    --sortBy 'TudE1dev' \
    --tags '["3QFx8R3k", "4WipH0p3", "ugTqR8ox"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '91xVzQli' \
    --namespace $AB_NAMESPACE \
    --userId 'uzyNZ84n' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'yxvyFMOg' \
    --namespace $AB_NAMESPACE \
    --userId 'agfZZtGA' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'GGI2sAzS' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'U1AguG8T' \
    --achievementCodes '3NFaoLjN' \
    --limit '21' \
    --offset '63' \
    --sortBy 'pVeQDdaI' \
    --tags '["pxiCzCpW", "Qp9uDzQo", "fCzzkZ8U"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '32' \
    --offset '97' \
    --sortBy 'listOrder' \
    --tags '["5bAORUJW", "YcehK4Eb", "SfjcMc6L"]' \
    --language 'oC3IDhCT' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'aNgDP51u' \
    --namespace $AB_NAMESPACE \
    --language 'jIxCFgZZ' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'nz8lOCmu' \
    --limit '54' \
    --offset '59' \
    --sortBy 'E51N4Nnp' \
    --status 'yAYacb6B' \
    --tags '["UY6DBkpJ", "Nhr7aYCD", "iHWsLuYa"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'GeXMf2tO' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '83' \
    --sortBy 'L5hCT7jF' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --name 'LMhoJQKq' \
    --offset '31' \
    --sortBy 'I4wqXbpK' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'OI24sHJS' \
    --limit '12' \
    --offset '83' \
    --preferUnlocked 'false' \
    --sortBy 'afnaqm7f' \
    --tags '["dBPH9UGp", "IEScyfbE", "DkMrnSBO"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'VnkG6qTF' \
    --namespace $AB_NAMESPACE \
    --userId 'yfW1qYaR' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'wyyO03au' \
    --achievementCodes 'rDSgrmVq' \
    --limit '45' \
    --offset '26' \
    --sortBy 'rnMBiVYl' \
    --tags '["Ld7JS3zZ", "vgOh1NsG", "28MyA1oG"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'Gm8husFa' \
    --namespace $AB_NAMESPACE \
    --userId 'G0jFZHyJ' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE