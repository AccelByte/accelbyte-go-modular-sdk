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
    --limit '22' \
    --offset '100' \
    --sortBy 'createdAt:asc' \
    --tags '["jGbAa78F", "H4jTKkaJ", "hlc5uTs3"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "W5nqk08E", "customAttributes": {"tENvsweZ": {}, "1AGoD2fo": {}, "L3mcenWw": {}}, "defaultLanguage": "BQCb5NGI", "description": {"wqxd4F57": "nxub3vzw", "nqOCTJVD": "5hjFHtuf", "HMsspa4M": "8cuhxlwf"}, "global": true, "goalValue": 0.7283685771286725, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "X9VDSv3A", "url": "wMefebLP"}, {"slug": "yWASMwSi", "url": "lHWr92tJ"}, {"slug": "eV96QaCj", "url": "1wZdCR2W"}], "name": {"rlksaveN": "sjE1ZQkd", "8uddNMEZ": "lVqwRKED", "DgZE1iqd": "NT2BbrnQ"}, "statCode": "xGAZD5kv", "tags": ["wp4ZAGnh", "NvqjY7KR", "CAnGaRIN"], "unlockedIcons": [{"slug": "PaHAypEW", "url": "2x7Neq3D"}, {"slug": "7QWI7xeU", "url": "iRoO2vJC"}, {"slug": "NCLuPeXL", "url": "d4OC72XA"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["TxxV04bT", "HBWJY02H", "QZBx5Et6"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'CrVe9Z1i' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'e07jLoGf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'iN7MUqbW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"FAjHITjn": {}, "Bv6GoINI": {}, "o0IZiqQZ": {}}, "defaultLanguage": "ohzTGhRX", "description": {"BsmTapf4": "s24V6HHu", "hG0oDkGx": "cIXU17Uy", "xVZpa7ZS": "qYfF1WCF"}, "global": false, "goalValue": 0.002524351739402353, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "XsKhS9ZS", "url": "D4vFfipK"}, {"slug": "byRQFrmX", "url": "YfpYi2VD"}, {"slug": "hVwfZkSC", "url": "Dr0p8i9l"}], "name": {"YDgLYZXm": "yvLuZErU", "3aF07drV": "PhcsDCNF", "N5nKCHrR": "hwkWDLtb"}, "statCode": "1JkAQlPh", "tags": ["QsuRmpQ3", "pU4PzWoq", "kERcWR2y"], "unlockedIcons": [{"slug": "ARmKrQPf", "url": "yv1x5Tf1"}, {"slug": "QgxGqUUK", "url": "9NdRvTxK"}, {"slug": "jMXGiq9w", "url": "6LXFE6PY"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'ZSelHATd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'Z4DgYQZx' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 90}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'VZx9WOQQ' \
    --limit '78' \
    --offset '22' \
    --sortBy 'xnkafFTP' \
    --status 'KzUz4YWb' \
    --tags '["ZbkgHYSJ", "8Y6iMaS6", "00a3fAuh"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'HkgP3Jyl' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '98' \
    --sortBy 'g1APYizC' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'yaNChmAT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --name 'eVXoJ1pv' \
    --offset '27' \
    --sortBy '81komvxI' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'f1tpl7Id' \
    --limit '16' \
    --offset '73' \
    --preferUnlocked 'true' \
    --sortBy 'ObDI4Nby' \
    --tags '["RjSRFoU0", "O5bhRitm", "VNGI0gwN"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'AqT7usc4' \
    --namespace $AB_NAMESPACE \
    --userId 'rXQMqyjb' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode '3EALqcsd' \
    --namespace $AB_NAMESPACE \
    --userId 'uPqaxzpM' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'yGv2AN3H' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'ZetIoM44' \
    --achievementCodes 'DANj6aJS' \
    --limit '2' \
    --offset '45' \
    --sortBy 'hjIi8AMa' \
    --tags '["eDuLepKm", "4V22ycfn", "33TcifYk"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'false' \
    --limit '74' \
    --offset '45' \
    --sortBy 'createdAt:asc' \
    --tags '["XLmGITR3", "Ovm9uD86", "14kBsP1I"]' \
    --language 'VtHj2nbG' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'L8cOIFLM' \
    --namespace $AB_NAMESPACE \
    --language 'jny6oRkt' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'OESPzHPO' \
    --limit '58' \
    --offset '61' \
    --sortBy '5evx7wEo' \
    --status '6pNZJKKf' \
    --tags '["I6zJXAMD", "DvCkAD3T", "XuUgzmSY"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'GNsGRvqf' \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '12' \
    --sortBy 'gtR5o916' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --name '0vkAC3wA' \
    --offset '17' \
    --sortBy 'kw1iqUh3' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'ksNUBoQZ' \
    --limit '44' \
    --offset '96' \
    --preferUnlocked 'false' \
    --sortBy 'Tne3LuPj' \
    --tags '["QYs7nxOs", "hjB9WyOt", "8vtLL9rB"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'MVZ34HHQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Rjzu20Ma' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'a1RYnZHm' \
    --achievementCodes 'PMbM7Jyn' \
    --limit '81' \
    --offset '66' \
    --sortBy 'vWuLuQY1' \
    --tags '["dz1pX2Hw", "l6NgXCkT", "keno4K3k"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'HSxuXh9X' \
    --namespace $AB_NAMESPACE \
    --userId 't0oIrMGM' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE