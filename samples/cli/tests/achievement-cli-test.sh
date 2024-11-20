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
    --global 'false' \
    --limit '67' \
    --offset '91' \
    --sortBy 'createdAt:desc' \
    --tags '["LS9ABB0h", "UbbddZIN", "83MQVKVk"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "xVgrrg3t", "customAttributes": {"ZLuWRhOK": {}, "gOM5sEQV": {}, "MaaMCuBP": {}}, "defaultLanguage": "E9BWT8dI", "description": {"e9rnuGnx": "3bjrj21l", "mD8kGOIe": "pTY7pMJj", "oA2XNG6M": "icZCeSQy"}, "global": false, "goalValue": 0.1737453769389642, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "BF6zWsuN", "url": "KLOQMMkF"}, {"slug": "HNvvtY5H", "url": "dvBBE84f"}, {"slug": "QlFKh9vg", "url": "iiksSvSv"}], "name": {"exciPsw2": "dnEavhaX", "AIqOIGng": "xOIn1UrQ", "fwXWYAke": "cVMaOPpq"}, "statCode": "CBN7fFKX", "tags": ["JNNyhRTR", "AWmm1Vmm", "lQjW2inU"], "unlockedIcons": [{"slug": "Rm3rTvh7", "url": "3mlNNDna"}, {"slug": "L4tAAT9m", "url": "owcT7NYO"}, {"slug": "E0R9O4LC", "url": "FVgilwEd"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["jvnjcTbS", "muNWM8jw", "vfGa5rFk"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'VLbW32h7' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'GCUvaWcN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'DLz68ItC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"t9lDACrI": {}, "ib5bUF20": {}, "u0hVHfiE": {}}, "defaultLanguage": "S5dWJdYB", "description": {"XI9ynCLO": "07GjffJm", "yVJ2vWIe": "4UY9zJnm", "xmrYf02G": "ocPjJ03y"}, "global": false, "goalValue": 0.5515425139301953, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "bCJFzfrk", "url": "nXRpyCvS"}, {"slug": "o8UcJF8G", "url": "nEYCW1XB"}, {"slug": "axDNtH47", "url": "cpd8F9zF"}], "name": {"OA8WJOLG": "P0hlnRir", "iDXFdjRp": "AaYAIALA", "knkm2Y21": "q9Zfhu4R"}, "statCode": "sSfL1O2s", "tags": ["RNr326BW", "nPOp59cL", "nTpUNiDN"], "unlockedIcons": [{"slug": "s582wW1E", "url": "33iMwrIe"}, {"slug": "RRUy39Gf", "url": "zzC1DRVC"}, {"slug": "rlfjlLUA", "url": "tm8pa8v5"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '6K4MQ1J3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'rcqraZDL' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 39}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'xomSqKnN' \
    --limit '30' \
    --offset '90' \
    --sortBy 'achievedAt:asc' \
    --status 'DyK7MnKb' \
    --tags '["LrW39Bmx", "JuiVYKrl", "jwCRHxg1"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'dxHWvsuO' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '84' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'OiMpsqDX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "eMSjcPRX", "eventData": {"eventName": "UOBR7W4N", "properties": {"zfIOKKTC": {}, "MJYMelGX": {}, "6cAvC4LH": {}}}, "eventId": "fMh3zGx6", "version": "KzUSMwF0"}, {"dateTime": "IpSGGQQq", "eventData": {"eventName": "ZNZ5InWx", "properties": {"8iVm9Wp6": {}, "LK8iK8xA": {}, "LzkOAhcv": {}}}, "eventId": "5joeGQtq", "version": "4tXXdpFQ"}, {"dateTime": "UjIQXd2o", "eventData": {"eventName": "2SvSeF3n", "properties": {"PL0AL7s4": {}, "QVSISLsk": {}, "MuGfPzap": {}}}, "eventId": "hQczuTh6", "version": "PiGrOIkN"}], "thirdPartyUserId": "cxZPXur6", "userId": "IuMQkhSn"}, {"events": [{"dateTime": "rbYOl2Na", "eventData": {"eventName": "Gcy9KxDr", "properties": {"LbhAn093": {}, "uEghnNsK": {}, "FoAoReyj": {}}}, "eventId": "ph6OmsZR", "version": "oegILJC4"}, {"dateTime": "H99YL1mF", "eventData": {"eventName": "pfYTbCPt", "properties": {"cHQbppky": {}, "PTuzzdlO": {}, "R6NUbApf": {}}}, "eventId": "DZi30axY", "version": "G5LgL3qH"}, {"dateTime": "z7EzIjTN", "eventData": {"eventName": "v7UFt1EG", "properties": {"bYnDcm84": {}, "bidZNfPd": {}, "HuEqqVHU": {}}}, "eventId": "PTTOrQfo", "version": "pS7P6tQG"}], "thirdPartyUserId": "L4kWm2F0", "userId": "9UGED3h8"}, {"events": [{"dateTime": "1PLM2i5S", "eventData": {"eventName": "yqbFCY9l", "properties": {"CXW1KzHV": {}, "3WKuHwEZ": {}, "CFnX77QW": {}}}, "eventId": "H2RrSiJ0", "version": "eImcORQG"}, {"dateTime": "OjexXZm5", "eventData": {"eventName": "geIQd1ov", "properties": {"ZlB1qcEW": {}, "uagxzbgs": {}, "GZE0i0n3": {}}}, "eventId": "jsEdsuDm", "version": "ZHQfg2JS"}, {"dateTime": "LGpYS3c7", "eventData": {"eventName": "WOHiqWrw", "properties": {"TwnQxbS5": {}, "wiPUivtn": {}, "gymmuJl5": {}}}, "eventId": "v2xN7j2e", "version": "jSaqPI3F"}], "thirdPartyUserId": "EQq8Ocn3", "userId": "LfGVpl0V"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name '4dUNVc8H' \
    --offset '32' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Vpw65mhF' \
    --limit '11' \
    --offset '30' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:asc' \
    --tags '["UXCvmgtN", "yy26rdDd", "0yJ62yJr"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'ZGiFHeym' \
    --namespace $AB_NAMESPACE \
    --userId '8TOpGrjK' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '4jAzlhq7' \
    --namespace $AB_NAMESPACE \
    --userId 'Oo3DbLrF' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'w4CIu3iO' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '911t713g' \
    --achievementCodes '0RRelMaK' \
    --limit '42' \
    --offset '52' \
    --sortBy 'contributedValue:desc' \
    --tags '["oG6yKU0u", "fhXnequH", "oGitBcKD"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '32' \
    --offset '77' \
    --sortBy 'listOrder:asc' \
    --tags '["fxluQnG7", "joNLFB45", "zmHlmvzy"]' \
    --language '2sP9t8x3' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'gNINniuj' \
    --namespace $AB_NAMESPACE \
    --language 'kWaUhNky' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'EV364L2p' \
    --limit '60' \
    --offset '2' \
    --sortBy 'createdAt:asc' \
    --status 'zkg4vZ0n' \
    --tags '["TUP4oLkn", "ojcnnJkK", "axR0DvID"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'MuDaTnKn' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '60' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --name 'hO45W8Y3' \
    --offset '70' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'lCnxUDNz' \
    --limit '18' \
    --offset '94' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt' \
    --tags '["WDIPINgW", "V5BAorNv", "0hBeGVcD"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'A0EbmWg7' \
    --namespace $AB_NAMESPACE \
    --userId 'OkhZK3sk' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'O67IqJBQ' \
    --achievementCodes 'fkZ2tFBp' \
    --limit '91' \
    --offset '7' \
    --sortBy 'contributedValue:asc' \
    --tags '["yRhzaF3N", "geFjZy8G", "4iNDVBug"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'Pntxu0l1' \
    --namespace $AB_NAMESPACE \
    --userId '4piSYEWy' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE