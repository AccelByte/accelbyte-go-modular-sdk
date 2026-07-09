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
echo "1..46"

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
    --limit '77' \
    --offset '56' \
    --status '["PUBLISHED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "AaPbBUfA", "defaultRequiredExp": 29, "draftStoreId": "wVKeE5WX", "end": "1974-02-03T00:00:00Z", "excessStrategy": {"currency": "PnCAzJcV", "method": "CURRENCY", "percentPerExp": 19}, "images": [{"as": "DvD37WYC", "caption": "YNsZi5gW", "height": 24, "imageUrl": "YeAvTcM0", "smallImageUrl": "CJFVOBEl", "width": 26}, {"as": "Fo15GMCE", "caption": "aNCeHHBD", "height": 8, "imageUrl": "jw3dNnxz", "smallImageUrl": "BywtuI3I", "width": 47}, {"as": "OHJBzKGi", "caption": "Ff5A7TfQ", "height": 79, "imageUrl": "nChPilfa", "smallImageUrl": "1V0D60dH", "width": 86}], "localizations": {"qmhL6o4V": {"description": "s1QF2nXF", "title": "J4qU5tcd"}, "9QsMM1Xc": {"description": "XIM2QxBM", "title": "djjBTAnV"}, "TQSRZuun": {"description": "nlowUWXE", "title": "iFXpZ7Vg"}}, "name": "RICbtOwz", "start": "1986-05-04T00:00:00Z", "tierItemId": "kvTa7Gi2"}' \
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
    --body '{"userIds": ["TFphjqgM", "lgpeO9Vm", "SkY4BB1g"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId '2oniypB0' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vDvKm1hG' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ojOWOHwN' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NbRruSB2' \
    --body '{"autoClaim": true, "defaultLanguage": "2gcHX7v4", "defaultRequiredExp": 89, "draftStoreId": "9mekv1Le", "end": "1980-07-19T00:00:00Z", "excessStrategy": {"currency": "i0fRI5D8", "method": "CURRENCY", "percentPerExp": 92}, "images": [{"as": "c4dCHjut", "caption": "41XJgsKY", "height": 68, "imageUrl": "ztCdiUCC", "smallImageUrl": "c5ftEx84", "width": 81}, {"as": "wKhjCuWS", "caption": "7vinprHp", "height": 11, "imageUrl": "O0JHoREl", "smallImageUrl": "m6QEN7Uw", "width": 78}, {"as": "pNtDVVKn", "caption": "djJ4M3uz", "height": 8, "imageUrl": "EC1hIYvD", "smallImageUrl": "oaL6RVAK", "width": 11}], "localizations": {"654MuTBV": {"description": "x4iuZGet", "title": "F7fwITnU"}, "YD2ITCnn": {"description": "pq8kDdJm", "title": "wMxsrAIl"}, "2adFiDEl": {"description": "XCht69n4", "title": "0JCjj9ew"}}, "name": "Tb1NXVmO", "start": "1980-04-19T00:00:00Z", "tierItemId": "A6yxca1d"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'b4774seJ' \
    --body '{"end": "1971-12-06T00:00:00Z", "name": "xJYJROge", "start": "1985-08-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hJZSJ9qG' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'DufFcNfI' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'i7qVBMEQ' \
    --body '{"autoEnroll": true, "code": "Y6jQe2Ox", "displayOrder": 42, "images": [{"as": "iUE5J25k", "caption": "SImzECjI", "height": 26, "imageUrl": "hFM6cCSo", "smallImageUrl": "vPkOfwJC", "width": 17}, {"as": "tOwKvbDA", "caption": "UOmqD8Qs", "height": 47, "imageUrl": "xPBtGZ81", "smallImageUrl": "ZbZxEdQP", "width": 68}, {"as": "HzjdNoyB", "caption": "otmNhH4S", "height": 34, "imageUrl": "NdXOp7qU", "smallImageUrl": "5pUWyCAs", "width": 16}], "localizations": {"KH7eTSQC": {"description": "k7ajp06H", "title": "qxy03wxK"}, "GHb9MY6x": {"description": "zvvbpd4r", "title": "RmzQgu8p"}, "OVMwC814": {"description": "UXWA2tGl", "title": "1PDcTyXO"}}, "passItemId": "3Ay85f6O"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'erCWNf4q' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ICYLj6fI' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'lRGD0A5q' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KVDCYWjS' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'hPLYIozY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'axvSdQcI' \
    --body '{"autoEnroll": true, "displayOrder": 69, "images": [{"as": "4UpzZm7P", "caption": "JgYCOcyE", "height": 62, "imageUrl": "yN77Y4oN", "smallImageUrl": "WrDtn3pn", "width": 11}, {"as": "Pp8Ailci", "caption": "QdEetXeE", "height": 40, "imageUrl": "Kjtdqtns", "smallImageUrl": "Kv7asLVc", "width": 79}, {"as": "RLEs8IB3", "caption": "8POP4JEL", "height": 79, "imageUrl": "sFE7XrvQ", "smallImageUrl": "0bg90T7L", "width": 55}], "localizations": {"TExsErcs": {"description": "lWjQgxcZ", "title": "DwvJL8fl"}, "ut45z9OC": {"description": "XQ7R7NNU", "title": "DMEOrMUf"}, "mG6qDjtE": {"description": "hxGR0b6R", "title": "emQvD6pF"}}, "passItemId": "j2ZOIxLT"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sErdjVtS' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8KdL1JeP' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'AN4vah5H' \
    --q '6L3vyXqQ' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'f8hLxjjU' \
    --body '{"code": "LLnmnlT7", "currency": {"currencyCode": "NvLTuVaM", "namespace": "UNvFAa5m"}, "image": {"as": "BqGNw2zI", "caption": "FW0dOfjD", "height": 43, "imageUrl": "9Lf8rbaQ", "smallImageUrl": "m9BaloMf", "width": 24}, "itemId": "2DA0Psfh", "quantity": 51, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'OBhL2mCs' \
    --namespace $AB_NAMESPACE \
    --seasonId '24SBtqDf' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'y6ZNMh8J' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HV2YoAMu' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'VcKRuDdj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Y1jiHMYa' \
    --body '{"currency": {"currencyCode": "Z4EkPeug", "namespace": "45Di9t7f"}, "image": {"as": "P261Dmjh", "caption": "ULopqzTz", "height": 9, "imageUrl": "PbQ0d9hd", "smallImageUrl": "f6gMY6g6", "width": 5}, "itemId": "rzAhkCVB", "nullFields": ["QQDVRVTj", "Wse5zZrO", "p2VjJdwE"], "quantity": 57, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'monptY7L' \
    --limit '52' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'h9z6vhou' \
    --body '{"index": 86, "quantity": 38, "tier": {"requiredExp": 48, "rewards": {"slKAE9UY": ["e8w5mrRI", "fxtA2bVY", "ZA3Bo4C3"], "V3jx6Qg5": ["FRbbUm5u", "CjrQeTTP", "E5nz8Amj"], "ofEdaDKA": ["D7k6qF9t", "udwQk84a", "hXAURk59"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'KArGZCTn' \
    --namespace $AB_NAMESPACE \
    --seasonId '2G4tke5e' \
    --body '{"requiredExp": 15, "rewards": {"NV0ezRcE": ["4y5OvOKe", "HkTkriFz", "ttFR5a6Y"], "fYisCFOw": ["DJMaJXxw", "erulGvd9", "0C4omkqo"], "1OpuHtZv": ["dpOC8qwv", "r3Zl8Jky", "m8Tv1daL"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'dUa0yRHp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WZCFKkaM' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '33HbUzF5' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MlCaeHO3' \
    --body '{"newIndex": 100}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'u8Bn7xVR' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'If2cA5jG' \
    --limit '82' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'DqdL9Def' \
    --body '{"exp": 53, "source": "PAID_FOR", "tags": ["5G1et9of", "ANZTn0Kk", "pkJyxxf1"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'XyuxCJ0f' \
    --body '{"passCode": "KWgHOD7y", "passItemId": "t3rj3rbh"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'zZombrv9' \
    --passCodes '["i3ZNrVPV", "UrcY8T0Y", "cUZgKQDm"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'IRRjSh1b' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'E3pIUQYD' \
    --body '{"passItemId": "TUWWkGAx", "tierItemCount": 98, "tierItemId": "D5gKeU6g"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'muPssV5l' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'pMwwRMNw' \
    --body '{"count": 79, "source": "PAID_FOR", "tags": ["Whxnkb40", "Ui884qLJ", "2TqT8Ahv"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '3VSOwZJ8' \
    --from 'roQpzSPM' \
    --limit '90' \
    --offset '10' \
    --seasonId 'I9fe1WSr' \
    --source 'SWEAT' \
    --tags '["mplqW2eY", "01ic2NEg", "OdcmfBzl"]' \
    --to 'tmMZPGfV' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'NBCGD2GH' \
    --seasonId 'utEcUTkJ' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qJxe1DjR' \
    --userId 'IO8ntab6' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'nEUcBUwA' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'eex2cZRC' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'cvi2L2Ms' \
    --body '{"passCode": "QyJRADRR", "rewardCode": "y3jPzdCj", "tierIndex": 80}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'SFsl66mI' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'im0aVS4V' \
    --userId '5eekQJvP' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE