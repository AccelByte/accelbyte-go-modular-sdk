#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..27"

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
    --limit '94' \
    --offset '35' \
    --sortBy 'listOrder:asc' \
    --tags '["ptiz3J2LnEA0YlyW", "GSl7XsRCqF7GCpEr", "YMErAKTKzuL2IO9u"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "CYoYcZgziEveLTGk", "customAttributes": {"lXBRpbArtz3imJBm": {}, "Qxgb6B3Raj6BG9Xk": {}, "zNP8eCwT9AXCVuO3": {}}, "defaultLanguage": "fBNXzYupWTWyMXZI", "description": {"UFJjP0dh78CfDyOt": "enBjhuui5dQzg98b", "lae7z6sUSlMeUPMd": "8Mp1dUQ63kBJoRIm", "LcvTGRe3eJPtdc3F": "2FhUrW5EC7qODBYX"}, "global": true, "goalValue": 0.7821043770187333, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "Ehrg6hurMjbusv3D", "url": "rBdZ4w7whEHvS1ks"}, {"slug": "Dfv3iDcfwFmjekIw", "url": "cw6cPiK76JZTutsU"}, {"slug": "SEY6vtzELyfyghyK", "url": "wuzqDZcPBzmjxuur"}], "name": {"ziudW92d3dxY5pgC": "SEWHJGIR8bkczJ2O", "mgkb5Wo3pzNEYu1r": "2C9zHV2pNZsqXNsJ", "sK7djjPNTSthUUlX": "ZY2fCxXB38rMRoIN"}, "statCode": "bqPhZT2Repr1DEX8", "tags": ["IUo68No82eUIikmn", "qFPjhyavSYzpu9GP", "cqgxKcDoPnZJcimQ"], "unlockedIcons": [{"slug": "AEah4XfNt4swVwb3", "url": "LzYQUqJV7ilKEGK8"}, {"slug": "fv4J1HaXDAeTr983", "url": "uaO5JQi6rth246OX"}, {"slug": "xnavlo080NLGE26I", "url": "PbkhRIYTiu8ni8n9"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["ORYn6tbxdXTQx90B", "CE5pS13HZ5nrPmHV", "PZELapMBTpewO5o2"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'BeOGAm6Lj4HCxa7a' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'IaoC9jEzGudmgT9W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'P33bLxiD1gj4h7XC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zFXrwHOUq6e92lmj": {}, "ssmRM6HYNaux8FAa": {}, "sXUW4DPORJpxBK52": {}}, "defaultLanguage": "U8E9SV33JXzrni7S", "description": {"ncKZL1f6GcSt46pK": "1gjKKD4SwHIsXe3v", "YJlGoJrsbNopsaxv": "k3fVe1nXDGZBjli2", "fTOfPzBRU0OCgYpS": "LhLTYLeVDykXOgCA"}, "global": false, "goalValue": 0.8031003523377628, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "ae17WldeuP8RLAd3", "url": "THCJAC3F9wdN1bb8"}, {"slug": "a9QnV87cWqqQVl2s", "url": "9BNOEYpSNgXKzLxB"}, {"slug": "FGYV6dAho502w8VP", "url": "cZBUaMHag7RaSVpb"}], "name": {"EE0M6ooSxmMxrYV9": "FpnodAOpPut59ucE", "orKjHac2PQyKyu8f": "Xk55FvS9pobLmvTo", "YHk4I0igkbyN0YsV": "y3Wak6jpsAzH9R4d"}, "statCode": "KwKcwPcPLKOmNJEf", "tags": ["T0UOjHedAMKHR9Cn", "dP3yxX5UVkx5VMBK", "2qPi28aNG2EQ1e0E"], "unlockedIcons": [{"slug": "n9Z8aMAODh3h4Msu", "url": "ODR81ITyhhN4FqOZ"}, {"slug": "adTR90xAJolmwd6Z", "url": "qLLPgdTqWQbCULPK"}, {"slug": "Afk5OUPdoYHTtfMs", "url": "iuCqb3FeydTEudFH"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'odaVAuHm54iRz9GR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'm55r3PHUzyxZgpTn' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 14}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'pTQTHGycimUPNWV2' \
    --limit '85' \
    --offset '66' \
    --sortBy 'COUxSf9uErehd5ey' \
    --status 'voassmXqxfA8U2xJ' \
    --tags '["YixhJClgoqGZwd26", "mlMgSSst3tbCaQrg", "xvnURVzodqppK7kO"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 't221tBfYMnufWDUl' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '91' \
    --sortBy 'gvknZCXt9s7oEB2V' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'q05o6wMFb8guefhg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --name 'ScVltSiX6dlPXvIm' \
    --offset '76' \
    --sortBy 'VkroJtq05bdTIgeH' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'YD1Q0WwOhuHKMEpK' \
    --limit '28' \
    --offset '50' \
    --preferUnlocked 'false' \
    --sortBy 'XySXw0knodr76HLQ' \
    --tags '["29ynEsr4iAsC0hdH", "xNG0Bcv5zKhhtXjG", "T5hy5dJBoe4Vt7hu"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'pEitJBdNQfZ0SXq2' \
    --namespace $AB_NAMESPACE \
    --userId 'ZJY075I7ez0wpIoh' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'vv5uSP0POsLGrAWA' \
    --namespace $AB_NAMESPACE \
    --userId 'wQYRosIaAEvrO6v9' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'bkVZlj0jFjLjMcwr' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'AVkA2So0HBHaqqtj' \
    --achievementCodes 'ARGPG5kshb44sMWL' \
    --limit '1' \
    --offset '44' \
    --sortBy 'mbWhWFQT5ugNQi3O' \
    --tags '["0ChlrjO56v5roCSb", "SFoJ24BAgEptscag", "ZiZjfOo8b43r6Olc"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '99' \
    --offset '24' \
    --sortBy 'updatedAt:desc' \
    --tags '["pJ7e3y3Lf3k7jBQ5", "uxiamg9Yk5G29pwb", "py05jbbSYBMecmUD"]' \
    --language 'LFJpsIC00yXCAPdZ' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'jPxfaERwJ0QVlHum' \
    --namespace $AB_NAMESPACE \
    --language 'ochhWlcbD5dzaztb' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'xjeiZADdnfp318n3' \
    --limit '67' \
    --offset '20' \
    --sortBy 'XWlR0kppQd9GsDB2' \
    --status 'GftoDADQs6YfXiDM' \
    --tags '["U8wzL8QLLDOt6Hho", "k6WQUnNxrKUiXB2q", "3kp400WnG0RhvTLx"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'LkapAZBEB2MKY4iE' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '7' \
    --sortBy 'Rj0xGDWhu4795n4Q' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --name 'kKCJSBmFluM5Umya' \
    --offset '42' \
    --sortBy 'HnBMDZ356vu6b8xS' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'IgvlTRmRyshshM2R' \
    --limit '40' \
    --offset '4' \
    --preferUnlocked 'true' \
    --sortBy 'ix5m0Nb8KcRAm0zV' \
    --tags '["JAQRrEqT6pyhZZGC", "2LKE5CA3LDvlrw1m", "KVBihHSAxKsINaeB"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'MTTgEuzA9uhf5Yhj' \
    --namespace $AB_NAMESPACE \
    --userId 'AEB8bPMhOjIp6c6l' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'DwYJVXOfPYujHrcx' \
    --achievementCodes 'BE6VbGXFL5HHT2sx' \
    --limit '67' \
    --offset '24' \
    --sortBy 'aQn2SqcfAYGYyupN' \
    --tags '["8QOGC2B7IHJdxRsU", "Vqw5rIsJUGo6j2XJ", "sE4jdQHNmJA0JV2k"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'qN55tOM5uVH9hiSS' \
    --namespace $AB_NAMESPACE \
    --userId 'qXTOefZfFg59h19d' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE