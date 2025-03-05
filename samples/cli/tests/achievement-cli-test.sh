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
    --limit '83' \
    --offset '14' \
    --sortBy 'createdAt:desc' \
    --tags '["WZMsZDPv", "d6wS8kH8", "RteuDz0e"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "SkLozPV1", "customAttributes": {"4Gg2kt5o": {}, "3z33WXTC": {}, "q1Af7ZWA": {}}, "defaultLanguage": "D1RAFZPw", "description": {"9aWWqZQh": "3j9liZNg", "dHhiD7KV": "tUV09tqZ", "EOMPgoQF": "L7nyXYDs"}, "global": false, "goalValue": 0.3374649853985985, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "Ij4uSRkA", "url": "CQuGSBdg"}, {"slug": "lJrv9wwg", "url": "gviX8m7r"}, {"slug": "gu5DHHWC", "url": "eRHJnRz5"}], "name": {"3zmXQ35k": "7jbB1ZP2", "pqbiykOd": "JEtgyS2I", "AbLK1ec2": "FWIgRktI"}, "statCode": "e9la0qn7", "tags": ["phVAPNYI", "4abrPCWZ", "fF8QlUOE"], "unlockedIcons": [{"slug": "aEmSwq1C", "url": "rJn6ZZLS"}, {"slug": "qOwihw3K", "url": "rm1RJbez"}, {"slug": "vqT0JvwG", "url": "2ZzBipeT"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["qbywPVr0", "ddg6GD2c", "ZLNnqEQl"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'nYi7sByM' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'QTvdJLRx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'A68FUsd8' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ABfbrZWC": {}, "o4AVosM6": {}, "N7I1jrz8": {}}, "defaultLanguage": "c6UmhnfD", "description": {"byIc2RMd": "BSBagWxh", "bC0csSGc": "9iKFNct5", "FbPJvSTO": "b1bTacTu"}, "global": true, "goalValue": 0.614580664944903, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "gPtA8YBW", "url": "1qcTWTPA"}, {"slug": "A5MWlfJw", "url": "97xTcGSR"}, {"slug": "Q2PGO6HP", "url": "mdvur488"}], "name": {"artqXOfW": "g5eHzQCe", "9WNO8UAo": "AQeP4I6d", "KpkvAzJ2": "WLZKYsKA"}, "statCode": "LOYOPPLv", "tags": ["d91poMbi", "dBO6g5UX", "HQop5m4J"], "unlockedIcons": [{"slug": "evIRQzeN", "url": "wWNW456e"}, {"slug": "DWLqF7KB", "url": "Hi8fUrvq"}, {"slug": "TNSrX0hz", "url": "JC3NiJ0H"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'VWr5lskg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'TKYNphEJ' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 94}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'iEcY6pIB' \
    --limit '63' \
    --offset '18' \
    --sortBy 'achievedAt:desc' \
    --status 'xLdHreG1' \
    --tags '["mnZ2q1c4", "cCYbjQEi", "iE00mIWZ"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'wFTJ115p' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '59' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'AXprg0wa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "2TXKepg5", "eventData": {"eventName": "u5sjPnRu", "properties": {"5YSwlRqN": {}, "sdwcZ7wi": {}, "2egH8h9H": {}}}, "eventId": "ac5FII59", "version": "zhUEgCUC"}, {"dateTime": "6Iztgsct", "eventData": {"eventName": "DyQBMIhT", "properties": {"vhnExC0p": {}, "SoSSOfqH": {}, "SHzY00QX": {}}}, "eventId": "S6vUgSbF", "version": "U0O9R59n"}, {"dateTime": "AZfngU7d", "eventData": {"eventName": "XQzozrzr", "properties": {"W0sDax5X": {}, "jK0V6F1J": {}, "sildgkNM": {}}}, "eventId": "gkO2SgSY", "version": "oj2eDa7f"}], "thirdPartyUserId": "5js0igK7", "userId": "ANPKOlZt"}, {"events": [{"dateTime": "vRDaXtZC", "eventData": {"eventName": "xW2KeWeH", "properties": {"JSxlI87T": {}, "hQTiIgS8": {}, "WYeYEcTg": {}}}, "eventId": "hkyOQCYc", "version": "HdBfJIo8"}, {"dateTime": "sS0TYmH1", "eventData": {"eventName": "PlQFi3BB", "properties": {"giwG9Qmd": {}, "OoPVPleA": {}, "gQplcS9f": {}}}, "eventId": "A4RCo9aH", "version": "KcjnIikX"}, {"dateTime": "jmdvFHDP", "eventData": {"eventName": "XsXTshQM", "properties": {"OL1weSlZ": {}, "gsoR594P": {}, "fnIO3Ceo": {}}}, "eventId": "yRihMicX", "version": "K8GVuHGk"}], "thirdPartyUserId": "xc5kGWe7", "userId": "Qb4pTBr4"}, {"events": [{"dateTime": "DlIW76Dg", "eventData": {"eventName": "RZYMaeXh", "properties": {"WF0PTrJo": {}, "3NV6pC38": {}, "RPKTLpoF": {}}}, "eventId": "B5Gtfu2I", "version": "VkBJaJFi"}, {"dateTime": "cpwAiUXC", "eventData": {"eventName": "robJ4tk9", "properties": {"O5VM6BPX": {}, "DLuJQBoC": {}, "VmxhLTKD": {}}}, "eventId": "UQoCrtac", "version": "NgDl3QKT"}, {"dateTime": "xWKd9ZZP", "eventData": {"eventName": "I138ciM7", "properties": {"7grKoqA6": {}, "Ic7zXzpN": {}, "PeFRVXT0": {}}}, "eventId": "Bd80IW7R", "version": "521MpHFe"}], "thirdPartyUserId": "j4kpectd", "userId": "7vtO3J4q"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --name 'Hj8RtIhw' \
    --offset '50' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ep2zTeeD' \
    --limit '66' \
    --offset '61' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:asc' \
    --tags '["4LJwmJm5", "f98Bk6Tb", "WssmEeSZ"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'KsG8rgRQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Nde9EFkM' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'EbeDvKY1' \
    --namespace $AB_NAMESPACE \
    --userId 'BB691Xdr' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '1CoRLweD' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'R0ZxMUPV' \
    --achievementCodes '5spPeApG' \
    --limit '52' \
    --offset '27' \
    --sortBy 'contributedValue' \
    --tags '["cGp7v081", "fzHHRJsA", "4G34LORE"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '11' \
    --offset '71' \
    --sortBy 'listOrder:desc' \
    --tags '["gjVWlr7L", "mCzRd1BF", "AFTtWi2B"]' \
    --language 'fCU1CNRC' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'JV6Id1ff' \
    --namespace $AB_NAMESPACE \
    --language 'pG24oSkG' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'DRYLtPCz' \
    --limit '91' \
    --offset '53' \
    --sortBy 'createdAt' \
    --status 'OC7vdcxK' \
    --tags '["j9xVnAbY", "6h6JWnKX", "n9K6DJc3"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'gOuVWF83' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '68' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name 'pb78cquc' \
    --offset '6' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'vdJr1bMW' \
    --limit '74' \
    --offset '48' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:desc' \
    --tags '["gvGOAOLv", "S9omnwTt", "uOZw4jlC"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'PE63MRRP' \
    --namespace $AB_NAMESPACE \
    --userId '5LwkwLJz' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'wsdF2HRg' \
    --achievementCodes '5FzajnAJ' \
    --limit '78' \
    --offset '54' \
    --sortBy 'contributedValue:desc' \
    --tags '["dnjmwO9K", "Dczjjbzk", "YYTVaTTv"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'IkQCVcWh' \
    --namespace $AB_NAMESPACE \
    --userId 'AuXkQSlJ' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE