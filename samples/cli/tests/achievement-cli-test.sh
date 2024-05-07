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
    --limit '91' \
    --offset '91' \
    --sortBy 'listOrder' \
    --tags '["JhJSW1dk", "vHQrBCl0", "mQSaJgfB"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "z98yQYc9", "customAttributes": {"yprNMKyZ": {}, "fjf6SIk4": {}, "gmL7Li3v": {}}, "defaultLanguage": "l7mugmUv", "description": {"WUM8Aay2": "OavJQI95", "VLDUxbx8": "wQDzz5L1", "p4fveb9O": "lfgIrmBB"}, "global": true, "goalValue": 0.902007247283879, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "enieYAxP", "url": "Sk6p6Pnr"}, {"slug": "zL7WU3RR", "url": "SwnwQ6N1"}, {"slug": "IJKv5xQW", "url": "ZKclzWt0"}], "name": {"dkJi4kT5": "QLkNH00u", "laHgLN63": "BDDboUv3", "r46cuntR": "NlkiEbDz"}, "statCode": "XCrSMLjC", "tags": ["MPhTo2CC", "J5s9zySR", "RdQLmuYa"], "unlockedIcons": [{"slug": "thP5agiQ", "url": "UixmPry1"}, {"slug": "XePYrJJe", "url": "rFdGrrT5"}, {"slug": "hmHnon6f", "url": "XCcqEReQ"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["7smzOt8x", "zenjyI4J", "zrUJqYl8"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'jd5NQhNW' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'WhklJLIQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '5EJpSaNM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"YZmSOj2S": {}, "5zB2gALI": {}, "rx8FEaLa": {}}, "defaultLanguage": "HaAWziBo", "description": {"FZlufi5X": "vezsrOT8", "I6FrjG3m": "W6OArG2u", "mpQWkCe9": "MSWsWCRT"}, "global": false, "goalValue": 0.6492461336041804, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "HAfqduz7", "url": "ZZOvMnIa"}, {"slug": "gYFwHpdQ", "url": "X2y7LsPH"}, {"slug": "OhYgDOWF", "url": "5GKekwtg"}], "name": {"hnDhngRS": "Eza9rap6", "5lp2MabV": "IiveqpsY", "SbrNeRTS": "67erLmv4"}, "statCode": "Lu4lDqyR", "tags": ["x9PRp97u", "akNbNtCZ", "BoNE2AwC"], "unlockedIcons": [{"slug": "kLWBpDUU", "url": "S7NyBsbh"}, {"slug": "sCb7xmcX", "url": "jdcxFCiJ"}, {"slug": "f4woFBmy", "url": "VAmlxmMM"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'MzI8dgPQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'YgWKVpey' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 44}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'lP4UnDix' \
    --limit '3' \
    --offset '17' \
    --sortBy 'uz2ejZmm' \
    --status 'ql4u0q5f' \
    --tags '["DcqaKHL0", "JsWByvNs", "B0TljBX6"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'jPgYhJbQ' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '20' \
    --sortBy 'RfQ2C0ta' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'EJ9xIaay' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "TxXGYUC0", "eventData": {"eventName": "p8dOpJOD", "properties": {"z5SjRkiA": {}, "xOsLcCFn": {}, "o0drkCEY": {}}}, "eventId": "YMb9OxKg", "version": "be0rIOzw"}, {"dateTime": "FElHb5gM", "eventData": {"eventName": "5TGoEdkJ", "properties": {"cIjessQi": {}, "jxSWSNnT": {}, "pLSPQ1JF": {}}}, "eventId": "9Ln0rXNY", "version": "qqMGLmp0"}, {"dateTime": "CWfebxOH", "eventData": {"eventName": "lnqJsI3I", "properties": {"A79IlkIM": {}, "CdVtLLfP": {}, "sdMeiZUJ": {}}}, "eventId": "Hy2xUmsN", "version": "e84r4TGd"}], "thirdPartyUserId": "M9z29cEu", "userId": "mQgispji"}, {"events": [{"dateTime": "gnFB7Vr1", "eventData": {"eventName": "MHlK9uge", "properties": {"pnpwdpvm": {}, "RhBRhDxQ": {}, "zjyiFAqi": {}}}, "eventId": "ojtxoBkv", "version": "nqJkgSHn"}, {"dateTime": "OtssZEvi", "eventData": {"eventName": "4XhSsfWT", "properties": {"kghT1bMZ": {}, "O2XQCX0H": {}, "hgc4owX0": {}}}, "eventId": "P5JuWiAC", "version": "yldi2qJ7"}, {"dateTime": "zVXyHeaC", "eventData": {"eventName": "mss4tAuT", "properties": {"S25WgKeq": {}, "egFkBtrC": {}, "oh23vltm": {}}}, "eventId": "tMiUo1vt", "version": "mz6JuRTk"}], "thirdPartyUserId": "eM2ipJpb", "userId": "HTXjnMfG"}, {"events": [{"dateTime": "lx4Dap3C", "eventData": {"eventName": "DsfStvg8", "properties": {"gEPE5IiD": {}, "7rDiLHOI": {}, "XlMBkMrG": {}}}, "eventId": "ABT3C6Xc", "version": "23mUwlDA"}, {"dateTime": "YEPl2Th8", "eventData": {"eventName": "psHr6iQx", "properties": {"X43vo9F9": {}, "vTnUQWBo": {}, "sQMnJ7K1": {}}}, "eventId": "psRZHf0f", "version": "Mk6x5UEh"}, {"dateTime": "Onrl0lb7", "eventData": {"eventName": "CwXgnCJ2", "properties": {"8hr7Bors": {}, "eMOzDZkr": {}, "w4jyNIsr": {}}}, "eventId": "cZtzrf3k", "version": "c1wIkmhW"}], "thirdPartyUserId": "POr1GRyM", "userId": "63eerth3"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --name '86uUvBin' \
    --offset '40' \
    --sortBy '8pbmG1Ia' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'YfHlbwIg' \
    --limit '10' \
    --offset '26' \
    --preferUnlocked 'false' \
    --sortBy 'jmekz5Ek' \
    --tags '["8V8POMpz", "TptlIkQz", "EJkNxC53"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode '1QJBTln1' \
    --namespace $AB_NAMESPACE \
    --userId 'Z5PE6Sdb' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'i2aCLCkL' \
    --namespace $AB_NAMESPACE \
    --userId 'snjJ3vRF' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'OwZS1IbG' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'hOeiGZ9o' \
    --achievementCodes 'KEc9UtIB' \
    --limit '38' \
    --offset '57' \
    --sortBy 'SZzPeF5V' \
    --tags '["JUPIuLik", "0uopZgX5", "h5mVQPBK"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '33' \
    --offset '61' \
    --sortBy 'updatedAt:desc' \
    --tags '["Uetm5OUv", "8UxuSZjq", "P1FyKw0A"]' \
    --language 'as9otnrS' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'j349G8yn' \
    --namespace $AB_NAMESPACE \
    --language 'P7Crjiyv' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '8rQ1yq41' \
    --limit '45' \
    --offset '22' \
    --sortBy 'lPQFQm38' \
    --status 'PYtJ1M5y' \
    --tags '["N6V6sRHz", "6h5bfUnm", "k2efN3m8"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'D0RwEnU6' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '95' \
    --sortBy 'vyo62Gx6' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'TnpTAkzV' \
    --offset '64' \
    --sortBy 'QetMG7R6' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ORnT2I4E' \
    --limit '88' \
    --offset '69' \
    --preferUnlocked 'true' \
    --sortBy '3nf7oqpP' \
    --tags '["rt0UlJ9t", "9lzG2upo", "O44vDeCs"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'qaqyFSyk' \
    --namespace $AB_NAMESPACE \
    --userId 'JjFLPuVE' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'B5F1GCpV' \
    --achievementCodes 'y7FnUcVZ' \
    --limit '99' \
    --offset '81' \
    --sortBy 'qgbOsXnH' \
    --tags '["JGpHTJAu", "gL5Ej9be", "uWiV6bpH"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'QS6Cdwm9' \
    --namespace $AB_NAMESPACE \
    --userId 'KC1k6J4R' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE