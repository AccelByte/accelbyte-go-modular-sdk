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
    --limit '67' \
    --offset '30' \
    --sortBy 'updatedAt' \
    --tags '["EtwNGqZj", "5Rb8mh5i", "6skdZx4n"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "dKLs08E8", "customAttributes": {"Qw8u1XSa": {}, "cQmquiPA": {}, "set9jITq": {}}, "defaultLanguage": "10XNfaJ9", "description": {"n7qnucEz": "LwJr5NjF", "3Jb9HNpI": "DvMutOmi", "lmIL8dzf": "Pkks7wLE"}, "global": false, "goalValue": 0.41655900541243673, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "NFGMr6VN", "url": "4VVaxRjK"}, {"slug": "7d7CpMIp", "url": "tQkEqFWE"}, {"slug": "P44oke0M", "url": "bOIxXCCc"}], "name": {"MAggkmcD": "wz5WnpST", "HNDsdPdl": "FHZOlLak", "rDiaK0yu": "4U9jf2SW"}, "statCode": "bgSAjDN2", "tags": ["n4w175fV", "755esAQA", "RZHRQ4Fs"], "unlockedIcons": [{"slug": "3NmbkVAP", "url": "Et4GfrdY"}, {"slug": "v5Cp0XGp", "url": "CqpR7FlM"}, {"slug": "WmdHnWSz", "url": "6mMo3jlG"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["EKUYUFJi", "Y75wpLsl", "hGwJhQrA"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'tW3mV0i7' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'g3olsEcY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'oWMjRc6u' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Ojd9tn2r": {}, "lxsx7aUg": {}, "PR3xXaWj": {}}, "defaultLanguage": "7AsHLzHF", "description": {"jJDYFkLx": "1Tc2TKR9", "63LzlGdY": "IZg5B5Wr", "CRv8x7Bh": "Yu7N2JHh"}, "global": false, "goalValue": 0.9968227594320249, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "JTromWiT", "url": "jWmgehzf"}, {"slug": "HulAyv5Q", "url": "YEQnJFUz"}, {"slug": "ZrVsl5KD", "url": "vhIUuu6L"}], "name": {"TLLpp98w": "jlcz731a", "euvTxq6I": "kLbKjVI2", "MBvA2kLs": "mwLLZ7fj"}, "statCode": "YJoeuBHE", "tags": ["5kS3vgdn", "8l18dFLY", "RsjeMWnt"], "unlockedIcons": [{"slug": "dkomrXlQ", "url": "rGEd8HtT"}, {"slug": "wzuXSLFo", "url": "zHV7qE8X"}, {"slug": "Or5pC6WR", "url": "lweaHCww"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'Cuq2IxHf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'JuThfWdT' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 16}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'DiTB45UR' \
    --limit '88' \
    --offset '69' \
    --sortBy 'achievedAt:asc' \
    --status 'my4jWSiv' \
    --tags '["hMDVUOjr", "dEC2hMiY", "P2Z5V47k"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'mHkKP4TU' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '89' \
    --sortBy 'contributedValue' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'Tm9kK6H9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
samples/cli/sample-apps Achievement bulkCreatePSNEvent \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"events": [{"dateTime": "gZNwD5uZ", "eventData": {"eventName": "PBs5F6fu", "properties": {"nNIioHI2": {}, "5AjYEQxU": {}, "Id6CPoW9": {}}}, "eventId": "Vp3uIV6B", "version": "S5opi5Vn"}, {"dateTime": "AolakBiK", "eventData": {"eventName": "2iz6440F", "properties": {"OxvtP8nj": {}, "aIzwhq1z": {}, "rnw0pelP": {}}}, "eventId": "x2hCFmXW", "version": "RFYkNgEz"}, {"dateTime": "mQ69384j", "eventData": {"eventName": "b4b9Wkn2", "properties": {"CTUzxsXc": {}, "XS6kfXNW": {}, "TvTK857b": {}}}, "eventId": "GjhQvXOO", "version": "JcSn6GrK"}], "thirdPartyUserId": "6zj4mc12", "userId": "ZInOVUWJ"}, {"events": [{"dateTime": "2juxf1PQ", "eventData": {"eventName": "8EfciQQ1", "properties": {"fMx1lr4q": {}, "rqj2kVSD": {}, "48nDP6QB": {}}}, "eventId": "N74uWpL6", "version": "nL05Myqn"}, {"dateTime": "wGrMJeEh", "eventData": {"eventName": "6bv3VTiy", "properties": {"LgMXLmlD": {}, "wYiDJ7OY": {}, "0iuFCjPa": {}}}, "eventId": "8QbsHCZ8", "version": "HDrM6Xsv"}, {"dateTime": "96s0M8HE", "eventData": {"eventName": "PqAjNu7Z", "properties": {"fBWkrL1c": {}, "LPBScSTC": {}, "35rqpENy": {}}}, "eventId": "oY0A6MoU", "version": "yc4nATrY"}], "thirdPartyUserId": "YLT6s181", "userId": "mlN5XOJT"}, {"events": [{"dateTime": "OwPEG4Jm", "eventData": {"eventName": "wIQdUgrc", "properties": {"ybmZkoHB": {}, "FnaZRlTM": {}, "pwNT972D": {}}}, "eventId": "L4m5qn8q", "version": "kgpNXI99"}, {"dateTime": "5793hNdR", "eventData": {"eventName": "jw4ww6LH", "properties": {"Culu31z1": {}, "GYsznlGW": {}, "AQYvFD4A": {}}}, "eventId": "A1JzCYml", "version": "JDNnMt4i"}, {"dateTime": "e0pNFvec", "eventData": {"eventName": "PHEnSiU3", "properties": {"9VThVaod": {}, "1laEhDvl": {}, "E7rfnBjW": {}}}, "eventId": "DJFjjqAF", "version": "HRwA97N3"}], "thirdPartyUserId": "UWtaBAfP", "userId": "dvM5A5kE"}]}' \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --name '8dbDLOA9' \
    --offset '17' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'QRUKH4Y9' \
    --limit '81' \
    --offset '93' \
    --preferUnlocked 'false' \
    --sortBy 'achievedAt:desc' \
    --tags '["MFDp3O5v", "PAYRo2gv", "Rd7yikBD"]' \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
samples/cli/sample-apps Achievement adminBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'CGOFFM8k' \
    --body '{"achievementCodes": ["ho3004OI", "1HXuTOwa", "sF6CXHCm"]}' \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'N3gKpOqd' \
    --namespace $AB_NAMESPACE \
    --userId 'FS0iwJgS' \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'i6DAWQOl' \
    --namespace $AB_NAMESPACE \
    --userId 'gDVmyRNn' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'Fsqbq3UX' \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'TeCMArtx' \
    --achievementCodes 'WN5OQiuD' \
    --limit '57' \
    --offset '36' \
    --sortBy 'contributedValue:asc' \
    --tags '["9oRajM1R", "3DI7Co8k", "QL9mQVeU"]' \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '75' \
    --offset '15' \
    --sortBy 'createdAt:asc' \
    --tags '["CMSyU3Te", "fl9aSD2v", "SBloaWyf"]' \
    --language 'wtEjjmMW' \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '1tKbIFJI' \
    --namespace $AB_NAMESPACE \
    --language 'IIuaH5Dw' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'IrO3HCU5' \
    --limit '99' \
    --offset '69' \
    --sortBy 'createdAt:asc' \
    --status '510dqGXy' \
    --tags '["D62ogHKf", "4IsPSXrm", "g06aKRIH"]' \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'zpWbYQS1' \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '93' \
    --sortBy 'contributedValue:desc' \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --name 'QNl4u6gQ' \
    --offset '78' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '8uZH1qEs' \
    --limit '57' \
    --offset '95' \
    --preferUnlocked 'true' \
    --sortBy 'createdAt:desc' \
    --tags '["FVdjLajU", "XJ3hyXfJ", "Ls6Xn68y"]' \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
samples/cli/sample-apps Achievement publicBulkUnlockAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'zvyMn94Q' \
    --body '{"achievementCodes": ["UMEOz4u9", "QIo3LIGY", "E9abpLp2"]}' \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'AiiRAYGm' \
    --namespace $AB_NAMESPACE \
    --userId 'tjrX0Ens' \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId '4FUP7yyq' \
    --achievementCodes 'l2b0KIVS' \
    --limit '5' \
    --offset '88' \
    --sortBy 'contributedValue:desc' \
    --tags '["urPqXahQ", "tIURsQOj", "JyupVCdM"]' \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'MqIaiH1r' \
    --namespace $AB_NAMESPACE \
    --userId 'orl2tydx' \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE