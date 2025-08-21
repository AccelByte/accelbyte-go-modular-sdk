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
    --limit '97' \
    --offset '5' \
    --sortBy 'createdAt' \
    --tags '["EjvVGIl7", "07PLQWJ3", "DmW2rowT"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "1sTo23Yp", "customAttributes": {"6ZNfQAgy": {}, "EtmEvr1N": {}, "etnaNemn": {}}, "defaultLanguage": "QCAT7VWi", "description": {"pXnJFb16": "eNUSQCqb", "TPLS7hc3": "o16vrh73", "poC8yF6P": "NhDipHhY"}, "global": true, "goalValue": 0.96665647214124, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "syMFGLxA", "url": "VBvCQpg7"}, {"slug": "PgvvcWfY", "url": "aVwHAtMs"}, {"slug": "cYPK2P9x", "url": "nHqUFNnn"}], "name": {"OeUOFm6G": "9y0mfSmp", "WKfKdyHH": "4qmGiW0z", "TOdoVBz3": "t2oBv5U3"}, "statCode": "nfapUvx7", "tags": ["iuowRfmx", "0ifGLeKQ", "gSS1Yvl7"], "unlockedIcons": [{"slug": "4dY2JOq7", "url": "KQOlWgM8"}, {"slug": "zBOjw7Nx", "url": "gkULjHkR"}, {"slug": "W2boEFYB", "url": "p14bTdQG"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["8VRctasB", "f7ld9iMr", "tZajsjrv"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'YGWsz4yi' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'ZDoCofjV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'Di2Fm1Nu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zHCODvIV": {}, "sVlpqooa": {}, "vR6SbsnT": {}}, "defaultLanguage": "CFavRtuS", "description": {"6iddhed0": "jkIjzNR2", "nVjt13un": "V9rXLRuv", "cg175ePs": "k1xDsJpU"}, "global": false, "goalValue": 0.8790094298166239, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "SJyAYVNl", "url": "8tXCPCjE"}, {"slug": "8qYWVGoa", "url": "iKuv6u7G"}, {"slug": "PXFOWHzx", "url": "gcTGJdz9"}], "name": {"po2aiXUF": "J0VFkOWy", "TCyw5Qm1": "uvp0y8g8", "zgP1s61J": "bzK7Ctxn"}, "statCode": "RuZiu3tR", "tags": ["sLrga5kq", "Skp4uAxR", "E8XVzn53"], "unlockedIcons": [{"slug": "jywXhxIf", "url": "yn898ej6"}, {"slug": "aKhkYZ5C", "url": "aN9zVgJn"}, {"slug": "pn27lFq4", "url": "IKlvROlU"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'TzCZx5sN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'ur6FkCJh' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 99}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'cr29tHJg' \
    --limit '79' \
    --offset '51' \
    --sortBy 'achievedAt:asc' \
    --status 'dmJcYrxc' \
    --tags '["9v9wLEUV", "4IlMCGlq", "JBfbHzP9"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'V1JkHni5' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '92' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'vtoHoapF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "XAl6PS1N", "eventData": {"eventName": "GRcEHITq", "properties": {"o1xCBRPr": {}, "2tMLDnX0": {}, "ska14N8U": {}}}, "eventId": "mt3xBoGJ", "version": "nKhRkonH"}, {"dateTime": "PccrBEKT", "eventData": {"eventName": "eIKkIfhJ", "properties": {"AXHZQbUL": {}, "DkpweSL9": {}, "LYAykdfs": {}}}, "eventId": "dMuujzXd", "version": "M3EhNDt3"}, {"dateTime": "rGszYgXs", "eventData": {"eventName": "FGb5jm9a", "properties": {"LpkvQcGI": {}, "iL4NSF06": {}, "o4Ci4SKc": {}}}, "eventId": "VxRx9HTB", "version": "8UppLf3l"}], "thirdPartyUserId": "dzNibA9L", "userId": "e7cvHws4"}, {"events": [{"dateTime": "iOmjli7k", "eventData": {"eventName": "qEa3VPeF", "properties": {"xciDJIB6": {}, "qm3NsLRu": {}, "wmaOczeo": {}}}, "eventId": "1K57pwPx", "version": "2PiKnifN"}, {"dateTime": "xC5orSdk", "eventData": {"eventName": "zz9gxRXz", "properties": {"mRt6pus2": {}, "8bofIlvV": {}, "7TVgn2FK": {}}}, "eventId": "IocWjtgJ", "version": "K1XwaFoA"}, {"dateTime": "Ewr4RO3q", "eventData": {"eventName": "GYh0fZSX", "properties": {"k3eFUiWq": {}, "wvLHIxdK": {}, "VzL4DDIG": {}}}, "eventId": "DzCegVDJ", "version": "gHHeKz1q"}], "thirdPartyUserId": "Hk8QmrIc", "userId": "r0bLfmBZ"}, {"events": [{"dateTime": "oaG1Ogdq", "eventData": {"eventName": "rbdpkzQe", "properties": {"hJEMvPn9": {}, "IAQgpIsP": {}, "BJkrHm6K": {}}}, "eventId": "ElOvx7H8", "version": "aU2H2aXd"}, {"dateTime": "4qlsnVTF", "eventData": {"eventName": "YlDBNTP7", "properties": {"nfYrRHrj": {}, "EHu8hb0C": {}, "eA35cnGi": {}}}, "eventId": "LarApf0R", "version": "ZP8UlPwM"}, {"dateTime": "tF6b0pXN", "eventData": {"eventName": "lD7GyAa0", "properties": {"MRDC8HKR": {}, "c4Gh0nbr": {}, "ZkVDTu5g": {}}}, "eventId": "2Xh3sSq3", "version": "9IvlFPzR"}], "thirdPartyUserId": "gs1lRseL", "userId": "FnVp9cNq"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name 'f1HFINRu' \
    --offset '64' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'TZMXzYTN' \
    --limit '15' \
    --offset '46' \
    --preferUnlocked 'true' \
    --sortBy 'achievedAt:asc' \
    --tags '["b06Br6aC", "xxzavPRa", "SE1psMST"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'pPgEzmRT' \
    --body '{"achievementCodes": ["ar9RR0c0", "YVC8zrY9", "f2wbJIYT"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'Wvd10tUX' \
    --namespace $AB_NAMESPACE \
    --userId 'i3mTwU7T' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'yihwjJu3' \
    --namespace $AB_NAMESPACE \
    --userId '9kJg8Lqd' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'gtSq6i9s' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'NT4MZqjg' \
    --achievementCodes 'aauVFica' \
    --limit '70' \
    --offset '90' \
    --sortBy 'contributedValue:asc' \
    --tags '["BS5hzaqY", "A9uksTjX", "ZL6rlEmX"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '32' \
    --offset '11' \
    --sortBy 'updatedAt:desc' \
    --tags '["9Ep7iNjR", "6B1V3pZy", "UHN0Pn5S"]' \
    --language 'LQxivsFW' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'JJLpNWYO' \
    --namespace $AB_NAMESPACE \
    --language 'Bsmpwc1O' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'f7p4dNNT' \
    --limit '82' \
    --offset '11' \
    --sortBy 'createdAt:desc' \
    --status '9sOpd6IC' \
    --tags '["h8svPBGA", "mExjde4S", "3EXDTThL"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'UPBBHfFy' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '93' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'OlAmjGMJ' \
    --offset '82' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'SygDQTsH' \
    --limit '81' \
    --offset '25' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:asc' \
    --tags '["WP1tkAd1", "wMnvmJoM", "NaogssB0"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'JFQTB4Ot' \
    --body '{"achievementCodes": ["PvjKDpHq", "OZ10TI4w", "QVrogKrI"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'SUSwXx5v' \
    --namespace $AB_NAMESPACE \
    --userId 'AYp4dIxR' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'bmYeVoq5' \
    --achievementCodes 'Zv9UcRDD' \
    --limit '57' \
    --offset '12' \
    --sortBy 'contributedValue:asc' \
    --tags '["6TAtNSGy", "M4qvAXK1", "0t9CoAUy"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'H7HLKsJi' \
    --namespace $AB_NAMESPACE \
    --userId 'VscZ5Axk' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE