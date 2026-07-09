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
echo "1..31"

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
    --limit '3' \
    --offset '41' \
    --sortBy 'createdAt:asc' \
    --tags '["3CbvpuBD", "te2MlKi6", "V5TFaXml"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "jzqz3s4H", "customAttributes": {"xj1q0FhS": {}, "64bfpbXs": {}, "hwtz2y9b": {}}, "defaultLanguage": "RVM8cCF7", "description": {"pXbLknLV": "0Sn8sKwI", "GmNxLcJy": "msHFCFU4", "cuXw8uVK": "76UzP8Er"}, "global": true, "goalValue": 0.22571808946394734, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "aZsrVhvH", "url": "SdxFNxhO"}, {"slug": "a77gez8x", "url": "yPc0tYx1"}, {"slug": "NV8Zh30e", "url": "149n1j1b"}], "name": {"AnTJOmye": "JDdu0iT8", "12CFVx1B": "ttIEmhlu", "LoefTU25": "coBaNb5o"}, "statCode": "edLzsp2m", "tags": ["WNh7zpqb", "qFKtqMxe", "IuFUHV81"], "unlockedIcons": [{"slug": "RMsoqXXb", "url": "gdO52hsF"}, {"slug": "5bRQAfmI", "url": "31s723No"}, {"slug": "wNuY91AK", "url": "V4FrrLcu"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["b3RodvkD", "AcDOG6zn", "xtnCwqoa"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'HK7Js23t' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'g3fJjPJM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'YwjIXBsR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ytFVz2E5": {}, "ov6rCrHl": {}, "Q3svFEI6": {}}, "defaultLanguage": "0CDxbEvi", "description": {"Q7KmCMca": "ghNeJpAD", "J63o7dah": "uzC7YJSx", "51dGmMnR": "M0YpWJ8B"}, "global": true, "goalValue": 0.40863439068431895, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "9d4i0MFY", "url": "mTQQcE6F"}, {"slug": "mg0SGe3k", "url": "s4VLzs0H"}, {"slug": "XjUxBkcf", "url": "2bUuwISc"}], "name": {"XletgUch": "odH9G1X8", "ymPA4Rht": "5bWbOg0a", "bfnJzVfu": "8ldtdtkV"}, "statCode": "Q6LJHge0", "tags": ["egDBoCO6", "7m41g4MZ", "sTns4Irb"], "unlockedIcons": [{"slug": "tyIghgOW", "url": "D11omr6P"}, {"slug": "QP9DD1kC", "url": "Q7q96IPz"}, {"slug": "TVjzxLnL", "url": "a2tI22gk"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Xe1O9sYT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'JbSf8gpo' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 5}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'q66CF5S4' \
    --limit '11' \
    --offset '39' \
    --sortBy 'achievedAt' \
    --status '4JYkDYcH' \
    --tags '["y2ot7MZX", "Gnv5D0gS", "9X7UQez6"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'RmUDg3BE' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '40' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'B2pUY5Yd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "suaNLVli", "eventData": {"eventName": "pKZLQdt0", "properties": {"1DYFBoDr": {}, "0E0ESduX": {}, "Ra3OvjGJ": {}}}, "eventId": "AQ0sQdlG", "version": "BxzZGZbX"}, {"dateTime": "duoEic8a", "eventData": {"eventName": "v9DNqvCl", "properties": {"KBcTKrlh": {}, "nrdKotUQ": {}, "M5dW4Y4t": {}}}, "eventId": "4sLiy2Ri", "version": "8GYw04WW"}, {"dateTime": "ZU9ku11Z", "eventData": {"eventName": "J5vmcwmo", "properties": {"L9ATjf8a": {}, "cgDUHYcb": {}, "BgAG0PKT": {}}}, "eventId": "6xHlgFmm", "version": "sPjhejeI"}], "thirdPartyUserId": "pqLkc6qw", "userId": "XcabqPvx"}, {"events": [{"dateTime": "e7hQtES0", "eventData": {"eventName": "TP9Icfjy", "properties": {"al2uqlV0": {}, "T7WJ6A1g": {}, "eHdz8DU0": {}}}, "eventId": "zGy7YBBy", "version": "nyIgW9Ou"}, {"dateTime": "Svl5mks5", "eventData": {"eventName": "oEfts0vk", "properties": {"YMCSsuwc": {}, "jwMg3Uri": {}, "jdONFKOv": {}}}, "eventId": "cHmJnBgQ", "version": "cbpVZU8T"}, {"dateTime": "y3GydinK", "eventData": {"eventName": "a79Zw32j", "properties": {"t1AgxFaG": {}, "lzoWvfJx": {}, "4VQ1twav": {}}}, "eventId": "SN9pZrMA", "version": "3UGeF1Mt"}], "thirdPartyUserId": "3xtpqChU", "userId": "dUVc2X4a"}, {"events": [{"dateTime": "K4kJKwS0", "eventData": {"eventName": "u320Vhwq", "properties": {"h3se1zpw": {}, "0q6sFdyY": {}, "r7lIZXAj": {}}}, "eventId": "YgPemnkU", "version": "5qv6uIRZ"}, {"dateTime": "AWYESptD", "eventData": {"eventName": "xpKZNJaH", "properties": {"Myt946QM": {}, "E86oY4h1": {}, "sB74Eim5": {}}}, "eventId": "bcXwRlHy", "version": "2y41gmdJ"}, {"dateTime": "PdSbJljj", "eventData": {"eventName": "UBF4noX9", "properties": {"gFHNBjou": {}, "vNx69ewE": {}, "pNaR4x90": {}}}, "eventId": "UcwC7PVu", "version": "expKHPcO"}], "thirdPartyUserId": "ukjnTpcU", "userId": "QKxLcE5p"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --name 'KkQHiysd' \
    --offset '6' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'X93XHAFl' \
    --limit '11' \
    --offset '63' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:desc' \
    --tags '["O5q1rX2N", "BougpsuL", "ZlpozcDN"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBatchQueryUserAchievements
samples/cli/sample-apps Achievement adminBatchQueryUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '74ikDIY1' \
    --body '{"codes": ["SiWk6xsf", "dywHj4uD", "nY3r9uxY"], "status": 35}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBatchQueryUserAchievements' test.out

#- 17 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'mbrIbLEJ' \
    --body '{"achievementCodes": ["LS4swQUD", "8Tl3sXkm", "tbXuITYh"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminBulkUnlockAchievement' test.out

#- 18 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'ZjpAPBUk' \
    --namespace $AB_NAMESPACE \
    --userId 'GGY4L9JW' \
    > test.out 2>&1
eval_tap $? 18 'AdminResetAchievement' test.out

#- 19 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'kTujk0VO' \
    --namespace $AB_NAMESPACE \
    --userId '9NceaZwt' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnlockAchievement' test.out

#- 20 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'gWGzVoTp' \
    > test.out 2>&1
eval_tap $? 20 'AdminAnonymizeUserAchievement' test.out

#- 21 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'hxP8RUO3' \
    --achievementCodes 'RuxHuf6f' \
    --limit '59' \
    --offset '93' \
    --sortBy 'contributedValue:desc' \
    --tags '["fP7Sve0t", "LNCbGAVx", "5EsvfqCt"]' \
    > test.out 2>&1
eval_tap $? 21 'AdminListUserContributions' test.out

#- 22 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '69' \
    --offset '100' \
    --sortBy 'createdAt' \
    --tags '["yMAXpYVo", "UXqkJa4M", "iEMcsrFq"]' \
    --language 'kW0O94fx' \
    > test.out 2>&1
eval_tap $? 22 'PublicListAchievements' test.out

#- 23 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'y3CQxIjD' \
    --namespace $AB_NAMESPACE \
    --language 'FF18ROTY' \
    > test.out 2>&1
eval_tap $? 23 'PublicGetAchievement' test.out

#- 24 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'mlhWU6OK' \
    --limit '99' \
    --offset '35' \
    --sortBy 'createdAt:desc' \
    --status 'ujhVdrab' \
    --tags '["CFX8na6m", "xf25F5w2", "B9bQPqCA"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListGlobalAchievements' test.out

#- 25 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode '9DDWhWnc' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '31' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 25 'ListGlobalAchievementContributors' test.out

#- 26 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'IRVh8i19' \
    --offset '32' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListTags' test.out

#- 27 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'CxFWjjqd' \
    --limit '84' \
    --offset '99' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt:desc' \
    --tags '["3IZIjmLe", "zD6lmo58", "7g3wv5BE"]' \
    > test.out 2>&1
eval_tap $? 27 'PublicListUserAchievements' test.out

#- 28 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'YTSyZKOW' \
    --body '{"achievementCodes": ["wpixWx1D", "0dlFdm6O", "CkDfN0vN"]}' \
    > test.out 2>&1
eval_tap $? 28 'PublicBulkUnlockAchievement' test.out

#- 29 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'HJ2EAiZY' \
    --namespace $AB_NAMESPACE \
    --userId 'VhsPv9TT' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnlockAchievement' test.out

#- 30 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'OZtYzVGF' \
    --achievementCodes 'LLckA9gG' \
    --limit '14' \
    --offset '3' \
    --sortBy 'contributedValue' \
    --tags '["y2WeENG5", "DmOUQxXp", "PBsNNAYB"]' \
    > test.out 2>&1
eval_tap $? 30 'ListUserContributions' test.out

#- 31 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'GQ7nO5w2' \
    --namespace $AB_NAMESPACE \
    --userId 'NWPjtV4e' \
    > test.out 2>&1
eval_tap $? 31 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE