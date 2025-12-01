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
    --global 'true' \
    --limit '43' \
    --offset '64' \
    --sortBy 'listOrder:asc' \
    --tags '["h8ZHYaBy", "0P3yZeE2", "Zbw0Ex2x"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "MIAQX1aX", "customAttributes": {"qpWedXEF": {}, "ZrmJiBmx": {}, "ZpeBo0e9": {}}, "defaultLanguage": "IPsQlLgw", "description": {"5ag87NkT": "EjXRhjhH", "JX223o8X": "tYTnQVPu", "gBwetRLQ": "nnQNw1Pa"}, "global": true, "goalValue": 0.0009819631985572563, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "leavVSZy", "url": "uuT6TX2D"}, {"slug": "8r3KE7Sv", "url": "jxMHGpUr"}, {"slug": "TFAytqDS", "url": "sJQcorB3"}], "name": {"OHTsshHn": "TXik3F9K", "COKa6UGo": "AUGgiPas", "3Noscq8L": "ChMbJMuU"}, "statCode": "dfB3pzOS", "tags": ["EV2b2UHm", "zT21Ebxv", "mhzUhxgm"], "unlockedIcons": [{"slug": "FQigUIr2", "url": "ZCT3OErK"}, {"slug": "aRSuRd7M", "url": "ELhzlrlx"}, {"slug": "MryoIROl", "url": "t0iBw8qJ"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["WJm1H0bM", "VgcvBum6", "cJejAOAM"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'xNGvnNRB' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'o0cCCfGh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '7B0N5mgE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"n85iR5h6": {}, "VX7wSSTF": {}, "KvXTdxFt": {}}, "defaultLanguage": "9pDEqjPK", "description": {"LCNF2XzQ": "9SwOyydx", "dkdXXj7t": "DyOw84WA", "Czh0vjb8": "p91ITFoq"}, "global": false, "goalValue": 0.2072711676913057, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "gkdp88Lw", "url": "YvMPs62n"}, {"slug": "o1b87LBG", "url": "ZzAAOVhj"}, {"slug": "mreB14yL", "url": "rT2yRVxz"}], "name": {"BJ39vZwT": "I53FiJg4", "i6Q6SB45": "YLkXWCkt", "kRF1AMQG": "kYAD4ij5"}, "statCode": "N7F83m9K", "tags": ["UY2EfPqu", "bzlsUDcz", "vQAV4T7T"], "unlockedIcons": [{"slug": "jfwmHVuX", "url": "NrrWxzL5"}, {"slug": "t1ZYnSP4", "url": "jlG91bah"}, {"slug": "sEh1L3ah", "url": "Ao3tlcKE"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'UasRM9aa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '0BjamPxx' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 80}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'g4mRKSql' \
    --limit '80' \
    --offset '71' \
    --sortBy 'achievedAt' \
    --status 'WjoIG6QG' \
    --tags '["ny7EZQhG", "xOTdz6qH", "g3UaUwaW"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'SevR8Ub8' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '98' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'zAEg7PK1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "XHFRUBKX", "eventData": {"eventName": "kNVcSIAJ", "properties": {"KgDEwdX6": {}, "8E3pZTpg": {}, "kXkQo1be": {}}}, "eventId": "UNREc1kM", "version": "9fnecc6F"}, {"dateTime": "KADACsW6", "eventData": {"eventName": "tWHBaUoz", "properties": {"EUEEhueN": {}, "4kQ1geas": {}, "eOkWOsq6": {}}}, "eventId": "BLaABboh", "version": "ZhzsQ0cH"}, {"dateTime": "6jMAiQFm", "eventData": {"eventName": "GCVHl46k", "properties": {"prxK1vye": {}, "hEYOaul8": {}, "A1jw7QGQ": {}}}, "eventId": "FiPPRFOV", "version": "r1TIMxK4"}], "thirdPartyUserId": "d8RL6Cmx", "userId": "Tt3WTfW4"}, {"events": [{"dateTime": "iidiiwgz", "eventData": {"eventName": "xwtVrFwn", "properties": {"jUzdYSBv": {}, "QKLBlcdQ": {}, "pxfudtA2": {}}}, "eventId": "Vvj8yxVE", "version": "oZXs0iHY"}, {"dateTime": "77Me6gMp", "eventData": {"eventName": "Ay7EWJRK", "properties": {"4QUwxQyZ": {}, "H985gue3": {}, "kMF0a7fW": {}}}, "eventId": "GIqnXGPU", "version": "co5ONJuT"}, {"dateTime": "yzvXcOjo", "eventData": {"eventName": "W1nRiaWG", "properties": {"Vwd92Q8W": {}, "LQNwiJlC": {}, "nIcTLT3H": {}}}, "eventId": "IkOcP03H", "version": "1JMQ5mMq"}], "thirdPartyUserId": "g2MeaXRa", "userId": "JCtsT0hq"}, {"events": [{"dateTime": "fg2rbQXQ", "eventData": {"eventName": "GYWJ5AYJ", "properties": {"l6uryaoK": {}, "sLQ4mja7": {}, "6GnQCitr": {}}}, "eventId": "j9tq1wWG", "version": "hOYEkQBB"}, {"dateTime": "W8wQtQQ6", "eventData": {"eventName": "v0rCXwjn", "properties": {"S61cjdVt": {}, "AxtXUJhj": {}, "zjM8WAbo": {}}}, "eventId": "2xvyBH3j", "version": "t7h48j1m"}, {"dateTime": "LR9lSHBo", "eventData": {"eventName": "kQIjQ8tB", "properties": {"0mGBsoep": {}, "l4evdFL6": {}, "Jp9iq7ZE": {}}}, "eventId": "8wgsgHfj", "version": "oI0DllzO"}], "thirdPartyUserId": "tyNHXdkB", "userId": "KvpcxW1X"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --name 'oJKWl6th' \
    --offset '86' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'nKl7Jdwb' \
    --limit '81' \
    --offset '77' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:desc' \
    --tags '["n3vatOIj", "zOSR5a0X", "UrDgYvcu"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'cFKsI7MG' \
    --body '{"achievementCodes": ["ac63Kfeo", "IV9x5FmO", "PCNnOrZv"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'IX2H6Yn8' \
    --namespace $AB_NAMESPACE \
    --userId 'TlNKnkKv' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'dYFJoHiU' \
    --namespace $AB_NAMESPACE \
    --userId 'ooN9xmrv' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'RNPQPDnD' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'j9qYqvfT' \
    --achievementCodes 'GcnUOdJN' \
    --limit '64' \
    --offset '45' \
    --sortBy 'contributedValue:asc' \
    --tags '["wNcVSl1C", "6N1aqyRS", "kuYiNgvL"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '7' \
    --offset '67' \
    --sortBy 'createdAt:desc' \
    --tags '["5AZSOx82", "k8tktT4U", "c2Ks7LTs"]' \
    --language '2VqS0MTg' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'XWMhA46S' \
    --namespace $AB_NAMESPACE \
    --language 'uLGLO8f0' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'dNzIYGCm' \
    --limit '63' \
    --offset '83' \
    --sortBy 'achievedAt:asc' \
    --status 'QkXsurAl' \
    --tags '["E7AKmgZl", "cjxLOFoy", "cFZBvI2x"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'pGzQ6MZc' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '82' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --name '3t8nXwfw' \
    --offset '88' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'AjHcvC6o' \
    --limit '81' \
    --offset '61' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:desc' \
    --tags '["ZIJ3g31q", "1nU4POO2", "riX0hnRe"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'a3q6bTYK' \
    --body '{"achievementCodes": ["drwinDX1", "Fr4nol30", "OTrJ5LTS"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'cgW0KasR' \
    --namespace $AB_NAMESPACE \
    --userId 'PKy0DAjH' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '39KIpwQA' \
    --achievementCodes 'DTReXymb' \
    --limit '25' \
    --offset '60' \
    --sortBy 'contributedValue' \
    --tags '["VB4YG1lf", "rN9VsFS2", "8JfuKtjF"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '1IGct247' \
    --namespace $AB_NAMESPACE \
    --userId 'JfFxKtwT' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE