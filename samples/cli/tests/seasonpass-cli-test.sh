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
echo "1..45"

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

#- 2 ExportSeason
samples/cli/sample-apps Seasonpass exportSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'ExportSeason' test.out

#- 3 QuerySeasons
samples/cli/sample-apps Seasonpass querySeasons \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '90' \
    --status '["DRAFT", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "JvIv84bD", "defaultRequiredExp": 81, "draftStoreId": "ZDw75EQy", "end": "1996-11-01T00:00:00Z", "excessStrategy": {"currency": "1Yk3X7pF", "method": "NONE", "percentPerExp": 63}, "images": [{"as": "7nsOg3vB", "caption": "6i9wS9Cf", "height": 92, "imageUrl": "CDUGVoCI", "smallImageUrl": "TTNMEtNb", "width": 2}, {"as": "t1Q57kGr", "caption": "nr2Dwejl", "height": 37, "imageUrl": "N98DztpZ", "smallImageUrl": "H4T4T3nn", "width": 22}, {"as": "AmJOmXIN", "caption": "dL06D3rQ", "height": 76, "imageUrl": "zatLzg9y", "smallImageUrl": "qtjOw25H", "width": 60}], "localizations": {"zc50Uisr": {"description": "fDmTINX6", "title": "ma4RIZMT"}, "gNkE3MIR": {"description": "XI5bLjZE", "title": "iwWXzFD7"}, "2kJY7Ccf": {"description": "7Cy7yqHx", "title": "n01372L8"}}, "name": "3uDNVJXv", "start": "1987-09-13T00:00:00Z", "tierItemId": "YiSZ0ygR"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateSeason' test.out

#- 5 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetCurrentSeason' test.out

#- 6 BulkGetUserSeasonProgression
samples/cli/sample-apps Seasonpass bulkGetUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jQBBmoM7", "y185rPSD", "Xfsv8kRB"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xIG7RZjq' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ieceax6k' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MWoLvMi3' \
    --body '{"autoClaim": false, "defaultLanguage": "D7UEiilS", "defaultRequiredExp": 71, "draftStoreId": "xut5c00Q", "end": "1975-07-08T00:00:00Z", "excessStrategy": {"currency": "zJa2Esca", "method": "CURRENCY", "percentPerExp": 97}, "images": [{"as": "7nk6Cncs", "caption": "VM0qtHyu", "height": 33, "imageUrl": "ajqbMFni", "smallImageUrl": "2U8krnak", "width": 85}, {"as": "BRSacpmF", "caption": "q3PvJgHs", "height": 61, "imageUrl": "F53syfJu", "smallImageUrl": "v4Wv74PM", "width": 37}, {"as": "EkopQ2l8", "caption": "K5BXljaA", "height": 22, "imageUrl": "DO4obWBO", "smallImageUrl": "SR3BtawW", "width": 67}], "localizations": {"drxzsk4K": {"description": "dwgXdZLf", "title": "Bj2GZa2B"}, "MeulOs7e": {"description": "3RbmuDps", "title": "wvyINFdR"}, "dsN38CyF": {"description": "fw9m0hmc", "title": "7eKlGut8"}}, "name": "pjUfn6UH", "start": "1985-11-19T00:00:00Z", "tierItemId": "6SIPZF6n"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'aAJPaJun' \
    --body '{"end": "1996-11-07T00:00:00Z", "name": "rdJGGnTY", "start": "1978-07-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Yq975eV2' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'bAKfr7Dk' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'hTrX2xq4' \
    --body '{"autoEnroll": false, "code": "7Ggay3V7", "displayOrder": 15, "images": [{"as": "iobtK55p", "caption": "X9H8T2Fm", "height": 80, "imageUrl": "ZTzKJa2I", "smallImageUrl": "XlwmaPBS", "width": 92}, {"as": "bNGKzvmB", "caption": "I2IgphaY", "height": 100, "imageUrl": "gTGyvEzy", "smallImageUrl": "nBlXe21l", "width": 88}, {"as": "F2DTGJss", "caption": "jgK3LYyR", "height": 88, "imageUrl": "MpP6cqLy", "smallImageUrl": "oqxqraDm", "width": 40}], "localizations": {"WEPkJr3F": {"description": "CN6PnTWk", "title": "I7moC75N"}, "E7dwTnK1": {"description": "gPBh0hDr", "title": "7Sty3UNL"}, "lkbJ3fby": {"description": "E0TuZICA", "title": "mKisX36K"}}, "passItemId": "LXFfetrU"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'QjbBrE00' \
    --namespace $AB_NAMESPACE \
    --seasonId '7bf0nFoy' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'PZtT2A1b' \
    --namespace $AB_NAMESPACE \
    --seasonId '4BOwjmIA' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '2sItCT7b' \
    --namespace $AB_NAMESPACE \
    --seasonId 'noDGiifM' \
    --body '{"autoEnroll": false, "displayOrder": 31, "images": [{"as": "LjBpTMe3", "caption": "7aDmRAXL", "height": 51, "imageUrl": "bNXhCCLs", "smallImageUrl": "VBvdKvSC", "width": 15}, {"as": "9ob39LDm", "caption": "aIk1fUsj", "height": 95, "imageUrl": "yDMdL8b3", "smallImageUrl": "j5CS0uqY", "width": 28}, {"as": "Va7ISrFq", "caption": "Ljr71nMd", "height": 42, "imageUrl": "bJT1r3h6", "smallImageUrl": "CdJB83U0", "width": 84}], "localizations": {"Ky9M2dLz": {"description": "eFQU9woe", "title": "9OnLZmMr"}, "IPGWaGi9": {"description": "Elu9DYK4", "title": "sggsLHez"}, "Px4FaQ5V": {"description": "GVEuU6Ef", "title": "4sxQHOpb"}}, "passItemId": "X863E37f"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Uw88KVdP' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LUR5BTo1' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZhVF9nf7' \
    --q '62JIGq37' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'CpasZ2DB' \
    --body '{"code": "hZC5haRl", "currency": {"currencyCode": "y8b9g62R", "namespace": "GtFUw8RZ"}, "image": {"as": "vbIsp2Fl", "caption": "SsHqpefN", "height": 93, "imageUrl": "KMGPlw6i", "smallImageUrl": "68yvpPRx", "width": 16}, "itemId": "g8B2HgU4", "quantity": 22, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '1RklnyPH' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Rhqugi4D' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'V99YPHRs' \
    --namespace $AB_NAMESPACE \
    --seasonId 'M3LbBlUd' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'FcN7T4iY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qXp3zGSM' \
    --body '{"currency": {"currencyCode": "D304Ohl6", "namespace": "0z394mV6"}, "image": {"as": "QQtd6Xig", "caption": "IE1PgNne", "height": 84, "imageUrl": "SCHZ32ZY", "smallImageUrl": "oBpVrX5D", "width": 54}, "itemId": "mb3814IR", "nullFields": ["7bGcrQ1P", "EyA1diEk", "49Sj9RWL"], "quantity": 50, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZLNSIjaw' \
    --limit '41' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'jyLllxrT' \
    --body '{"index": 34, "quantity": 97, "tier": {"requiredExp": 32, "rewards": {"mrUcRHx8": ["FwS2Nw22", "lOqrjs75", "nPIdKxih"], "K69vKKqE": ["KQIW3ECN", "PX3MKRoK", "vYBhRllY"], "x7ec9RJb": ["5T9zHZg6", "i3g9w06b", "OV79o3nk"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'LB7kAMMl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'y8aJxBMh' \
    --body '{"requiredExp": 89, "rewards": {"rN1EGFy2": ["7rIrvNri", "RbJTFqjM", "YuKmkVMY"], "JkuAHeRM": ["d9YXMpel", "2KdVaVvF", "HdN0Gbhz"], "KkuM68RZ": ["f4rS5Xj7", "1h9nunZF", "B0V0EMex"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'pAQfvo9s' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LwuiC4F0' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'V6Jp2Lzj' \
    --namespace $AB_NAMESPACE \
    --seasonId '5uZXDgGa' \
    --body '{"newIndex": 58}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1NUNK6Ns' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'vYrYxgzJ' \
    --limit '63' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'jBIos2Nw' \
    --body '{"exp": 71, "source": "PAID_FOR", "tags": ["8djVcqdj", "xTauaDLt", "j29uaQCK"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'MQIgPTzC' \
    --body '{"passCode": "huWflSJR", "passItemId": "3HwhrxnD"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'e8Hnjnnt' \
    --passCodes '["oTg2kFZK", "jmCYzpW4", "clIodSGN"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'jmYTGSPN' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'w6NdE3XS' \
    --body '{"passItemId": "BNhqHGiH", "tierItemCount": 98, "tierItemId": "SK0hjP3b"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '9xFfs1jT' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '7JocLOkT' \
    --body '{"count": 11, "source": "SWEAT", "tags": ["nwnL2L4O", "yLp5LbM8", "anC4Pbip"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'svQM3XYH' \
    --from 'HvNSYozf' \
    --limit '32' \
    --offset '77' \
    --seasonId 'BP3k7tFf' \
    --source 'SWEAT' \
    --tags '["wYJajbe3", "PWBGwMUt", "wQXtWQ1y"]' \
    --to 'BrWmf5iW' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'QL4vq8GK' \
    --seasonId 'd6CUBbql' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'X7YjrIlo' \
    --userId 'HnawVyvP' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '4VFhYbOB' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'a1qcWDtl' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'hC0XGV2T' \
    --body '{"passCode": "11GCgQ1O", "rewardCode": "BzAiOdaY", "tierIndex": 71}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'YKBSvLos' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '54vJHTlq' \
    --userId 'gC60xCW2' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE