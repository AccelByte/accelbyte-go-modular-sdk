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
    --limit '16' \
    --offset '4' \
    --sortBy 'createdAt:asc' \
    --tags '["4YDDI3Kr", "FCMe5WY9", "vXLCXbeB"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "1QxXE3RO", "customAttributes": {"GpnvYrpj": {}, "019CODqB": {}, "6KkeQy5H": {}}, "defaultLanguage": "e1mJtuAN", "description": {"am2iztfr": "xCzu3ZvP", "C0YRyQ0l": "FjgHPs7j", "2YIPA3o3": "XlQvG8Dw"}, "global": true, "goalValue": 0.35097871040363493, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "XGQFNc81", "url": "wwMPka2I"}, {"slug": "MC1LGNMK", "url": "rHEtmXUO"}, {"slug": "ztsAvhxL", "url": "TbSKfuO6"}], "name": {"nmMIqB5r": "7GwaIXMp", "Q1MlBDoM": "dlT9Z5A2", "T49rAD85": "WRrcUYIi"}, "statCode": "hv9xEGk4", "tags": ["oBBvPApe", "euGAWmoe", "DxNgUWEC"], "unlockedIcons": [{"slug": "weYCTe3E", "url": "qdg22OMg"}, {"slug": "eqvLEZ1y", "url": "yF6LnyoM"}, {"slug": "h6NnQHdE", "url": "oxNII850"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["OLdQZ98W", "TGCrNEt7", "OWv1mMOZ"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'QnhkaNPG' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode '9UZTCYJJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'dpHqnVHZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"DivUd4mn": {}, "htUNtG27": {}, "MXguzj1K": {}}, "defaultLanguage": "cuwwODew", "description": {"eGosYXtW": "rq1XEjyc", "oeoMUCAT": "Wi7n4nHh", "S5mXPjN2": "Hfzrt76Y"}, "global": true, "goalValue": 0.8540230923148766, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "X1Ab5IAZ", "url": "IXB7srbx"}, {"slug": "5djBjZwB", "url": "QtVe9rG3"}, {"slug": "VWLFRoi1", "url": "qTHql1Ef"}], "name": {"rhhFhybj": "5v05LD4x", "IO41OkVN": "NJTeiQWl", "CP489nGh": "ABGnB6uZ"}, "statCode": "ratOeDM3", "tags": ["zKlDOytL", "g8QWvhTM", "O6tylVTX"], "unlockedIcons": [{"slug": "QuDQ4Fie", "url": "L51jUpNb"}, {"slug": "m95yaA0E", "url": "H1uWyiB1"}, {"slug": "QPgZ5gmr", "url": "R2qkIqvh"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode '3FPt9uxM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode '3yjau8af' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 66}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'h2RAxXXT' \
    --limit '100' \
    --offset '95' \
    --sortBy 'achievedAt:desc' \
    --status 'wV405ZLw' \
    --tags '["eATBkCs2", "K7HRmfKD", "VFCdSlZV"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode '45TsO8Jw' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '100' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'bvoJGooI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "Xxk4Halk", "eventData": {"eventName": "PrVC45CJ", "properties": {"0Og00wEF": {}, "jN5VMRSk": {}, "UjaaB6UI": {}}}, "eventId": "HmmRh7Fo", "version": "lwj2pIJr"}, {"dateTime": "SIrw2GS9", "eventData": {"eventName": "GohVqS2q", "properties": {"JB4yZWQ8": {}, "SSJHwH64": {}, "WwPpKJRK": {}}}, "eventId": "P7AoPqYo", "version": "2q38SKY7"}, {"dateTime": "NNDCd3Bo", "eventData": {"eventName": "G5cwzl5C", "properties": {"TSn0z2xL": {}, "aGG6uQZD": {}, "yPQz4EPa": {}}}, "eventId": "b9welTQq", "version": "aFpILRtf"}], "thirdPartyUserId": "1YJwI4tv", "userId": "dA1dtaje"}, {"events": [{"dateTime": "dsl3xwRg", "eventData": {"eventName": "5oYs5efA", "properties": {"P1x94UCT": {}, "4hMFLQqs": {}, "jKUsoqA5": {}}}, "eventId": "dhKfWgR6", "version": "qGaNJE8U"}, {"dateTime": "HdisE38g", "eventData": {"eventName": "9oRi7ucG", "properties": {"PoaEXVOQ": {}, "FN5HFwRl": {}, "T4ZwvLX9": {}}}, "eventId": "ICmNF35H", "version": "xTA4Dg4y"}, {"dateTime": "M3glf09s", "eventData": {"eventName": "GnmZvHKK", "properties": {"1T5W5wes": {}, "029ToQHG": {}, "QYl5yA95": {}}}, "eventId": "Cv3y1tbf", "version": "nVjZhxZL"}], "thirdPartyUserId": "3NkFmXgs", "userId": "TfGce3M0"}, {"events": [{"dateTime": "TWGtTb4P", "eventData": {"eventName": "Qm7xtWpS", "properties": {"TJwmxbPK": {}, "vCltfIRA": {}, "AK4w0JSt": {}}}, "eventId": "lc4e3Vbo", "version": "3GWy4mTf"}, {"dateTime": "KrksfP5P", "eventData": {"eventName": "GgE0rPJ6", "properties": {"DaLjnSo7": {}, "jhLAzrtw": {}, "QEMRiI7R": {}}}, "eventId": "oujFJnS6", "version": "vxiBPbK1"}, {"dateTime": "dKFdAAL6", "eventData": {"eventName": "RFS5wHIO", "properties": {"sc7XV6B6": {}, "sc5jJsuU": {}, "2J7XEUgz": {}}}, "eventId": "r11VgZKH", "version": "Fa6f9kY3"}], "thirdPartyUserId": "wvLzeGio", "userId": "cdlyqzug"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name 'RpiBQCVY' \
    --offset '36' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'zE1UZtaD' \
    --limit '22' \
    --offset '6' \
    --preferUnlocked 'false' \
    --sortBy 'createdAt:desc' \
    --tags '["5r4IZF1M", "wK7hme3n", "1iiaBBSi"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'KLRdo95Q' \
    --body '{"achievementCodes": ["IhDW3o4y", "HOKtzyyn", "4qAthGIB"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'Cbk8lDmH' \
    --namespace $AB_NAMESPACE \
    --userId 'SzxRtgMn' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'WlKlwrxJ' \
    --namespace $AB_NAMESPACE \
    --userId 'ARJC4AHn' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'fZHcIETk' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'kuKkWiyQ' \
    --achievementCodes '8EuZguga' \
    --limit '5' \
    --offset '9' \
    --sortBy 'contributedValue:desc' \
    --tags '["5CTIgTiR", "RvllXGtY", "1lo3qB5v"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '53' \
    --offset '6' \
    --sortBy 'updatedAt:asc' \
    --tags '["KjWBfxzC", "WGrIgzbt", "UUjmn0Yv"]' \
    --language '5Brpnjkg' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'esh8G2Ky' \
    --namespace $AB_NAMESPACE \
    --language 'UflZz4IZ' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '6h5lTC2C' \
    --limit '66' \
    --offset '5' \
    --sortBy 'achievedAt:desc' \
    --status 'QvHzpSoW' \
    --tags '["4A9EqzGD", "1A9yNETA", "wMOS2oYI"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'JB9CYcQ8' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '98' \
    --sortBy 'contributedValue:asc' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --name 'fLzAZvWJ' \
    --offset '77' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'JNPBlnjU' \
    --limit '20' \
    --offset '24' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:desc' \
    --tags '["jjhRkgJP", "MoY3kBw7", "2ql1Ugv4"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'RWwrhBFf' \
    --body '{"achievementCodes": ["RzWFljjo", "x1vWA8N7", "vvV0vw3h"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode '9XI5HoWM' \
    --namespace $AB_NAMESPACE \
    --userId 'KsY8wfCH' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '68OHo9nw' \
    --achievementCodes 'ypmqXgwf' \
    --limit '17' \
    --offset '87' \
    --sortBy 'contributedValue:asc' \
    --tags '["sPnphfvN", "WWjwMhik", "VGIVALwX"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '23gYuaNH' \
    --namespace $AB_NAMESPACE \
    --userId 'U51TWuFo' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE