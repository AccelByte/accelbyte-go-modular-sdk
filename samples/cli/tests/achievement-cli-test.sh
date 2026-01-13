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
echo "1..30"

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
    --limit '6' \
    --offset '44' \
    --sortBy 'createdAt:desc' \
    --tags '["9OIkZrpP", "n2rBJmHw", "adxo3Mp7"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "XiDRTCcN", "customAttributes": {"iqjXAueU": {}, "hjkjGbob": {}, "K4BjxKSV": {}}, "defaultLanguage": "SWuSgosy", "description": {"eqtaYzjN": "Tu6joiRw", "0CBjRCDV": "PN2r1cP2", "8dU2ZL5E": "2z56JNFY"}, "global": true, "goalValue": 0.26666210325483886, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "uEUl6JQv", "url": "zVd3nLKB"}, {"slug": "k2mEK6jB", "url": "oEK7Djpe"}, {"slug": "ziWXd1uF", "url": "Mp4aXYzy"}], "name": {"NCjLZfGP": "kKIIj5U9", "gC7WgU11": "a3464Lf4", "bhaYsQg3": "hjq7AKvG"}, "statCode": "1vJNWIZJ", "tags": ["cSujUdHB", "5hlCLRHp", "061zWSTf"], "unlockedIcons": [{"slug": "OwZqGlqm", "url": "xbTdlPOu"}, {"slug": "LhjHuRax", "url": "DCXoq2WH"}, {"slug": "L4FCeliu", "url": "pwW7DDjQ"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["s4oOPMo3", "Lw3T8FV1", "zQAqnCDX"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'Q8YBHkQC' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'Zf3ucoPn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'TkLAeN2H' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"h43pVDGV": {}, "28Z8gQSg": {}, "TM4QrPJ6": {}}, "defaultLanguage": "i33px830", "description": {"p0Xcdkad": "8cN3mgFK", "zNno3RVP": "nUiYAmjS", "dVAzZlCx": "uY2PlBmj"}, "global": true, "goalValue": 0.795957771883335, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "rh3Fa71q", "url": "zUqLDsdQ"}, {"slug": "OTm0Km06", "url": "fyE6A7yn"}, {"slug": "iNguVVEX", "url": "vafYnHrr"}], "name": {"oKW9UQE0": "valN79zR", "rigoj0Mp": "5dyRUU9i", "9QIiRpYE": "mTS4Pvvf"}, "statCode": "xcs46pCx", "tags": ["HoIoPxhv", "1xDhztAj", "jmVit4Fv"], "unlockedIcons": [{"slug": "p1jtdMpL", "url": "3YR6WKjt"}, {"slug": "YdewlVCS", "url": "pXD7AlOk"}, {"slug": "4k5Qk301", "url": "FLsfUKQ4"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'sQrP0oJ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '5GCOQGbx' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 31}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ZXPTJwXD' \
    --limit '11' \
    --offset '98' \
    --sortBy 'createdAt' \
    --status 'GYSIFjcE' \
    --tags '["7AsuaZat", "BynPkNhX", "LkNHNJVy"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'knZlzTSF' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '56' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'r7FSgpQF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "y5X0T3vz", "eventData": {"eventName": "Hr3Af3B4", "properties": {"8mjOISiW": {}, "MP6kWe25": {}, "4VqKWYHo": {}}}, "eventId": "9iazjEvE", "version": "WF6ZpMGJ"}, {"dateTime": "TGcUscwU", "eventData": {"eventName": "AoOsd5vT", "properties": {"rIeUMT0X": {}, "5quelBqn": {}, "8pHdAn6A": {}}}, "eventId": "sza0a0ew", "version": "qzvWZdDW"}, {"dateTime": "NESofGw6", "eventData": {"eventName": "m6TB2Ttt", "properties": {"X1x3fOV8": {}, "0xitw1Vj": {}, "5g8OcNtW": {}}}, "eventId": "pIkDkCAS", "version": "4uJyJo0J"}], "thirdPartyUserId": "SZYvbhzk", "userId": "424IFHRs"}, {"events": [{"dateTime": "UCgP9zam", "eventData": {"eventName": "4VJYBepg", "properties": {"PwcOpFVv": {}, "fzHwUvFe": {}, "SYQehsyu": {}}}, "eventId": "5Gm2MCha", "version": "NSJhzHLM"}, {"dateTime": "gKOESBRv", "eventData": {"eventName": "vmrLxqhU", "properties": {"8XH1gxPF": {}, "vPbeQhTn": {}, "gb2yWQkN": {}}}, "eventId": "rIKWOo9E", "version": "GEXNOmmO"}, {"dateTime": "2kcfHobp", "eventData": {"eventName": "3WzPeB4m", "properties": {"l7TPIHaU": {}, "hnUGbfcA": {}, "VZOhXOOi": {}}}, "eventId": "uXbT1h5e", "version": "1Lxcx5Fy"}], "thirdPartyUserId": "MlDBEl6k", "userId": "lfQn21AZ"}, {"events": [{"dateTime": "exEvaPTs", "eventData": {"eventName": "sw4fKbYm", "properties": {"JPTcUG5c": {}, "JMfg7k1x": {}, "sbTLt6Yt": {}}}, "eventId": "VfRHjklS", "version": "2twqTZby"}, {"dateTime": "kQvB18Ue", "eventData": {"eventName": "0q16FPEN", "properties": {"3HiN3cpF": {}, "ZxbyJJhX": {}, "wHwrAogD": {}}}, "eventId": "ubZahFFm", "version": "MUVQN1C2"}, {"dateTime": "AnaYuSGi", "eventData": {"eventName": "X1Hfzwcc", "properties": {"wplqp2YB": {}, "8rrqGWVv": {}, "3QyT3cCZ": {}}}, "eventId": "0EvN2GIW", "version": "g3a3UCDT"}], "thirdPartyUserId": "veA2QqfY", "userId": "DyHAXd45"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --name 'BsAC8uJd' \
    --offset '97' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'QM07VMsQ' \
    --limit '98' \
    --offset '9' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:desc' \
    --tags '["dtt0GdHK", "gQ6Vfyud", "U473vbPN"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'V8rxTihI' \
    --body '{"achievementCodes": ["rqXXXTho", "7rDvwc7o", "F9DG1NXg"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '05vedAly' \
    --namespace $AB_NAMESPACE \
    --userId 'vYD9wehW' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'RMRqffR9' \
    --namespace $AB_NAMESPACE \
    --userId 'qxxFayZL' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'qRznnNUS' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'kSRpr0IG' \
    --achievementCodes 'UPFpikx9' \
    --limit '91' \
    --offset '45' \
    --sortBy 'contributedValue:desc' \
    --tags '["Gyio9huE", "HtZgYylD", "qK9aG7mP"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '74' \
    --offset '34' \
    --sortBy 'createdAt' \
    --tags '["AHFuFWfC", "kN3Z7BFG", "01IgKPDc"]' \
    --language 'lb7OPIF1' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '4ZbTzaGo' \
    --namespace $AB_NAMESPACE \
    --language 'BKmYapDx' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'hjQXqguT' \
    --limit '45' \
    --offset '98' \
    --sortBy 'createdAt:asc' \
    --status 'w5FLU56X' \
    --tags '["dY0DhkOi", "X6tbKrh2", "TLg3vaHT"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'kbUSyAOl' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '16' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --name 'y3iIx7R6' \
    --offset '70' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Zi6v0n6R' \
    --limit '48' \
    --offset '45' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt' \
    --tags '["h6Usq5Jm", "EabawTTo", "0bgTD9uL"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId '9rwt1aM8' \
    --body '{"achievementCodes": ["U8YM5jNn", "oPxsVVcp", "5X3gMg4K"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'aDDu3l4L' \
    --namespace $AB_NAMESPACE \
    --userId 'zvtv6TeY' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'MA6rL3hZ' \
    --achievementCodes 'P7uc6F7d' \
    --limit '14' \
    --offset '18' \
    --sortBy 'contributedValue:asc' \
    --tags '["x9nxrtVJ", "6Ia2T0xf", "lq0vw8yA"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'aWhPr0mf' \
    --namespace $AB_NAMESPACE \
    --userId '5FEDZ7Q9' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE