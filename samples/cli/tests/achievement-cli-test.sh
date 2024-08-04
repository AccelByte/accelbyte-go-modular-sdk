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
    --limit '33' \
    --offset '44' \
    --sortBy 'updatedAt' \
    --tags '["OtJ1vL87", "Hs1urmT2", "TIzmPaZO"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "OUQkXCXN", "customAttributes": {"ISqkhyzD": {}, "VoPf0wnn": {}, "WSFbcCTN": {}}, "defaultLanguage": "lDPe2o62", "description": {"CDGOj73g": "am6k48LS", "mJCyk3WO": "ekN2wDR6", "Ns41cWfp": "6E2oXjhe"}, "global": true, "goalValue": 0.8600418066384441, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "ERBTat14", "url": "fF7SgeAm"}, {"slug": "muNoihu8", "url": "XaXJCqDJ"}, {"slug": "9duhoHIw", "url": "u3TPWeFl"}], "name": {"8RauZUSh": "eLxrZi1a", "Ma8XiamG": "SKIRpwNO", "74rXbl8F": "btJYOQKu"}, "statCode": "Vv7MK2lG", "tags": ["frKBtonW", "Oi8crrPr", "73gcnii4"], "unlockedIcons": [{"slug": "RmLXgZZT", "url": "2ZT96RTm"}, {"slug": "4UlisC1S", "url": "yGkXFK9j"}, {"slug": "BB9GMiFR", "url": "3QQy5QkW"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["rQ1snr0O", "VWVDEWDb", "l3utNKkV"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'sWdBfYbv' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'PFL6vHke' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'aEDYCntS' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"7U32gZot": {}, "6AsWONkm": {}, "jkqdsFhW": {}}, "defaultLanguage": "TLHZSrTU", "description": {"b4NBYJI1": "Isg5sAHJ", "hGRV7QuL": "QMeTEV3p", "uVvQhUlj": "rumdVL5n"}, "global": false, "goalValue": 0.4340610462867701, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "gL8F2C5S", "url": "665Q53Cb"}, {"slug": "S5cYBLxI", "url": "yPLlrBGq"}, {"slug": "qBTHMGJT", "url": "LtM65GKk"}], "name": {"7DV9iuuv": "bxzBh5B8", "YkdjHUkL": "QwnEWaq8", "bZZrO9XK": "lS39otnM"}, "statCode": "o87LWNzV", "tags": ["TVngNca8", "e3umVTGv", "WNdDcGna"], "unlockedIcons": [{"slug": "CtEdtXUG", "url": "3N6nAnBc"}, {"slug": "jW1AD9CN", "url": "R0TUkWAp"}, {"slug": "Zxm7rdel", "url": "kamz2N9C"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'j19MwAFo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'I301uqdG' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 53}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'ZF3GSCpv' \
    --limit '53' \
    --offset '23' \
    --sortBy '5XVMgPi3' \
    --status 'pvrgstOJ' \
    --tags '["YqbkFai1", "PPmWTO3N", "U4my1Pgk"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '63P8MmZZ' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '98' \
    --sortBy 'WyV6B752' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'aIolUfzR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "erI8agSG", "eventData": {"eventName": "sp824tQ6", "properties": {"0XWqvfle": {}, "PR7FB5n1": {}, "G2n7wqOu": {}}}, "eventId": "KYf9neV3", "version": "mDTzv6SP"}, {"dateTime": "slqnDtYV", "eventData": {"eventName": "9cH4KzZr", "properties": {"vtfLlS3l": {}, "atMPFe48": {}, "hE9e24j8": {}}}, "eventId": "pQEBObhi", "version": "QgcjJ05P"}, {"dateTime": "2d5jWPr1", "eventData": {"eventName": "n880XY00", "properties": {"XDV4aP5M": {}, "lDjIPSOw": {}, "SkFUswx6": {}}}, "eventId": "O1KQxVzn", "version": "q1L9vWEW"}], "thirdPartyUserId": "ThNiXJcq", "userId": "GAWtj1N7"}, {"events": [{"dateTime": "F4S21axX", "eventData": {"eventName": "oaO5N85G", "properties": {"yVZOgBHC": {}, "jGHGqPb4": {}, "KeWhqO6i": {}}}, "eventId": "lzlk06tT", "version": "DQVa03ak"}, {"dateTime": "QjtP5z5U", "eventData": {"eventName": "LwWCrSPD", "properties": {"M2GCZkcO": {}, "tWdLnv14": {}, "0SO4l0md": {}}}, "eventId": "WfLzvo0B", "version": "9NpkYUEQ"}, {"dateTime": "mmmTm6SM", "eventData": {"eventName": "0pCnSVew", "properties": {"VrZDfGLq": {}, "GviEUuZP": {}, "lr1cMsgp": {}}}, "eventId": "0LbVLtmF", "version": "6IsjhnB3"}], "thirdPartyUserId": "clpbvvbh", "userId": "UyLmdHUS"}, {"events": [{"dateTime": "KfPzYTky", "eventData": {"eventName": "erUC59Us", "properties": {"Pcy2guSN": {}, "lPFkqcMz": {}, "af9KOFOi": {}}}, "eventId": "WORcNYNa", "version": "8JxhObWS"}, {"dateTime": "orVAXhyM", "eventData": {"eventName": "2xiJc5jb", "properties": {"78FAZOMB": {}, "3h3rH95F": {}, "8ci1JnaM": {}}}, "eventId": "nkfe09Vc", "version": "CiGHES12"}, {"dateTime": "6T6XKZ2S", "eventData": {"eventName": "PRpwnqXX", "properties": {"6kpBbAOq": {}, "mjxLPSOT": {}, "XUOzAIf1": {}}}, "eventId": "f3jMmj5l", "version": "cEm5dT1e"}], "thirdPartyUserId": "Y84DXHxH", "userId": "ItTPyK6O"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --name 'ZuJBgqMc' \
    --offset '5' \
    --sortBy 'yCTN309M' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'igWSXMuI' \
    --limit '61' \
    --offset '91' \
    --preferUnlocked 'true' \
    --sortBy 'KObVmgVz' \
    --tags '["AIMu71d4", "GNrMifSO", "vldRbnvW"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'BcEr75Si' \
    --namespace $AB_NAMESPACE \
    --userId '8jKg0T8B' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'YjufVA1Q' \
    --namespace $AB_NAMESPACE \
    --userId 'ftL4w0nL' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Zz8pjOXD' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'UbHHmEXw' \
    --achievementCodes 'Q6YzqEho' \
    --limit '29' \
    --offset '65' \
    --sortBy '2HOjP4Zw' \
    --tags '["vXLsnhEi", "p32tFCSX", "o8c5Gdyx"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '86' \
    --offset '50' \
    --sortBy 'updatedAt:asc' \
    --tags '["aR3QCrg9", "gr8JkEcy", "oEWFktao"]' \
    --language 'bE97d1k2' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'bI2zWgV2' \
    --namespace $AB_NAMESPACE \
    --language 'K05aZhNC' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'FitmYBQd' \
    --limit '16' \
    --offset '62' \
    --sortBy 'LHBH54QE' \
    --status '67iacGma' \
    --tags '["HkBaqKiQ", "4RkrcBFE", "RhrwWnWe"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'A1vLO6TD' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '22' \
    --sortBy 'p94qyDcN' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'ohWfgMv8' \
    --offset '23' \
    --sortBy 'I2lIYuVZ' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'NeGkeUZr' \
    --limit '74' \
    --offset '83' \
    --preferUnlocked 'false' \
    --sortBy 'FnfizroA' \
    --tags '["fCn4rukD", "4hGeMBA1", "KY2Jz8Hw"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'Y5Qvc1iH' \
    --namespace $AB_NAMESPACE \
    --userId 'oI8OSKfy' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '60SisA4G' \
    --achievementCodes '4eJad4i2' \
    --limit '57' \
    --offset '82' \
    --sortBy 'IHTrxuHm' \
    --tags '["Br7M3k6P", "LUevGiBo", "fvcKQrm1"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'eEhQW3Qz' \
    --namespace $AB_NAMESPACE \
    --userId 'a013zzbN' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE