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
    --limit '1' \
    --offset '8' \
    --sortBy 'createdAt:desc' \
    --tags '["vyYpNDv1", "671LVNTq", "VqdEXN9c"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "SawqwBwP", "customAttributes": {"mGrLBYrJ": {}, "fBUBdovF": {}, "s5vOmaJn": {}}, "defaultLanguage": "CyXefHwD", "description": {"3BlcqG7A": "40B1sxHI", "EA7RbGid": "ugi1EEjx", "KRlMAaOe": "YUkYl4uM"}, "global": false, "goalValue": 0.19893584968923028, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "880yyHHp", "url": "18zYfYFC"}, {"slug": "xWGgdKP0", "url": "fCsqhR5x"}, {"slug": "pSYs4zoO", "url": "08fCwkTM"}], "name": {"2Pn4zSYA": "VZODGAUB", "q8YXvvaH": "nWr6qZjJ", "FyP5nhkG": "ypRHMQ91"}, "statCode": "4x7B2rEu", "tags": ["i8PvcIY5", "fnuIM5Li", "zQL2qEXl"], "unlockedIcons": [{"slug": "aqwc4Xtt", "url": "0bj7QjZk"}, {"slug": "yre6Czja", "url": "0o9xOyDH"}, {"slug": "C7FIraXz", "url": "BzIUmIVM"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["6M1EfTj3", "nQRt2xnx", "XdnujXzY"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'GWnwBUnY' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'YoP2HsWK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'd3C6F3qe' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"GBn1sDEn": {}, "K4viwQHu": {}, "eBNKmWiW": {}}, "defaultLanguage": "vcmHvnWL", "description": {"BFbFF6Tz": "R42TuM2w", "dIZga1du": "m7Nl3wlt", "OPtAQBqP": "bRPMfB4t"}, "global": false, "goalValue": 0.717342763197784, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "6Hj4CrfZ", "url": "BANuC0K9"}, {"slug": "bgQWQY3I", "url": "3rP8CV1k"}, {"slug": "gvF6sH36", "url": "NjbaA1fz"}], "name": {"fbfvMmHC": "rJNyBhH1", "T1bFq6ui": "1nCHVsOk", "Pv2ldNgG": "m06mIrBv"}, "statCode": "GaEZENBD", "tags": ["4HurVmT5", "5jzziFmd", "bnbPW9lx"], "unlockedIcons": [{"slug": "UQDGcBiS", "url": "PzEWhK0V"}, {"slug": "gOWKwWqu", "url": "itftDEw3"}, {"slug": "3oT3LP59", "url": "VzOPrpjm"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'chOzosqM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'tmLLCDxL' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 45}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'grAdWev2' \
    --limit '53' \
    --offset '79' \
    --sortBy 'bNn9ehqA' \
    --status 'HTGfCiHc' \
    --tags '["xvZcjSif", "Iydd4T48", "Xr1V5Zzf"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'FzLarh21' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '38' \
    --sortBy 'BFtJWdYR' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'PCfNRwqe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --name 'y9oRy0Ng' \
    --offset '71' \
    --sortBy 'swcrC9fX' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '1jJFeB9T' \
    --limit '47' \
    --offset '24' \
    --preferUnlocked 'true' \
    --sortBy 'i5RzR6Qj' \
    --tags '["bJPx7kCz", "BHXtGREI", "7qdf2nNH"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'ld4JVITR' \
    --namespace $AB_NAMESPACE \
    --userId 'DBwI7ULR' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '7r3cAvwm' \
    --namespace $AB_NAMESPACE \
    --userId 'd1ngAugg' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'MtlrgDM0' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'UXhJOPkL' \
    --achievementCodes 'o9BQBbnH' \
    --limit '61' \
    --offset '56' \
    --sortBy 'U2Kt6N1K' \
    --tags '["xsGpB81T", "GpgfE97D", "emIUMtUq"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '32' \
    --offset '65' \
    --sortBy 'createdAt' \
    --tags '["SBIyFND8", "DUKiWRTM", "V0T7lHRu"]' \
    --language 'X57CKdX1' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'Lgq9R8dx' \
    --namespace $AB_NAMESPACE \
    --language 'HA99bG34' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'oE91hoNE' \
    --limit '4' \
    --offset '46' \
    --sortBy 'iLZCENlI' \
    --status 'DVJQmDG1' \
    --tags '["yz0XIA6Z", "TqiObhKY", "oQREEorT"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'ok59Ijcb' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '77' \
    --sortBy 'yuuCe4cj' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'Md5BfsYZ' \
    --offset '80' \
    --sortBy 'VJVMWUPZ' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'DYelBbqD' \
    --limit '26' \
    --offset '9' \
    --preferUnlocked 'true' \
    --sortBy 'rdCaYd3l' \
    --tags '["Q8bfyK7I", "1FHjAW37", "CgNtjqCf"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'tAl3REVA' \
    --namespace $AB_NAMESPACE \
    --userId 'TYfotk5s' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'jdxuUdpS' \
    --achievementCodes 'aa4Fq88G' \
    --limit '25' \
    --offset '67' \
    --sortBy 'oVWiFEa9' \
    --tags '["KQUheTnF", "u70ZvQJT", "nfZjWWsl"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'LzzAKVpR' \
    --namespace $AB_NAMESPACE \
    --userId 'TDKm8ktG' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE