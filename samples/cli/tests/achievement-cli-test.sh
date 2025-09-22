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
    --limit '28' \
    --offset '69' \
    --sortBy 'updatedAt' \
    --tags '["q5febR4i", "hpsj60pc", "8Pdru9iQ"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "JFiokCYe", "customAttributes": {"XBSq3VQ6": {}, "sPKIPnmU": {}, "TCQejoeF": {}}, "defaultLanguage": "p2yv1QbY", "description": {"mHyxXchl": "VWVbzHME", "wU3IB3eR": "SBs7BeYG", "NJSdrUSt": "EJ1vIE6k"}, "global": false, "goalValue": 0.7289400811778523, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "vUomvPHJ", "url": "ZjN7FNKv"}, {"slug": "vrV4U9TB", "url": "xklrv3kD"}, {"slug": "9sELl75X", "url": "dImu1Xsw"}], "name": {"ECgOLILy": "ZgDpJMlB", "LUhW4vbI": "4h155j2N", "pjvh8ZzJ": "L7zfY1MD"}, "statCode": "e4QvCvTd", "tags": ["jgRCuGga", "uNJllalO", "SIeJRc7q"], "unlockedIcons": [{"slug": "rnWlV3yX", "url": "8AGc831y"}, {"slug": "BRjwFXMc", "url": "d6D0X3tw"}, {"slug": "KPu3YQRx", "url": "1n0wprqn"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["dMzzAiOX", "5EROT0gH", "FY9cTN5v"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'wWrARSMb' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '2BJEfjcY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'obgW9GDE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"iwlO5AQC": {}, "2xI6db0A": {}, "zQLkFQLy": {}}, "defaultLanguage": "6IUiLt9o", "description": {"lvY7wW6A": "9JCVKOBp", "C1cgBujQ": "xgaWlTVE", "CQAgU41W": "PkC3IkLx"}, "global": true, "goalValue": 0.7458598697708286, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "r1RslmTr", "url": "ayhle12M"}, {"slug": "Ka70vLKT", "url": "mdax890U"}, {"slug": "V9aDrPmX", "url": "0Cl7sRsj"}], "name": {"NoDnIbfO": "qDwrS8Zm", "iOKiTgEU": "TCqf2rJE", "AvJtNLxl": "lrTuBSZh"}, "statCode": "zOCQpjR6", "tags": ["4uj0JVVO", "LuTcVOIh", "afvkcAef"], "unlockedIcons": [{"slug": "eIH1JWIj", "url": "JbQwid50"}, {"slug": "4U7x9Ruy", "url": "og3SvKa1"}, {"slug": "1RJhc7Cf", "url": "ICX6tril"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'jjCjvzka' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'IxVns1cu' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 38}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'HiEOWmK4' \
    --limit '57' \
    --offset '45' \
    --sortBy 'achievedAt:desc' \
    --status 'elkbhOaR' \
    --tags '["dtcUDlDu", "pHHEiR96", "JTXx0dCq"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'YZEdq1aQ' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '44' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'XHwqCV00' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "jybiEms4", "eventData": {"eventName": "lNzISNfm", "properties": {"2L4SIAv9": {}, "qgp5Hxpk": {}, "WURCM6TP": {}}}, "eventId": "5PoUZL2J", "version": "oFx7u52m"}, {"dateTime": "0DZqd8az", "eventData": {"eventName": "WbWywVMl", "properties": {"NUJYNeB2": {}, "JD5f7fLx": {}, "kTnxY8ED": {}}}, "eventId": "Fp2asqEv", "version": "JgS96BFO"}, {"dateTime": "FTvaSUy8", "eventData": {"eventName": "8EeUkh1Y", "properties": {"gL4b1FaC": {}, "qLLoBQwd": {}, "GPidIbts": {}}}, "eventId": "n6Gt7Mmw", "version": "wAXNgedP"}], "thirdPartyUserId": "RE8u5zi5", "userId": "6NhUzg23"}, {"events": [{"dateTime": "FMdUYxCw", "eventData": {"eventName": "3m8pkVlp", "properties": {"Y5BKNGXl": {}, "iLht8yln": {}, "khg7q5es": {}}}, "eventId": "ci2w5Vdp", "version": "xdach14Y"}, {"dateTime": "LzZkuUM8", "eventData": {"eventName": "eMib75mp", "properties": {"XnLKNJwP": {}, "o5mkkBgy": {}, "fAvAGs8J": {}}}, "eventId": "5EChL4f6", "version": "Yh7UUcwK"}, {"dateTime": "q5MyywiM", "eventData": {"eventName": "Bqy1nHfp", "properties": {"bAlggCao": {}, "IYJ2fgVT": {}, "zadUVc6m": {}}}, "eventId": "ktgszHFw", "version": "D14HXwCz"}], "thirdPartyUserId": "3y0DuMnk", "userId": "RyfEwFxv"}, {"events": [{"dateTime": "jxQoQVE9", "eventData": {"eventName": "pzKtd41C", "properties": {"1o4EmyuN": {}, "KxCz9zTg": {}, "Pk0iUV5f": {}}}, "eventId": "AlXBhzyB", "version": "35NMZyDT"}, {"dateTime": "lTz7PZdR", "eventData": {"eventName": "PpM2V5jB", "properties": {"MMpHcIJP": {}, "Y3e24LMW": {}, "NUOM6zJI": {}}}, "eventId": "TOxL2E2H", "version": "tWwukLzE"}, {"dateTime": "6soc2DbW", "eventData": {"eventName": "Lz54ksYW", "properties": {"rRlDmnf6": {}, "5cmCmo85": {}, "LRIQJFMe": {}}}, "eventId": "hfCsykmL", "version": "P6MZllUU"}], "thirdPartyUserId": "GKkF4WJX", "userId": "wJ9KJA2q"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --name 'EUohhfk9' \
    --offset '67' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'tPNTu0KH' \
    --limit '48' \
    --offset '27' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt' \
    --tags '["Um398GaH", "I1mVzddy", "Qosx3SWC"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'JlTKDk0i' \
    --body '{"achievementCodes": ["tSAwYTjc", "nrJgxqeE", "vaZshHF2"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'wzjrBsRZ' \
    --namespace $AB_NAMESPACE \
    --userId 'JgHKzDNB' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'BaCPjPgA' \
    --namespace $AB_NAMESPACE \
    --userId 'IPQf4Ckm' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'isYvIBRI' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'P2RDSvAU' \
    --achievementCodes '95WyeY71' \
    --limit '41' \
    --offset '91' \
    --sortBy 'contributedValue:desc' \
    --tags '["T2QpgOUi", "PknWzqAW", "2Bm6qqZk"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '68' \
    --offset '11' \
    --sortBy 'createdAt:asc' \
    --tags '["x7sgnfYm", "8mxRmmXx", "h3Doy7nF"]' \
    --language 'Lqq8CIox' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'RjUJNEhc' \
    --namespace $AB_NAMESPACE \
    --language 'xSiVe2lF' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'LMqvuVoD' \
    --limit '99' \
    --offset '97' \
    --sortBy 'achievedAt:desc' \
    --status 'w3OTNr8y' \
    --tags '["KbtbizWq", "sApxeGPz", "8rndi6dk"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'okgG5B3M' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '97' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --name 'B5JBJ5Mh' \
    --offset '82' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'n5MSQmbR' \
    --limit '49' \
    --offset '34' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:desc' \
    --tags '["orKtozO2", "NF8WKUPa", "hzMKh6rW"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'iDFOTUPF' \
    --body '{"achievementCodes": ["SgJnBjY7", "RCN9PF91", "aJxKCYHc"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'KOmKlj1Y' \
    --namespace $AB_NAMESPACE \
    --userId 'SNbwZgow' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'tOkS34OL' \
    --achievementCodes 'n2mxOetU' \
    --limit '64' \
    --offset '51' \
    --sortBy 'contributedValue:desc' \
    --tags '["jkv41ZyP", "rs0VQUJ7", "gEQuTxSU"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '88pUQNwl' \
    --namespace $AB_NAMESPACE \
    --userId 'fMnvniGL' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE