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
    --limit '13' \
    --offset '66' \
    --status '["DRAFT", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "3H21QGFx", "defaultRequiredExp": 65, "draftStoreId": "mgpNa9VN", "end": "1983-11-26T00:00:00Z", "excessStrategy": {"currency": "P3WtoodO", "method": "CURRENCY", "percentPerExp": 28}, "images": [{"as": "yt4RvmkQ", "caption": "bXh7D6p8", "height": 37, "imageUrl": "xdxECFOu", "smallImageUrl": "XyP7GZts", "width": 86}, {"as": "GI7hURkz", "caption": "zORNRFqH", "height": 28, "imageUrl": "C0KeNPJ3", "smallImageUrl": "lWqeyCvh", "width": 24}, {"as": "PCRpYRUg", "caption": "H9Nrr9Mo", "height": 54, "imageUrl": "a5ricUT5", "smallImageUrl": "RPKu1vpM", "width": 49}], "localizations": {"Ll4eHjmj": {"description": "83LqF70G", "title": "ye3dbEop"}, "va4JlQFk": {"description": "RifENs8O", "title": "QxCfdjB9"}, "DhpNMEQL": {"description": "ZlOkfonk", "title": "8RpEW4YD"}}, "name": "R3Syn5Fi", "start": "1991-09-15T00:00:00Z", "tierItemId": "IUjtLFpc"}' \
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
    --body '{"userIds": ["3VWqgq5e", "GFwmywnX", "rjP99opo"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FjJ3wnV7' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0ol5UJiS' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OlLhNPEn' \
    --body '{"autoClaim": true, "defaultLanguage": "5irPrsBl", "defaultRequiredExp": 92, "draftStoreId": "hzkunhcy", "end": "1991-11-30T00:00:00Z", "excessStrategy": {"currency": "OJMPk5mU", "method": "NONE", "percentPerExp": 72}, "images": [{"as": "Gxwk92sG", "caption": "L4apTO2j", "height": 73, "imageUrl": "S9Ge2LAc", "smallImageUrl": "YoOT7XLH", "width": 5}, {"as": "9GhEmiA6", "caption": "WZTd3yRw", "height": 96, "imageUrl": "CFgKy1EC", "smallImageUrl": "6zupCIQ8", "width": 20}, {"as": "YOjKzhhj", "caption": "GIQUdtsm", "height": 62, "imageUrl": "CSILTqX1", "smallImageUrl": "ymjlEcgr", "width": 10}], "localizations": {"1ICPcTMB": {"description": "b6p8Eik1", "title": "KNZ7TGHT"}, "yp6Qhs5A": {"description": "CuNw2vlZ", "title": "hcLKpyy9"}, "xLdI3ELF": {"description": "n3pQc03O", "title": "GX80fKhw"}}, "name": "flDDWeVa", "start": "1996-11-22T00:00:00Z", "tierItemId": "rnNx3Ucw"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sxrnTuCo' \
    --body '{"end": "1998-08-04T00:00:00Z", "name": "SCjl2fpR", "start": "1979-06-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JVwI2Q7B' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'NZzsMiEj' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'yF00fSIg' \
    --body '{"autoEnroll": false, "code": "kZHsts5r", "displayOrder": 52, "images": [{"as": "OKMIJWW7", "caption": "J5N3iKUf", "height": 23, "imageUrl": "df73SZnw", "smallImageUrl": "6RG9LZ95", "width": 70}, {"as": "Rg90nLtD", "caption": "QNJTuwdw", "height": 52, "imageUrl": "VknW0Kod", "smallImageUrl": "lhE0bnAG", "width": 4}, {"as": "X1fXuyi8", "caption": "2hq1K2jU", "height": 91, "imageUrl": "Tk04AT9i", "smallImageUrl": "NmZCqL6l", "width": 28}], "localizations": {"0uevvLwy": {"description": "mMmIXSNc", "title": "eWElyR1i"}, "6gL5twDz": {"description": "qqxtxP91", "title": "DMChWuQJ"}, "1TS5BPUm": {"description": "ydSBqxNL", "title": "LdS1Gb49"}}, "passItemId": "XWlqKdzf"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'loPfEE2f' \
    --namespace $AB_NAMESPACE \
    --seasonId 'GiESTVzl' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'DPZStbE6' \
    --namespace $AB_NAMESPACE \
    --seasonId '1UDnjQHR' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'guEGAXG4' \
    --namespace $AB_NAMESPACE \
    --seasonId '2XarJlxM' \
    --body '{"autoEnroll": false, "displayOrder": 21, "images": [{"as": "oWpotRis", "caption": "vo1dcuo3", "height": 80, "imageUrl": "T8O0gDcp", "smallImageUrl": "tvIP7tMY", "width": 16}, {"as": "AQdVOBW1", "caption": "C8TuNdc1", "height": 8, "imageUrl": "ZQPhLlry", "smallImageUrl": "rpS8AHJs", "width": 45}, {"as": "1NrPnCIp", "caption": "f7hKWGv1", "height": 52, "imageUrl": "zZr6apMC", "smallImageUrl": "zg9tLIWy", "width": 91}], "localizations": {"joXUePwj": {"description": "pby3Isle", "title": "O2PYBtax"}, "USosuS1Y": {"description": "dVI3T6cx", "title": "ii37ryQC"}, "Cf3Ekmg2": {"description": "UD6HS9cU", "title": "eQ0ZDq54"}}, "passItemId": "A5eY83U2"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SVeJEFbM' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'eSWDWVqf' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'sOMbrTsH' \
    --q 'MYZLN7Ap' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'uDFwg0HR' \
    --body '{"code": "kq6XXtpu", "currency": {"currencyCode": "tFPP0knG", "namespace": "uyaGhT9K"}, "image": {"as": "Zq9eom6l", "caption": "xDMdk4tW", "height": 89, "imageUrl": "govaUgnf", "smallImageUrl": "jj2zTYW8", "width": 81}, "itemId": "HVIefUCO", "quantity": 55, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'AB2X6WJh' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NQoef76R' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'vd5A5DUn' \
    --namespace $AB_NAMESPACE \
    --seasonId '1jm0Zrc8' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'iRE8xup7' \
    --namespace $AB_NAMESPACE \
    --seasonId '8EQ9oY1a' \
    --body '{"currency": {"currencyCode": "j2S8YMma", "namespace": "TWS55Xxn"}, "image": {"as": "I6V3v6Zt", "caption": "KT6Skq6o", "height": 59, "imageUrl": "529M9fBx", "smallImageUrl": "D0W9H6hd", "width": 46}, "itemId": "EqCGOvAS", "nullFields": ["R8jdrSN5", "n6oipAfJ", "ygM27pFx"], "quantity": 94, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'sG4Y9Us3' \
    --limit '62' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'UzJ0vxCS' \
    --body '{"index": 83, "quantity": 9, "tier": {"requiredExp": 38, "rewards": {"nneT3ISm": ["tyRYCbxD", "qNe6uxgs", "cXFTCFMA"], "ibVG9QZz": ["5uwM5oX6", "nbQrNUAs", "cTtMoIfv"], "YS1jjxwU": ["sdwZzQh8", "nfgbmFSR", "ZWcCh41e"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '7ZVsgqSJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xaPPRXCz' \
    --body '{"requiredExp": 20, "rewards": {"irGqLNdq": ["kvdUBy4l", "j5CvBCGW", "5AQ0TRJX"], "0IbRm73E": ["GLeXTIkF", "as2UJ4X7", "zz30Ufoi"], "iltqx1fr": ["yHbA9BrZ", "SWrqHVsU", "0PlV1lhV"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'qA1Q7miP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SZqvITou' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'CPZM6pVJ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZfhZlJkD' \
    --body '{"newIndex": 12}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6RoNxoNZ' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'K2ChhE8O' \
    --limit '85' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'dEmkGH3L' \
    --body '{"exp": 59, "source": "PAID_FOR", "tags": ["L9G2gefG", "cZIvKhCC", "YUYHxNzf"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'qlLB1vZp' \
    --body '{"passCode": "6dWVwmhO", "passItemId": "WcZOsgV8"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'H9GmGbJO' \
    --passCodes '["o1D3xHEN", "fo5tFuS1", "bQ8WGdwK"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'RQW6DKMN' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'wX5hdl0W' \
    --body '{"passItemId": "67PQs1kq", "tierItemCount": 97, "tierItemId": "PZQ9hMXK"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'Zx55zMm1' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'TRfEvv7y' \
    --body '{"count": 26, "source": "PAID_FOR", "tags": ["AfGrKzsP", "MBw2kqwE", "chWLfi2g"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'PNXuqGCg' \
    --from 'GRXbq0VU' \
    --limit '47' \
    --offset '73' \
    --seasonId 'roVJ16Oe' \
    --source 'SWEAT' \
    --tags '["zzw6gVAY", "6e8i7F6M", "kHSaRrUV"]' \
    --to 'vSwgYZfQ' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '1ixSR6Bk' \
    --seasonId '05M6bBiy' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0RhNtXpB' \
    --userId 'iyb5PDsZ' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'PcMWY3Fv' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '87GA5zoF' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'NZnB4yhd' \
    --body '{"passCode": "Ie2dGENq", "rewardCode": "6H8sudcE", "tierIndex": 75}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'oieV7ZwL' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'U1Sslrpj' \
    --userId 'ZxhEnGTs' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE