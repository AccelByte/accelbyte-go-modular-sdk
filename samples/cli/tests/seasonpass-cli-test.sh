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
echo "1..44"

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

#- 2 QuerySeasons
samples/cli/sample-apps Seasonpass querySeasons \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '67' \
    --status '["RETIRED", "PUBLISHED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "C0M73SKhH3tF6C1d", "defaultRequiredExp": 7, "draftStoreId": "PqZCRJXGXGC1taCV", "end": "1981-09-19T00:00:00Z", "excessStrategy": {"currency": "G9oyxlk7QCey8QKI", "method": "NONE", "percentPerExp": 30}, "images": [{"as": "IUBGTcPP48X4Chb4", "caption": "69qhpAcLEobiNjNE", "height": 48, "imageUrl": "LeM6MWl5ieGgCcnr", "smallImageUrl": "OZ7hbjH4O56YnALL", "width": 60}, {"as": "IpADSKBxmIOQhDxG", "caption": "whuEdfBFqIsTNBpD", "height": 6, "imageUrl": "MGE4CwvEFParhlkV", "smallImageUrl": "9huY3PbHEPC7fH3l", "width": 48}, {"as": "V5yKrFD700uTLN8m", "caption": "hyO3yidF7A4VAG91", "height": 43, "imageUrl": "OYpYAyzJfR8tQQ9s", "smallImageUrl": "SWlhqVzZdB9QkKF9", "width": 76}], "localizations": {"ySYQ0Yg1CRu7pTIM": {"description": "TLKLoAjzCupE5E8I", "title": "KV4rfvEaq97nQql9"}, "9ubOgI5y6gSb6se9": {"description": "IxeXMIYwbHO8PlOs", "title": "WJTL31uZY3Ywux0O"}, "vJ3KWtlplVbbgOH8": {"description": "cXWUxxksVGK035aS", "title": "UAWTRkjm9F7PNk4g"}}, "name": "NYxgakay3cCj5mUc", "start": "1990-11-27T00:00:00Z", "tierItemId": "QvSzlG4kiVjWMNw5"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateSeason' test.out

#- 4 GetCurrentSeason
samples/cli/sample-apps Seasonpass getCurrentSeason \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'GetCurrentSeason' test.out

#- 5 BulkGetUserSeasonProgression
samples/cli/sample-apps Seasonpass bulkGetUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PthY8g7iJ6En8vuc", "SFPDneOWp5OKyJJi", "5kyt16ZCTkwdFPaC"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hNwSLI8iUDPyjtog' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GoQY8sKDuwkKe2Ui' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kcNqBw2N89HLffYb' \
    --body '{"autoClaim": true, "defaultLanguage": "qeVG49YQyJZdSQOY", "defaultRequiredExp": 4, "draftStoreId": "E4fv36fFaW6vInxu", "end": "1989-12-22T00:00:00Z", "excessStrategy": {"currency": "Z2hruPrmOCOKAIOU", "method": "NONE", "percentPerExp": 58}, "images": [{"as": "Qaee2X1SJIHyJoz2", "caption": "Z8oBaHN4RLHWpEkq", "height": 94, "imageUrl": "KDsfI0zVuisLjlWM", "smallImageUrl": "A9elImWi3FapllLZ", "width": 29}, {"as": "R5j1XrQDpXD0QheX", "caption": "3HZxakstqS0cmlfC", "height": 0, "imageUrl": "LJ3EWEgfPwe4DNU6", "smallImageUrl": "unWMEre6QnT9oxbA", "width": 74}, {"as": "gg2H0FHuTvYKBQnA", "caption": "7WW88JRpwbmhwQ4n", "height": 66, "imageUrl": "5XycnWbtxMoF4mby", "smallImageUrl": "98awYYQzKCOZw97O", "width": 23}], "localizations": {"tVma0pgUIQz9FJEb": {"description": "372gAjAxZZg6GccG", "title": "UuiSsmHIShagdzva"}, "o3bTVIBv9IaEHkZG": {"description": "xSFgicElVR1rdH1Z", "title": "PkBIorBZkoH8CqAk"}, "zNpTEPQBeYGbmUq5": {"description": "k7H00kPww5Tgcd1Z", "title": "rJsShOJWZ1lxbWEr"}}, "name": "a6MFzNv070IN6P9n", "start": "1975-11-05T00:00:00Z", "tierItemId": "IVtFqmUOygNCp9iK"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qETOm0vjkWriOmy6' \
    --body '{"end": "1971-12-30T00:00:00Z", "name": "3eIPwpDaUzWKt1vS", "start": "1978-08-16T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0b4dNutfKSy3isJN' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'H8R5NoGbRJSrmxe1' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'oM8GeOJwFivS8yT2' \
    --body '{"autoEnroll": true, "code": "yKqcRmWu0mOIX3Cz", "displayOrder": 49, "images": [{"as": "oTRuP0x3hIuO6CvC", "caption": "G0ahg72SsMyrCWAq", "height": 69, "imageUrl": "2w44izhj0oIOJtdW", "smallImageUrl": "BN4hFCSTxUuNztwt", "width": 37}, {"as": "PholEYqJOtzRCCRL", "caption": "tfbc8LC04iVm7Il1", "height": 56, "imageUrl": "r481yYdNhxt3Nv9X", "smallImageUrl": "NtUFhrXECXr4lMC4", "width": 5}, {"as": "QS9QKcBaYhlVdWbY", "caption": "trFcZcYGN10EpgMO", "height": 22, "imageUrl": "31yjfGoQ2wh3epze", "smallImageUrl": "gU0DXDFYRaCsYVLA", "width": 16}], "localizations": {"aqv1wQHyMfU1M3XN": {"description": "zm0mtZcyjGLkjcMf", "title": "0soSaV161JiBOrvf"}, "0IGGCrVsO2pDKAek": {"description": "rh869iIwXtn956zP", "title": "nCuR1evDvlWfn2Zg"}, "aPSWR0E8mMQzqnKu": {"description": "AmA4PUAYIqzn8xea", "title": "or02l01NszsA9uPk"}}, "passItemId": "MsPr1e0FTrIo3m3V"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'YS2jjP6gRYycL2lR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kLGd6F1fJSx1PQ1w' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'R1CxcVRYnrefJLNi' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EsZKkxcFqxHaPgEW' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'AW4Srxl0sX7IyjTu' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KJAbCU9GuzO8JB9Y' \
    --body '{"autoEnroll": true, "displayOrder": 34, "images": [{"as": "POUSB77c2FFe5qXh", "caption": "VPY7GdOdM0zjN1Cm", "height": 67, "imageUrl": "BNPZYwLoKROjd9At", "smallImageUrl": "WDKp78RMorrdjg8g", "width": 61}, {"as": "LxBWR75j19HDnRYv", "caption": "TWoCwGlZ01zUKnmF", "height": 68, "imageUrl": "wGuyFmP8cmb54wfr", "smallImageUrl": "zD4qKAHwdRMxjco4", "width": 52}, {"as": "7Y7SAoMAeg0AVNm2", "caption": "B1UxtovIMX08CW3P", "height": 77, "imageUrl": "M8L4aD7CkNAQRerp", "smallImageUrl": "JT8TNDOndj9SozpV", "width": 66}], "localizations": {"tFEE5sWFmsHgWd7n": {"description": "d79oSiVNXXLkIh9M", "title": "kgAF7wIIXSou2H3d"}, "03hV3ysn1xX6w7Tb": {"description": "4AKrWKcwFb2IbDtt", "title": "Ydu8RjnmPGh1cfGb"}, "zM03Lh9zGx5MU9dt": {"description": "WzAdvAb6jYSNwgDV", "title": "A8YX1qANregwY9gV"}}, "passItemId": "2P0MnREjJiGwwVha"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'eIIyyDFgLwkN8pWe' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rnqRBfNdb2cZjrMn' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'PpatBC982e4BlBgw' \
    --q 'qQH1TLJBSslhuXua' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Muq62YJlxWK7D6TG' \
    --body '{"code": "v4MZtRDM8ZpnnSuU", "currency": {"currencyCode": "0b0hs9FFWXUIzxw1", "namespace": "Key8bK0dXC15dado"}, "image": {"as": "14AnrWZabAjvgieX", "caption": "4ALPuodgpQlLuaAN", "height": 29, "imageUrl": "VilNNos6w8oHdVGr", "smallImageUrl": "DbqIEFHKzAiJ8lv7", "width": 3}, "itemId": "IjFtxrK15EuXL5Eg", "quantity": 79, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'Pu88rfNVSNR9kMX2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dzTrh6xHgQLAXQGX' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '8ka48o3w3bEB64Oz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'poQ3ZXU7xR1TBTUK' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'UDKgZKunvu9gLiU1' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wpWufw9Tm0Mwes3i' \
    --body '{"currency": {"currencyCode": "xP9nAPx20a23gG4G", "namespace": "O7pJDBZaDJi5K9tE"}, "image": {"as": "osrnAWNBjEsaQlhU", "caption": "RGNQb8Z0ulSD2swy", "height": 54, "imageUrl": "HBvW5WXZOHUn5P94", "smallImageUrl": "AjHx18YU196594fo", "width": 53}, "itemId": "A6yHpB1RCWFbil3D", "nullFields": ["kBofdbLoKA6UKLCH", "i7SZhuszV8Ad1UAm", "HZWix9SuP1FWpgDh"], "quantity": 74, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'l13kyaua8ZjcIG4x' \
    --limit '42' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'ixaBW3Cj9mwItil6' \
    --body '{"index": 89, "quantity": 59, "tier": {"requiredExp": 47, "rewards": {"xf6YIvKZOiN6HVS7": ["YfmdEcD9E0vJ0aTF", "2wP90LnoCSjm1SOI", "SLg8GisZHirh536h"], "fyCZ2NXMmF8aMqTp": ["3KpIAHBdK5ti22K5", "TmcwLps3fClAcGpV", "rmL2hvE5bpeYt00L"], "LNAVQ4tPoqY2fCe7": ["Et5qQjjUsOPGNpz7", "fgpwPJtEy1Lu1rdg", "s6wex8AbIylQHNaV"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'Zq7F9RT4uE4MNyTl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NaotUIMeoA2sAr97' \
    --body '{"requiredExp": 15, "rewards": {"FUjnSNmnZJGtQJLe": ["iBPAgyMcw7dCCKfh", "fDYiSuqltyMKhFKV", "BfF06P8WLIsdDTzX"], "oCkP4cXL8sje19by": ["q8tlhldnlG3uOsK4", "xq9zoahQOGSxvyMb", "TkwtdcnleTYbv4NQ"], "JzMKFftpRICZKYF2": ["jPiEhmhlDOS1qTVe", "yop4xDP4zJxpe7VW", "nTl9OWKvo8MMJxaN"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '5b0V80y6ZRCtXw60' \
    --namespace $AB_NAMESPACE \
    --seasonId 'sm3gzK1QTkeVzAgU' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'iZVVMbJRjCXJQTn5' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ty1vjrmAm1Iz2N2e' \
    --body '{"newIndex": 14}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'A4QXUQuJKge93ruz' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'izHf8ozp9wmAmXV4' \
    --limit '26' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'XZ8jJvq4sL27lgwz' \
    --body '{"exp": 89, "source": "SWEAT", "tags": ["p2cPoUzjRBj315Dq", "0c3HY2GYusFg7MNQ", "k9MxIm40S7sSY22G"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '6Gpn5tWrgytNXCfL' \
    --body '{"passCode": "iV7f4nJINWShzyYQ", "passItemId": "lZfoMMDnJm3znmHs"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'cYmk4QruuLRfmymD' \
    --passCodes '["vFVjsIUbu48TZi5b", "1MWwpVRqCPjLeBRa", "hPyU2RyykugeXkwC"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'h2N0tFTP7y5M7ZhH' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ddCxrvb26ACMSfyc' \
    --body '{"passItemId": "B453Z2GfbCVE5Y6m", "tierItemCount": 4, "tierItemId": "tEffWPfA3iIxBXWU"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'Mmi40rduehX1jOXI' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'PexoreUsl6P1YHPI' \
    --body '{"count": 21, "source": "PAID_FOR", "tags": ["icczv3xfjCraF6eR", "j4bYwmoOyLHXKRvC", "RGz5hdNnu4lDippe"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Lsgxy28Sx0KGYMDr' \
    --from 'pEUjjnjhiCK3o0W6' \
    --limit '24' \
    --offset '46' \
    --seasonId 'j6xTparFEs4Fq091' \
    --source 'PAID_FOR' \
    --tags '["cIZwLjnk27CIKj0a", "qa7nEf8MQVGGTB6j", "uWjJaCEAENmPv3WB"]' \
    --to '89E65qeenREpJSC3' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'AoWhbRFrjfAVxG01' \
    --seasonId 'O1cA9y1hAhEBkful' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ktknYVseQwCwhDoo' \
    --userId 'GNpBfc0Nc8UpsxHo' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'XIhH1QgxErwFzgpL' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'v2oJ4jiPvA8fuIfc' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'IQZW5ovMBninnO0v' \
    --body '{"passCode": "ztub7E94w8EPXEtr", "rewardCode": "ll8Oh6VAT4lvqr4O", "tierIndex": 9}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'mzaRr63nKJw7PQx2' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JL5iiBW7U0hDYfe6' \
    --userId 'Jtf00HB0Sb19HGaO' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE