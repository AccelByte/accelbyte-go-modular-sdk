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
    --limit '37' \
    --offset '44' \
    --sortBy 'updatedAt:asc' \
    --tags '["aTQPOu1P", "dKo1Pri4", "5oQYWds9"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "bTBjP8OP", "customAttributes": {"Hgnxbo65": {}, "sqRxaVLh": {}, "lgqvhOjM": {}}, "defaultLanguage": "lUpiUGC2", "description": {"uzbvpEyh": "TLoSBGAN", "uXhvfjoz": "NVnUOYnM", "U8KLNjsy": "Wje3oGAy"}, "global": false, "goalValue": 0.08262577176218366, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "rGiMLucF", "url": "b3bkPCKS"}, {"slug": "dnQkKKEA", "url": "2rOzue9x"}, {"slug": "JabvDZzD", "url": "mMANf7PQ"}], "name": {"vCMSVDnW": "kdPVdoD4", "kLwPz83h": "s0XM85sN", "djccqV0g": "Hn5WW9Am"}, "statCode": "MWX0O8C7", "tags": ["XWYTGYRb", "4x5l8uRV", "KTaszGsV"], "unlockedIcons": [{"slug": "VZj0IMfi", "url": "2RExNk6s"}, {"slug": "hAnO77qq", "url": "sQftrV8H"}, {"slug": "Bn0mSZg9", "url": "gNT4tb7J"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["SnUfFqwU", "gjs9RYk9", "XpuxdMqn"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'zcdRC1NM' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'jjm7UqNJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'SFba6QQD' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"VM3gcQAj": {}, "y3m52q7r": {}, "qyBkVvfq": {}}, "defaultLanguage": "nn1CSIm8", "description": {"AYIeMnX3": "BnWtodit", "YbIl8xPx": "ich5PreG", "nmzjlizS": "603auLnN"}, "global": true, "goalValue": 0.5582732814818415, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "0xBGlCs6", "url": "zamTqko9"}, {"slug": "fnjDPKzG", "url": "c1PjXOax"}, {"slug": "KfEQWsEo", "url": "HymQBzov"}], "name": {"icSkaktE": "cXrAh8VY", "NQDLBhbk": "tfkDFlZ1", "DE9OFkT5": "C8lQFTFw"}, "statCode": "u7v5E704", "tags": ["BMKhyv05", "OrUchcjO", "A8OdPfPP"], "unlockedIcons": [{"slug": "6j3Alinc", "url": "s9g59d67"}, {"slug": "xyJzUgcx", "url": "BkvT3ZlM"}, {"slug": "AJSwHzp7", "url": "N7TE029Z"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'kbVGmR0x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'ScwdnPsu' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 56}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'jvNwa4aO' \
    --limit '25' \
    --offset '59' \
    --sortBy 'vO1CdhgN' \
    --status 'FBydVmuM' \
    --tags '["U3tNLdtj", "kvoU0iCS", "LA5SnV42"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'BoFl2UB7' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '57' \
    --sortBy 'iLG7MBo3' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '1k4mkdBB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "0Xf8z0Mo", "eventData": {"eventName": "2DZW28uB", "properties": {"nwWT2uDA": {}, "6ija6N2j": {}, "YDtSWTvZ": {}}}, "eventId": "WQqOc2OF", "version": "6hlAoPia"}, {"dateTime": "52LvJ9fT", "eventData": {"eventName": "XZw4jrE7", "properties": {"h89PUw90": {}, "9vvVzMQe": {}, "3fRLjthC": {}}}, "eventId": "Of3Al5T2", "version": "asj8f4T5"}, {"dateTime": "3uwCGAlj", "eventData": {"eventName": "d2vkkTX2", "properties": {"j08r86Nq": {}, "RzVasYeO": {}, "h25gswyb": {}}}, "eventId": "KjOFaBJd", "version": "DWgljuKc"}], "thirdPartyUserId": "KimOiRk4", "userId": "b7ggf2Pc"}, {"events": [{"dateTime": "I4kBSfwU", "eventData": {"eventName": "Kr20BSNz", "properties": {"G7AuAboe": {}, "xZcpEdkL": {}, "OOqolwqg": {}}}, "eventId": "il4S0yvw", "version": "HbEi0LGZ"}, {"dateTime": "x8Fn7PzV", "eventData": {"eventName": "fNLeYobF", "properties": {"p6N75rfE": {}, "RsTeqvRq": {}, "q7aiaPnN": {}}}, "eventId": "2eYHliG1", "version": "jfZ4eLUQ"}, {"dateTime": "JdaxHJEk", "eventData": {"eventName": "OXMz5Ruu", "properties": {"kDtHDrdr": {}, "guwGnGhx": {}, "mkL7sdg2": {}}}, "eventId": "U9JkdAPl", "version": "SZB6ELEN"}], "thirdPartyUserId": "BAskUmo7", "userId": "07ByHW4W"}, {"events": [{"dateTime": "OhgmzZw8", "eventData": {"eventName": "ckznMhJl", "properties": {"s0M5v7IU": {}, "2xW9J9Hf": {}, "9iRCjLdn": {}}}, "eventId": "h6Dg19xT", "version": "loEFRtLA"}, {"dateTime": "txHT4vVc", "eventData": {"eventName": "37rNblGn", "properties": {"LMZm8uPY": {}, "D6i5um13": {}, "aJ5YecRE": {}}}, "eventId": "LNgkl0yf", "version": "cD9iLlhr"}, {"dateTime": "UUYNMetl", "eventData": {"eventName": "vV6r2poo", "properties": {"B7gi3QrN": {}, "wwFQezBk": {}, "VuZq2W82": {}}}, "eventId": "ZcNkUTcK", "version": "6BKgo9MA"}], "thirdPartyUserId": "XiqX5GMC", "userId": "prcsP0Eg"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --name 'tfrIJABe' \
    --offset '30' \
    --sortBy 'T4zpXknb' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'BOSpohi8' \
    --limit '98' \
    --offset '28' \
    --preferUnlocked 'true' \
    --sortBy 'uvqjbSBi' \
    --tags '["nxRwDUWa", "B1MwPzfi", "bb8VEayg"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'nvVgON3Y' \
    --namespace $AB_NAMESPACE \
    --userId 'seC12XBt' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'MSzIpqtP' \
    --namespace $AB_NAMESPACE \
    --userId 'ie1R3PrI' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'ExzCDNTa' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '3bXw9wui' \
    --achievementCodes 'zRkHH2K8' \
    --limit '70' \
    --offset '22' \
    --sortBy 'qwftOspd' \
    --tags '["ETq5lwSf", "FFzpUPXW", "JW6sAL5d"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '22' \
    --offset '68' \
    --sortBy 'listOrder:asc' \
    --tags '["rLpaPpyB", "Aayyb74U", "FWNs9Xz7"]' \
    --language 'rq8p8NgJ' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'ILj1oXCY' \
    --namespace $AB_NAMESPACE \
    --language 'MOmfXWa8' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'VMRONcAz' \
    --limit '85' \
    --offset '27' \
    --sortBy 'ocEef7S5' \
    --status 'ocnZ9DWA' \
    --tags '["Hpc6BlQr", "5FWYPuNS", "8Kxda4yh"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'E5qFiATH' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '1' \
    --sortBy 'gLd7WDdj' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name 'tLtnmmQy' \
    --offset '95' \
    --sortBy 'o1mNXcTw' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'mSFk42eS' \
    --limit '62' \
    --offset '19' \
    --preferUnlocked 'true' \
    --sortBy '4qREJkmC' \
    --tags '["VdlDVEWO", "7sJZ2HMs", "k6wWx9RF"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'EXwqDZMz' \
    --namespace $AB_NAMESPACE \
    --userId 'JenoRQ18' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'd5YIs1b9' \
    --achievementCodes '4hTEUGUE' \
    --limit '52' \
    --offset '37' \
    --sortBy 'x5RJUg8G' \
    --tags '["C1W7gfzn", "ggoPAhzH", "kMNHzUKK"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'zjo2XCcf' \
    --namespace $AB_NAMESPACE \
    --userId 'kkQ64hoZ' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE