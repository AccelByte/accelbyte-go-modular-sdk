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
    --limit '7' \
    --offset '57' \
    --sortBy 'updatedAt:asc' \
    --tags '["A4VRLnFT", "b5MqGqfU", "naqOY8wa"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "z1qxFMHY", "customAttributes": {"3CW6jVO5": {}, "gdIjtShE": {}, "7EnquCN4": {}}, "defaultLanguage": "hwLTZUVq", "description": {"vGpbwX4u": "wNFTgRtH", "UvNgWRr3": "gHs1Wx6e", "94U0fLoe": "HpoPkfv9"}, "global": false, "goalValue": 0.5897093178762429, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "qdZffbqH", "url": "H5BCKcXi"}, {"slug": "vpXpEvxL", "url": "VQMnsTdq"}, {"slug": "7EzcZjXA", "url": "d12nbF7D"}], "name": {"RR8rY1sk": "41zX0kts", "bjitIHeq": "MrUu6mxC", "mFfp2O2X": "Q5cjqzvx"}, "statCode": "eNeHfBzr", "tags": ["ycRaprIF", "bcVV47Fj", "u9uBeXp8"], "unlockedIcons": [{"slug": "2fkCzjsl", "url": "1RgtfeZ8"}, {"slug": "8tnUsYzv", "url": "v8ShoEjj"}, {"slug": "9LjL48LS", "url": "edGbgIZA"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["nDF4o5xd", "8XvDMWCM", "UlwkFn0E"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'eN2zXXWH' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'VzLexuy8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode '1dbRaxBW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Wis5WkNe": {}, "Zl2bDO3c": {}, "VsCc670p": {}}, "defaultLanguage": "DrcSx3Po", "description": {"WSkchivU": "FbtveErf", "7HESHHsw": "uMQvhfEh", "PsdEYFsG": "z3P5fICf"}, "global": false, "goalValue": 0.2560423684343138, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "O5nzWXvC", "url": "4TyyG0Zw"}, {"slug": "ixaXCtY8", "url": "GKX2Dqae"}, {"slug": "0FVy4zXD", "url": "r2xO3qsd"}], "name": {"e7xVHeuT": "xu3bxNPI", "axRmnvpA": "1VmzWXpv", "YV9kwryA": "omlKIoPQ"}, "statCode": "CuDXHm5C", "tags": ["3B0Tp7H5", "Sg4RpaTD", "L9xv6xTJ"], "unlockedIcons": [{"slug": "WorVAg8h", "url": "6YZP4ri9"}, {"slug": "1IFh1MPb", "url": "ZnjHEM5N"}, {"slug": "zxaycgmv", "url": "ofnzznjN"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'QWCNOVfZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'BydRymlU' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 26}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'Gasl9ssj' \
    --limit '50' \
    --offset '88' \
    --sortBy '5MWs7qto' \
    --status 'jj0ebO5u' \
    --tags '["gxjkqJQY", "lKzPQnBn", "AFqB9Ms1"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'M473CXcS' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '7' \
    --sortBy '3JCeqllW' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'eHBRAJwU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "gsh9OSZ5", "eventData": {"eventName": "MUUnSaLc", "properties": {"1z3ivMGv": {}, "9C5hhip0": {}, "zT4boXc7": {}}}, "eventId": "x1IpRkg5", "version": "WPWvv9a3"}, {"dateTime": "HugJTrRH", "eventData": {"eventName": "CSYkF0fk", "properties": {"YnXVN38d": {}, "vzgcvNXA": {}, "lEuUuNPg": {}}}, "eventId": "9Tp6ewrG", "version": "XjVAjhS9"}, {"dateTime": "EsqErJtv", "eventData": {"eventName": "flgJM1t3", "properties": {"tCAHjrtd": {}, "YJ6RRLPx": {}, "PPwdXWqY": {}}}, "eventId": "phHRXDVA", "version": "AhrRVea3"}], "thirdPartyUserId": "kkwpJNRw", "userId": "1BnUltsa"}, {"events": [{"dateTime": "eYcyLyB6", "eventData": {"eventName": "0BjgURrb", "properties": {"4CKi0Dbk": {}, "aWj42Skt": {}, "qMoucrfZ": {}}}, "eventId": "Ew92xENO", "version": "zsXsC0ng"}, {"dateTime": "d2b66kRo", "eventData": {"eventName": "WZTnhdG1", "properties": {"STS2BBSk": {}, "d0zw801K": {}, "mvcCEqZ3": {}}}, "eventId": "gBFVJ8qk", "version": "jkraWPH0"}, {"dateTime": "GAIHkyzs", "eventData": {"eventName": "4vU41LLn", "properties": {"yR37DGrU": {}, "RTtLO4u5": {}, "ChVh2OFu": {}}}, "eventId": "gDim4y7m", "version": "Vd4OLHld"}], "thirdPartyUserId": "KDWY9shj", "userId": "VABBldVD"}, {"events": [{"dateTime": "pLmUoWP8", "eventData": {"eventName": "624g8JIO", "properties": {"A6v4Goo8": {}, "ins4xWbm": {}, "seGYrosM": {}}}, "eventId": "WUUEQAR8", "version": "1YXHpUHm"}, {"dateTime": "hmft51SR", "eventData": {"eventName": "Fucyrqdc", "properties": {"xBwjtPo1": {}, "CjfJPa14": {}, "QTsTliCE": {}}}, "eventId": "Gh8IEneQ", "version": "pNCt0air"}, {"dateTime": "TzHiw2Z2", "eventData": {"eventName": "FNzU3Tib", "properties": {"jvm8WaL3": {}, "nluePktc": {}, "P0hhEjJA": {}}}, "eventId": "3webbx12", "version": "cRGWlZtf"}], "thirdPartyUserId": "ajXbiLoR", "userId": "g3qCqWH0"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'SOrP4kIu' \
    --offset '85' \
    --sortBy 'XHdXvTuA' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'Tn8rJrVp' \
    --limit '25' \
    --offset '68' \
    --preferUnlocked 'false' \
    --sortBy '3PA2CWQx' \
    --tags '["tnp46oCW", "Ac8FA0Cz", "F7D1g0Cc"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'MYOumrvT' \
    --namespace $AB_NAMESPACE \
    --userId 'g4oYWrNw' \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'GlQuGHv1' \
    --namespace $AB_NAMESPACE \
    --userId 'ELjzWKpk' \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'lnQRTWts' \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'Le9PJYFq' \
    --achievementCodes '4qYabvcE' \
    --limit '0' \
    --offset '17' \
    --sortBy 'UfG1vlXE' \
    --tags '["ZrGHNT1n", "7cXo3CL4", "moEA8lqP"]' \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '66' \
    --offset '46' \
    --sortBy 'listOrder' \
    --tags '["yG98V5Tm", "y3fIuP9n", "mQfP1Kst"]' \
    --language 'uWxhVw5M' \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'sQfYQVzj' \
    --namespace $AB_NAMESPACE \
    --language 'RrEPE3CI' \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'mvZzqT69' \
    --limit '7' \
    --offset '95' \
    --sortBy 'MCvqcb4k' \
    --status 'ZyUTQfWL' \
    --tags '["dGz6wyWV", "sx17iZWg", "BQgJFx9J"]' \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'VFrBkDwT' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '64' \
    --sortBy '0XqYVjQJ' \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --name 'SMr089hc' \
    --offset '15' \
    --sortBy 'juoblPiW' \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '6eRLQDdf' \
    --limit '89' \
    --offset '61' \
    --preferUnlocked 'false' \
    --sortBy 'NBMTQLEN' \
    --tags '["CXJNLaeP", "AwGdkzzh", "btNUtKqf"]' \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'rl3zBj2O' \
    --namespace $AB_NAMESPACE \
    --userId 'p3wDH2fr' \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'yCKugvgN' \
    --achievementCodes 'l9p3mqHc' \
    --limit '49' \
    --offset '52' \
    --sortBy 'Zcl24FxM' \
    --tags '["TTZKmFZj", "T3NaUSjv", "IhhY4MPU"]' \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'xJtkA6NB' \
    --namespace $AB_NAMESPACE \
    --userId 'IaTlsCtG' \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE