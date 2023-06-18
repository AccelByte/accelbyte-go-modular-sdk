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
    --global 'true' \
    --limit '46' \
    --offset '73' \
    --sortBy 'listOrder:asc' \
    --tags '["eUXk7WtaJuD6qhd7", "EGQVPFmyZT8ubhfK", "fz4LCVmUZXVfCXvc"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "gp6qN2SWAMBEdTqU", "customAttributes": {"QjXKS4rtNDb701j9": {}, "iQjhd5YccAaSD5oT": {}, "r2OH6NEJ7LV7zP7z": {}}, "defaultLanguage": "DxgP4QOxtBU2Ahsv", "description": {"aXbzdUua5QcbtKIR": "cJuMZCw51D7eFkC0", "SmOMpcKdsGpVQTRw": "Ivhggpe1dSIs61Hy", "Z6lhlFZNTzkDdxp1": "To5lUtDcM6xLMWhe"}, "global": true, "goalValue": 0.3260808460624266, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "roWR0xREXj2nCn1Y", "url": "udkE6oYXvpYSUfKp"}, {"slug": "z7rhPu2AWNsGhR1a", "url": "GbBQuQLNuPYf3uwH"}, {"slug": "ACKfxsPq45OqlQj1", "url": "gXyAow5DdWUJcTg4"}], "name": {"qqtT2UuqIqa83z8C": "US0KQzAV7LJfC1gO", "6nAEVN7gGWDhQ3nU": "nF8ueKxFT6rUto1s", "OzfMalK9GQRo8Hwz": "hWKtQZHBzRj66KFA"}, "statCode": "beaxTwbMtox6bxvY", "tags": ["LMfUHZknZYAuniVk", "YeCmv6Zhkxqp9QVa", "50Ut7UZOHHFl24zU"], "unlockedIcons": [{"slug": "Enb96yUT2WCCHOfH", "url": "Gq2huoHezrO85FXj"}, {"slug": "6um6aXyzWRP9kBef", "url": "D8rMfZfgjKZ9qltF"}, {"slug": "hQVkLhimDqnoOQGw", "url": "RyKJdAYFuwCGBdef"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["uYWeO2sxA9uxwaMP", "f9FgrJetLKLCTrX6", "s8L7nrcegRADsOoS"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'pXJP9nScTcEM9lND' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'BoN9XESDDkIam5Uf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'WvFJgbWabg4Fov5a' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"7xdAVSJlTQHnD85q": {}, "6JZA2GJSNAvf5hbq": {}, "3vzuC52nTpjzXFmu": {}}, "defaultLanguage": "0YhsNZHaBDRcCGDw", "description": {"SPTEzbcxYxmb3cfc": "0IYnI4s6oiKZDuUB", "rbIwKLdLpU61aMfV": "1eEcZVgQ01n9ZBBX", "DK1qukMWC8yy3dub": "uz0OtQPPfHKmcVKM"}, "global": false, "goalValue": 0.0127894798869167, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "5RvTXf5GcDGC1jDO", "url": "2cp2CEi4ZvcYJRNT"}, {"slug": "BDMQFbFJgoP9gWZc", "url": "LIL69siNC5J66Jjl"}, {"slug": "GYfHok2py9eexwec", "url": "kMbiDTl47s3nZ8qh"}], "name": {"h97xzenbW9n0n75h": "Z7NTnQJl9z0xgtXq", "9GLWldMJPHS2cNFI": "l9kJTNU1MpSJLAP2", "oLj2mlMXxT55o4Ci": "FeHJS7tHh9d3d85H"}, "statCode": "j2uSLfR7gnNJwXtX", "tags": ["ZehikyCGkwNHDf8V", "n76yyZIZWj1P0u1M", "zm1FUhp6jkvRGmQv"], "unlockedIcons": [{"slug": "h4gQeGh3JffeXPWJ", "url": "C5wIOedPasr2RfuL"}, {"slug": "Pi0rsrEEK0F20xSA", "url": "EejH7DMXdcC1klPs"}, {"slug": "87O8trLhXQqYddnw", "url": "yWsBqY7RxSyyieew"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'mSwe23OPqQ3hxq6g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'RHGusjQ4FVFh6teg' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 77}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'z2qsoHwYJZ0lQuXN' \
    --limit '47' \
    --offset '51' \
    --sortBy 'GhosvYZFtTqjaZFW' \
    --status 'xJTeUOQUsl57IS1h' \
    --tags '["pHaGvaL4LDLBeWrF", "ONthOmnMjh4rAiCP", "FVotPEUXdw2b2TUV"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'UP1AfZ2JrrsHHAyV' \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '85' \
    --sortBy 'x8LAQXd2wEnR7GWZ' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'hyeofBkgrrgFipxe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --name '55varTz470ls0r60' \
    --offset '96' \
    --sortBy '4MUhzXEdQtYXA6vd' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'xig9jOtWCwFhMDX1' \
    --limit '9' \
    --offset '59' \
    --preferUnlocked 'false' \
    --sortBy 'pSMJ8Vzwy539P8ns' \
    --tags '["aVRnheVDhGWHZClV", "pb0YgG6nMhlGeZe3", "aTDjuo0esnBpl4z9"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'bLsx2cY3eqHozRQ0' \
    --namespace $AB_NAMESPACE \
    --userId '28ErkMdY2AyBogGn' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'iVFaxCeRCFMQUpgI' \
    --namespace $AB_NAMESPACE \
    --userId 'lqKvATdmH3xjkyYG' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'IdATiDRxIsM2OHIk' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'feAomYR0HjBcTCA0' \
    --achievementCodes 'Ycm4bRvmvTKdCK27' \
    --limit '70' \
    --offset '79' \
    --sortBy 'UV5o1PdMypArtVu3' \
    --tags '["IEOhjWNIoEljhJar", "49cselvk9YDoCQ2V", "r9d64CgTjGMvJ2Ur"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '23' \
    --offset '100' \
    --sortBy 'listOrder:asc' \
    --tags '["xFMfeZbj4pv2fi0B", "Jp2LyIUy5KDVACQM", "SMJnAm2DB0NwyYLg"]' \
    --language 'PdtlC5vm50oJ1ydL' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode '3iI1Ck8M3knuNxOP' \
    --namespace $AB_NAMESPACE \
    --language 'm0b9KWxjunaDS1R6' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'A0XZAWf4bgZE42ow' \
    --limit '57' \
    --offset '55' \
    --sortBy 'QO4355kaZpr1S1la' \
    --status 'qYi4eF77Ml1xjszc' \
    --tags '["0utokLwYbopQP4yx", "iCzU903gx65OFxsx", "D5bSUSoLbCLeTbga"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'ZmX5YS0rrRUV0tub' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '84' \
    --sortBy 'xuvcQGkR4eTG9G3I' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --name '01ZKeQcdgzLNmm8W' \
    --offset '39' \
    --sortBy 'lnn08VQ13is0dIql' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'HwpmxLCzL0mrxc2g' \
    --limit '83' \
    --offset '74' \
    --preferUnlocked 'false' \
    --sortBy 'Zg1DHJ4VdrfZXsAe' \
    --tags '["d0UU2BBhWZYxD4jo", "aIHX1GUrgs8BlLb2", "AcodAm97d7KriKXA"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'i1eAJq50f2TLSz5g' \
    --namespace $AB_NAMESPACE \
    --userId 'iRpZYfNk0z5DQ2mL' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'RtxFTkgk9t0kClrm' \
    --achievementCodes '2kww49HINTcEq0pD' \
    --limit '24' \
    --offset '9' \
    --sortBy 'puwOQbOEcCy9WH87' \
    --tags '["CJhS2fPaFxQWluCV", "9dOAx7WUXaerZTC1", "xNvCE4v83ljCXPga"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'Y4WaLMz5PGrltFAW' \
    --namespace $AB_NAMESPACE \
    --userId 'GO5KuQRXHBjSxW0m' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE