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
    --limit '16' \
    --offset '90' \
    --sortBy 'createdAt' \
    --tags '["z8hL16VYvUYZz5lX", "3FF01nebQSqJdYy6", "uVX67Q08v1tMEnno"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "rfaqVAts6PjOHZbr", "defaultLanguage": "vtZ8uZ5NB2kdsVes", "description": {"Asiln65ftK5pHt5a": "TTI6WJQWPXubg9rD", "tiSDXfizKwmAVxeQ": "rklF2orBq6aUvibq", "L3ZrVSRkyzOlsnua": "ictXWaBmy3wnqdD1"}, "global": false, "goalValue": 0.9780733603653132, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "bE0VStSK44DwuwRq", "url": "YISwwGwRBKOOXl5C"}, {"slug": "KDh6r2Hg9eaeiyfD", "url": "08I9gHpK1Xv0s6Bm"}, {"slug": "OxVInuInotjt0Nn1", "url": "22tGthlKvCj7KC6u"}], "name": {"11mA7cgGxSM1HbqT": "nXTjt5id0J8PzgR5", "m1tWhBHCSTdcpAE0": "hyLrwdl0RzeIH3Em", "FZDqJKemDfcN2Xul": "ewYAAbxJujdHGWpn"}, "statCode": "xswMULVo3KN7463z", "tags": ["A2Wxotmvg9KQIzp4", "XGket23qhxIP2nzo", "PrtZ0QikzX4GQj86"], "unlockedIcons": [{"slug": "F3AC2lYGn2vA7X5u", "url": "dVfaevBgT7ojJhy9"}, {"slug": "b1HYuncB083KVCFY", "url": "EymlKkQW5aRB0xHY"}, {"slug": "tnc2OJkWsdB8G9PB", "url": "QnxS7pbABNPDaVOc"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["GYv13G9PCsKY8uEJ", "2tHMWfhZVFz7nRmq", "1egdWEVe95j1QUZh"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'yaMqPjXlkjxKngwx' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'kcubmP8AsCwVWviD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'oUNtojSml6IK1AwC' \
    --namespace $AB_NAMESPACE \
    --body '{"defaultLanguage": "K6TTC6TnTTzCCPBq", "description": {"2tpSqDYLUnw0g5zB": "OUsRWSbqPxZV6GKg", "4opsQt1ZlILki7JS": "8yfyBr1MyXRFyGgv", "nSdXBCSkbAh83RzX": "7XSyopEAh8tfLrBj"}, "global": false, "goalValue": 0.6009358949203181, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "hbWvvItp4UoWzcbF", "url": "pr4rC5P7dHkQvcM3"}, {"slug": "QrACelLjnoMpYKK8", "url": "pUo9ilka1h2GJCEI"}, {"slug": "3IwwMquTmA36krVW", "url": "zOtnUmpvAQxz5l6C"}], "name": {"RizTh2H8HKhC4vhs": "2xLVvWw1IKjxwk5z", "Pmpa87CkumspQbP8": "npM7f3ZdlMaOtBoW", "XbPyTinwHirZeySo": "OFNNRq8gJqhOmCvm"}, "statCode": "6K15PiUGHqSAuoe5", "tags": ["0sUGAKeSAvI4aFGH", "w1YiHt6toRDog0bO", "j2MnFd3r9Sd5R0y2"], "unlockedIcons": [{"slug": "UND3Sxpeg9WN18HE", "url": "kr3eM6CAnuKYMQ4t"}, {"slug": "sTujV6Z54zSCTzXV", "url": "uZpr64ZUIxDjc5Br"}, {"slug": "njzPaFycRSMDAiKw", "url": "mcXtJsSCW3CSMGKm"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'e6kfaKKLiTuWTh4O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'i6L7xoyRwLRjz3qZ' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 84}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes '05cXzjG8lrn2UzYG' \
    --limit '97' \
    --offset '91' \
    --sortBy 'iN6YhqjAc0VfnsRt' \
    --status 'lZdyng384o8smEQk' \
    --tags '["vfKS6d3y8qbcsavH", "6BfW4xud46019ed7", "45xq23biBrfoOYNZ"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'cGmLCzUrQJNaxQS1' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '12' \
    --sortBy 'sjQLzRoOUbEAw5Fg' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode '3jH6Mm7M5neQuV43' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --name 'YPd19rsvgGzrRG8F' \
    --offset '28' \
    --sortBy 'pedKTWSVVNp4Z7QU' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'CkDNJQ7Y4mAoP7Dc' \
    --limit '60' \
    --offset '76' \
    --preferUnlocked 'false' \
    --sortBy 'fgNZTWOFhkS479c2' \
    --tags '["AEwbU2zNdNlwDiZg", "yWS5xlymSuQBin8h", "Y79NtO8dfMVJL6V6"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'Nq1FKbZRujNs9LWn' \
    --namespace $AB_NAMESPACE \
    --userId '8RqyvRmtFpG58OwF' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'wW39C9aDFKCfhWFx' \
    --namespace $AB_NAMESPACE \
    --userId '3u90njey32EW3UaF' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId '4SkzLI3ptyUJOVBG' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'GYZqrAAGrbii4vdD' \
    --achievementCodes '2qUJh8puverDpnjt' \
    --limit '19' \
    --offset '28' \
    --sortBy 'd99sWitB2kTSdVdj' \
    --tags '["r7qNwzjgsID7P7aY", "WLQc5WKXYkaj4L3S", "3Ze4HdEvg1jHdzRy"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '16' \
    --offset '84' \
    --sortBy 'listOrder:desc' \
    --tags '["fSEcDUGjKvWXFHee", "KbrQzhZqnOXDNBpU", "8ZehevAGNxy9OBkZ"]' \
    --language 'zCU6YfdNf4hJTYYy' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '9t54f7GWCHjV1yQI' \
    --namespace $AB_NAMESPACE \
    --language 'xfypsHhf3EKnmrwA' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'IENxSjA1nddJYhv1' \
    --limit '62' \
    --offset '50' \
    --sortBy 'ql2CFgy0s6Io4x53' \
    --status 'ByXRk755OhjgLrVW' \
    --tags '["096lZJQvGebUK4jW", "3tKRsed08KtkHDKR", "TpSaGNUgkAmfAOCC"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode '1NgB3XmDjKdk7zmy' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '96' \
    --sortBy 'tIhyxIMoQ1ffUkLw' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --name 'jGGAcYJkNr1bFxgO' \
    --offset '28' \
    --sortBy 'RluuBbzuNMN9ILhE' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'HpDPZCIhC7iZLdO3' \
    --limit '23' \
    --offset '84' \
    --preferUnlocked 'true' \
    --sortBy 'P9A4DPPGeGQalqga' \
    --tags '["gfe4KmCnFgwIiROk", "E6tCO3WonPt5SxR3", "E15D9UVn6nD3Qqz1"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'DGJ8Kr7yItaQN0ji' \
    --namespace $AB_NAMESPACE \
    --userId 'uPHK5U6CgWozH7Ku' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'AP7xQoZiZDvwe0xy' \
    --achievementCodes 'wrAlaA4CfVsaaMOc' \
    --limit '79' \
    --offset '80' \
    --sortBy '4rj2DRTcyoFfs3p9' \
    --tags '["ttGqdh06oj3GJwk5", "7wyAa3fcWp9IGpbn", "gKCE63m7TUnPt1nb"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode '88kgSOX10DpfFAPr' \
    --namespace $AB_NAMESPACE \
    --userId 'uxoeRP4EsHWYHbgw' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE