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
    --global 'true' \
    --limit '86' \
    --offset '70' \
    --sortBy 'listOrder:asc' \
    --tags '["SIal5rz6", "f7zvEWmo", "aPwmHf0l"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
samples/cli/sample-apps Achievement adminCreateNewAchievement \
    --namespace $AB_NAMESPACE \
    --body '{"achievementCode": "ritKw4lx", "customAttributes": {"Bua2EPNM": {}, "O7aQ5Pxo": {}, "mJ0Ct3ii": {}}, "defaultLanguage": "aNA7gRuM", "description": {"OigwQJro": "ve0xkDND", "JQ13NQpW": "4uMRXKvZ", "bwIF8qt6": "z8BWG0mS"}, "global": false, "goalValue": 0.03467355167144559, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "jm3GhuFb", "url": "ws24f7Y9"}, {"slug": "IYytp5ey", "url": "rRhiILlX"}, {"slug": "zP19xuV3", "url": "cuGgMixd"}], "name": {"gviMeqa9": "LeFn615F", "F4s23LRw": "VEJAPALZ", "PamqilZk": "sCVrUURl"}, "statCode": "82C6FWrC", "tags": ["Xv0lQLjM", "Kep6I0NE", "5OZLRccO"], "unlockedIcons": [{"slug": "954cDVBq", "url": "Gw1hnERn"}, {"slug": "twANntP0", "url": "XHzJJu5m"}, {"slug": "0BdAEOob", "url": "BWik2XLd"}]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
samples/cli/sample-apps Achievement exportAchievements \
    --namespace $AB_NAMESPACE \
    --tags '["JNkPHFTs", "b2X8MMZ6", "GcWgT2i5"]' \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
samples/cli/sample-apps Achievement importAchievements \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '9yW8DiQm' \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
samples/cli/sample-apps Achievement adminGetAchievement \
    --achievementCode 'cb4nDVVF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
samples/cli/sample-apps Achievement adminUpdateAchievement \
    --achievementCode 'WJUe8xpN' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"MoGeNXVS": {}, "GyCoStnT": {}, "H3INr0R2": {}}, "defaultLanguage": "v2Of46F9", "description": {"nNlWnXTv": "WdWTxAvn", "YDSKKddh": "TmhaOaoA", "oxbE5iFl": "RqhoA2gg"}, "global": false, "goalValue": 0.8525296757977687, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "GcZ5d2Bv", "url": "Ir5yLaC8"}, {"slug": "vvjvSv3e", "url": "T8pdJaQL"}, {"slug": "REhM9pv7", "url": "zpuFGaym"}], "name": {"XRuUiHbv": "B63fyHqP", "kqianS0S": "SD65UWle", "WI27jMxL": "IQerXStb"}, "statCode": "HshOrjdQ", "tags": ["C0VE1RXR", "u1RzJjFb", "SRviqcgK"], "unlockedIcons": [{"slug": "RvYlaFdW", "url": "YU88w5mS"}, {"slug": "3bbpn6DS", "url": "cgvbrpKW"}, {"slug": "PrdCuKeX", "url": "mpOWFUMf"}]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
samples/cli/sample-apps Achievement adminDeleteAchievement \
    --achievementCode 'HGCUdXlx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
samples/cli/sample-apps Achievement adminUpdateAchievementListOrder \
    --achievementCode 'aMyV5Vph' \
    --namespace $AB_NAMESPACE \
    --body '{"targetOrder": 39}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
samples/cli/sample-apps Achievement adminListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'V70GfWXW' \
    --limit '58' \
    --offset '95' \
    --sortBy 'yI2U8sOO' \
    --status 'kGpXva4c' \
    --tags '["Ubzj22Sd", "NdqTCQBU", "zzuo3D5F"]' \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
samples/cli/sample-apps Achievement adminListGlobalAchievementContributors \
    --achievementCode 'KEnN2fpK' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '66' \
    --sortBy 'B0192R43' \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
samples/cli/sample-apps Achievement resetGlobalAchievement \
    --achievementCode 'cbqS8Co9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
samples/cli/sample-apps Achievement adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --name 'TPsWG8JD' \
    --offset '6' \
    --sortBy 'czrdNqZq' \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
samples/cli/sample-apps Achievement adminListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId '49heC87h' \
    --limit '82' \
    --offset '40' \
    --preferUnlocked 'false' \
    --sortBy 'jRNu6ViO' \
    --tags '["j9NvHOXq", "86p571vj", "fQbVa9OO"]' \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
samples/cli/sample-apps Achievement adminResetAchievement \
    --achievementCode 'QgCg8qin' \
    --namespace $AB_NAMESPACE \
    --userId 's5Wilojg' \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
samples/cli/sample-apps Achievement adminUnlockAchievement \
    --achievementCode 'kURTei0c' \
    --namespace $AB_NAMESPACE \
    --userId 'eVN3xXCD' \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
samples/cli/sample-apps Achievement adminAnonymizeUserAchievement \
    --namespace $AB_NAMESPACE \
    --userId 'zFyatSZB' \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
samples/cli/sample-apps Achievement adminListUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'rTVfxqnJ' \
    --achievementCodes 'duLpK1VJ' \
    --limit '47' \
    --offset '83' \
    --sortBy 'dcuXs4ou' \
    --tags '["XLP7Jwhj", "HBf8yfR7", "KkqGy4qg"]' \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
samples/cli/sample-apps Achievement publicListAchievements \
    --namespace $AB_NAMESPACE \
    --global 'true' \
    --limit '14' \
    --offset '78' \
    --sortBy 'updatedAt:asc' \
    --tags '["aTVRaVtd", "M4cRbtsQ", "rrTZZE2f"]' \
    --language 'tWb475dO' \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
samples/cli/sample-apps Achievement publicGetAchievement \
    --achievementCode 'qEtLJmxb' \
    --namespace $AB_NAMESPACE \
    --language 'hLsZoWPJ' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
samples/cli/sample-apps Achievement publicListGlobalAchievements \
    --namespace $AB_NAMESPACE \
    --achievementCodes 'v0DxQGtP' \
    --limit '47' \
    --offset '49' \
    --sortBy 'K2nA8izC' \
    --status 'TfHKvvdg' \
    --tags '["dSJKiWZW", "TgKvaBU6", "gIFtg07o"]' \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
samples/cli/sample-apps Achievement listGlobalAchievementContributors \
    --achievementCode 'i39DkhqR' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '24' \
    --sortBy '0db5ja6C' \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
samples/cli/sample-apps Achievement publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --name 'gP4rWMHi' \
    --offset '14' \
    --sortBy 'XPqSDB1A' \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
samples/cli/sample-apps Achievement publicListUserAchievements \
    --namespace $AB_NAMESPACE \
    --userId 'W5MAJ9Nr' \
    --limit '25' \
    --offset '30' \
    --preferUnlocked 'false' \
    --sortBy 'Goz5Wkix' \
    --tags '["EzlOzDgu", "mr55XIHW", "AYPdEOzb"]' \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
samples/cli/sample-apps Achievement publicUnlockAchievement \
    --achievementCode 'IasSJKkX' \
    --namespace $AB_NAMESPACE \
    --userId 'px1NaIo2' \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
samples/cli/sample-apps Achievement listUserContributions \
    --namespace $AB_NAMESPACE \
    --userId 'lt6mqHAl' \
    --achievementCodes 'K72eOmWh' \
    --limit '29' \
    --offset '20' \
    --sortBy 'mKkWCaEf' \
    --tags '["RFUeGwuJ", "iaBrISRH", "96fGlwPI"]' \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
samples/cli/sample-apps Achievement claimGlobalAchievementReward \
    --achievementCode 'g88Ztggc' \
    --namespace $AB_NAMESPACE \
    --userId 'ZrU64xSD' \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE