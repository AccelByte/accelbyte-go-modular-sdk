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
echo "1..28"

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
    --limit '76' \
    --offset '95' \
    --sortBy 'createdAt:asc' \
    --tags '["Y175m6z5", "H6zPiqZY", "Ki8U5VtJ"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "JeltfTGQ", "customAttributes": {"m4SPbk2l": {}, "p2WrSjyM": {}, "WJg6uile": {}}, "defaultLanguage": "yGm96WmA", "description": {"Ez69vwKz": "CE4Zvcle", "nfr343Zb": "8FmMLSHq", "GSDeQ5og": "1UYCoQSM"}, "global": false, "goalValue": 0.1262101527259596, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "AZJet62Y", "url": "hzKJEWUS"}, {"slug": "vPMPJt1F", "url": "Lwnkw6UL"}, {"slug": "iDaGrlba", "url": "eeNyWz9c"}], "name": {"lGC0E6J2": "NcnMELYi", "5KTsfWZO": "2Jn1hFtV", "vQ7waB2v": "LZVaGIzI"}, "statCode": "wVoW5iT1", "tags": ["kWclyzYa", "9MNRcSP4", "6CETpNsJ"], "unlockedIcons": [{"slug": "Q1pzZgxA", "url": "0L2FF4fp"}, {"slug": "KFjEXbGS", "url": "gg5UhuLU"}, {"slug": "O3Duon20", "url": "Oykflry7"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["55NbITLk", "58aBvTAP", "fi3SqqBo"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'lyTnXHlB' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'gEQtYUmh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'KH9SKW6H' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"SYjuPUj2": {}, "XRio1sMJ": {}, "5Si40oG4": {}}, "defaultLanguage": "GAXvM5hb", "description": {"nzE9egLw": "rkswg3UW", "24spnnUY": "AsmB9ZWk", "EKeR8aCq": "FrwARB8Y"}, "global": false, "goalValue": 0.9670180906518503, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "paQi6cGX", "url": "tpyvFK2W"}, {"slug": "WbAlJIm8", "url": "pMoZR013"}, {"slug": "H3e97HTQ", "url": "JBMlTKnx"}], "name": {"xLJKjVKh": "wLwLfJiv", "6p5JRn2m": "L3Ci2qGv", "invBGg0Z": "ry7CyGmF"}, "statCode": "6tsu4Z1l", "tags": ["wIFWJ0AK", "NN9wSZ0L", "20QTU07w"], "unlockedIcons": [{"slug": "t2578Jyn", "url": "biUC39JW"}, {"slug": "qcI9qIKt", "url": "ZMtKt9K4"}, {"slug": "lxtRO5Ss", "url": "8empVQ7x"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'eXMnCelx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'MK2BNhGK' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 6}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'OD1DYt9y' \
    --limit '60' \
    --offset '100' \
    --sortBy 'createdAt:desc' \
    --status 'RGdNv3iB' \
    --tags '["P6XrV3kz", "0pHONQk3", "k4EaIZV4"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'U8QNp86z' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '34' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'P1WoNUrt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "7ZBtE4jh", "eventData": {"eventName": "4UntaoR3", "properties": {"qRZBo1Qu": {}, "y8TvBgiw": {}, "N4M6fGcO": {}}}, "eventId": "3yJRRceT", "version": "h9tOPrfT"}, {"dateTime": "gE5qhnGO", "eventData": {"eventName": "hMvcglDu", "properties": {"NYhJ7PAM": {}, "NF2fCsQQ": {}, "EgTciLJZ": {}}}, "eventId": "FrzNO4Pv", "version": "kYG0e6AO"}, {"dateTime": "KXA7yxNl", "eventData": {"eventName": "K86GVtdJ", "properties": {"oyse1khC": {}, "MEKdqhq6": {}, "WUVVdd4u": {}}}, "eventId": "UQDy06Vw", "version": "u71wMcRY"}], "thirdPartyUserId": "CxT7Hfrn", "userId": "d0mU923n"}, {"events": [{"dateTime": "PCDEbkSn", "eventData": {"eventName": "8fsRdN1G", "properties": {"SCHanQjK": {}, "Ra2MSwUg": {}, "5GLoRFKE": {}}}, "eventId": "JMQlOtjn", "version": "cmdc380T"}, {"dateTime": "HyKyHob6", "eventData": {"eventName": "3kmlKHo6", "properties": {"wNo6bb03": {}, "3AnUVYmE": {}, "OQelmh3u": {}}}, "eventId": "Hk1Etpqu", "version": "SImbxigv"}, {"dateTime": "C5pbLLLk", "eventData": {"eventName": "dUMJOQsB", "properties": {"m9d5Ufim": {}, "Uc0mTiAC": {}, "wACX2q9Q": {}}}, "eventId": "cQAoYSBz", "version": "lqKf8tsB"}], "thirdPartyUserId": "kEyoinjn", "userId": "sAOz0xoO"}, {"events": [{"dateTime": "1vx5AKDM", "eventData": {"eventName": "4AWmoaEF", "properties": {"isTWO8nN": {}, "ITk62QdS": {}, "hFJSybqn": {}}}, "eventId": "NomvGGfy", "version": "lZV8hOpf"}, {"dateTime": "yrfSNkgF", "eventData": {"eventName": "wgvOGLP7", "properties": {"yIzjJ9X3": {}, "A0f37852": {}, "hITzmWcC": {}}}, "eventId": "1M6CTrGJ", "version": "D9lAO4o0"}, {"dateTime": "U8QCC7t1", "eventData": {"eventName": "5LbwPsQL", "properties": {"i9UitTvd": {}, "t2e05jSf": {}, "zpyIsINm": {}}}, "eventId": "Vs0lnpKN", "version": "RTchSQq1"}], "thirdPartyUserId": "Qaf4gbFZ", "userId": "EqOqJovB"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --name 'oZP4spW5' \
    --offset '51' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'uCJ70mn6' \
    --limit '43' \
    --offset '67' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:asc' \
    --tags '["SOE0UZNf", "cw4Mag4h", "xjW3lco3"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'VDKShO36' \
    --namespace $AB_NAMESPACE \
    --userId 'TEAF8oQM' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'Yoh68t5D' \
    --namespace $AB_NAMESPACE \
    --userId '4ZXMkMKC' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'FNgr4V7q' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'SNunHhuS' \
    --achievementCodes 'oe3Tyw4y' \
    --limit '19' \
    --offset '79' \
    --sortBy 'contributedValue' \
    --tags '["0rAoXbS0", "VKviCSEd", "kXZG8UXD"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '96' \
    --offset '32' \
    --sortBy 'createdAt' \
    --tags '["E9sZjTvx", "vYgu4qjJ", "z8XLJlmt"]' \
    --language 'cmQMNyzf' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'TSdTWnwi' \
    --namespace $AB_NAMESPACE \
    --language 'aLgNdyjc' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'gJOg5Q5H' \
    --limit '28' \
    --offset '51' \
    --sortBy 'createdAt:asc' \
    --status 'llP10E0l' \
    --tags '["QMy47hCZ", "jY6ecMPS", "OQvlmELM"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'LL2IYAv3' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '37' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --name 'DuTGcO8g' \
    --offset '24' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'SLHO77xK' \
    --limit '46' \
    --offset '53' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt' \
    --tags '["w2oJk3dQ", "s0qWlSX8", "QXIbm3Lo"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'TpzEIkZZ' \
    --namespace $AB_NAMESPACE \
    --userId 'iqHl4y6E' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'Il182zn1' \
    --achievementCodes 'iMAH02P3' \
    --limit '68' \
    --offset '32' \
    --sortBy 'contributedValue:asc' \
    --tags '["C7Q6vUiD", "4KqwtpDH", "qEeDMqhQ"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'nWWGT9ee' \
    --namespace $AB_NAMESPACE \
    --userId '0edY9G6Q' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE