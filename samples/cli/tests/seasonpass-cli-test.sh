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
    --offset '31' \
    --status '["PUBLISHED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "hnoHKamg", "defaultRequiredExp": 32, "draftStoreId": "CpfevNW3", "end": "1984-10-22T00:00:00Z", "excessStrategy": {"currency": "t5kNpFPh", "method": "CURRENCY", "percentPerExp": 15}, "images": [{"as": "QcuTTzoo", "caption": "dHcxGIA5", "height": 26, "imageUrl": "vA70yJOF", "smallImageUrl": "YUbyuLcp", "width": 66}, {"as": "euFlYkbq", "caption": "UUklmwHE", "height": 61, "imageUrl": "31hItrKC", "smallImageUrl": "ouKwXgWr", "width": 62}, {"as": "Jk16jZly", "caption": "q5i0pqbb", "height": 13, "imageUrl": "8sHNRpRO", "smallImageUrl": "kouZ3kBY", "width": 63}], "localizations": {"v0uVELg3": {"description": "6d66za3x", "title": "s77PID3e"}, "XkUgd4s2": {"description": "UHMrjitW", "title": "FwEgJb4p"}, "TJbVHQyV": {"description": "FfWd3tLJ", "title": "AUe7SMWK"}}, "name": "HZuewQ1D", "start": "1978-04-04T00:00:00Z", "tierItemId": "lyFGPTu2"}' \
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
    --body '{"userIds": ["nehW05kQ", "Q51xWnOq", "rNsRARY6"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GaLF2OB8' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '82nDSo2b' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6mOrELua' \
    --body '{"autoClaim": false, "defaultLanguage": "UHO56XvM", "defaultRequiredExp": 87, "draftStoreId": "lKalnbYI", "end": "1972-01-22T00:00:00Z", "excessStrategy": {"currency": "GqbBF8D9", "method": "NONE", "percentPerExp": 81}, "images": [{"as": "L2lhxIsu", "caption": "VujzchkX", "height": 20, "imageUrl": "nfkCAL4q", "smallImageUrl": "6fbJE5CX", "width": 38}, {"as": "QECyCcV8", "caption": "MlkOE5d2", "height": 6, "imageUrl": "a8GHAUrO", "smallImageUrl": "Z8xCMLPx", "width": 77}, {"as": "xCa0h9nS", "caption": "78U9nwoE", "height": 30, "imageUrl": "dNXESJrY", "smallImageUrl": "JqqCHIh4", "width": 85}], "localizations": {"MslyEUAd": {"description": "pV9unrAJ", "title": "v8WQqZeV"}, "8nM8jt0n": {"description": "0pUgMiHX", "title": "T8c5NS5h"}, "5tiC6tv2": {"description": "jz4INUl9", "title": "XKCvkzbD"}}, "name": "lLgWaKse", "start": "1990-03-20T00:00:00Z", "tierItemId": "51ZRXW1B"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YHeJPKG0' \
    --body '{"end": "1978-08-23T00:00:00Z", "name": "imtH8MVy", "start": "1990-05-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'v1XVgiS8' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'KWZMWmAj' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'h3VQgtvg' \
    --body '{"autoEnroll": false, "code": "ZKCxcRnq", "displayOrder": 59, "images": [{"as": "SqfriDZc", "caption": "WK9MOZJL", "height": 71, "imageUrl": "1YMuRpsL", "smallImageUrl": "3TGTV8bQ", "width": 16}, {"as": "E5QssZr7", "caption": "a3YomTiq", "height": 46, "imageUrl": "SoQJcQmT", "smallImageUrl": "sojs84rH", "width": 82}, {"as": "JKt9uZUj", "caption": "8fxbxFoJ", "height": 89, "imageUrl": "nwLAbJ6b", "smallImageUrl": "rl3CkC1n", "width": 58}], "localizations": {"iWWXSkTI": {"description": "cDGctwgQ", "title": "BQNmHDgP"}, "ZQuWlh15": {"description": "Xhq8RUgF", "title": "N5alkLbu"}, "inp3JU9c": {"description": "As8v5dL3", "title": "D9SAQ0WG"}}, "passItemId": "uxMXVuf3"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'G294O62b' \
    --namespace $AB_NAMESPACE \
    --seasonId '8DwPJDNx' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'bf6YTsEA' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SO51CUXy' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'UuuJlTnm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vLLiJXED' \
    --body '{"autoEnroll": false, "displayOrder": 27, "images": [{"as": "ipww8gFs", "caption": "R6lqE1tB", "height": 3, "imageUrl": "5big0spq", "smallImageUrl": "ZNpmeaLL", "width": 49}, {"as": "zMe1C7OF", "caption": "h1RtegYu", "height": 38, "imageUrl": "FpSCa75y", "smallImageUrl": "djBsjqvj", "width": 54}, {"as": "VVZ2wlQf", "caption": "7KSsg3Vz", "height": 43, "imageUrl": "NlCbqCGs", "smallImageUrl": "VmpQxyWA", "width": 31}], "localizations": {"kVG0q5xa": {"description": "UMki3nK2", "title": "Ybeh87CG"}, "2csGfufA": {"description": "lUq7zxTk", "title": "eUrVcgVB"}, "QEi9lJgv": {"description": "MOfPtoyP", "title": "Dy2aHoG5"}}, "passItemId": "gc5DzgKu"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'cMXHEk8C' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uws44FKA' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'W4PGcDXw' \
    --q 'xUfoAHrF' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'EczoxTCJ' \
    --body '{"code": "FUk9u2DM", "currency": {"currencyCode": "mFMpd6Fx", "namespace": "ERWovx1c"}, "image": {"as": "YvuY8phQ", "caption": "fInUvon4", "height": 35, "imageUrl": "MsIx99pH", "smallImageUrl": "Pcs95Gf6", "width": 19}, "itemId": "ghT5Ke27", "quantity": 56, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'mQ5ZZVEP' \
    --namespace $AB_NAMESPACE \
    --seasonId '0kHvsnmu' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'Ipo4RB2c' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FSmJOOus' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'rIdZsR4J' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EhIj2pqj' \
    --body '{"currency": {"currencyCode": "Ccis1QQC", "namespace": "ls09EaNN"}, "image": {"as": "Ccz7iR81", "caption": "FEaU8lnd", "height": 32, "imageUrl": "qubLMkhL", "smallImageUrl": "OMuOt9q3", "width": 61}, "itemId": "6ONnErjh", "nullFields": ["bQi89rrU", "cmR0S4fy", "gNvKPMD6"], "quantity": 15, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'cbkMUbR9' \
    --limit '96' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'dReGgqyD' \
    --body '{"index": 89, "quantity": 86, "tier": {"requiredExp": 63, "rewards": {"Adzl0hFy": ["m4uiFR8a", "jBHrHoI8", "ve7GEaZA"], "0UuaqD6u": ["mwI6FNyE", "l9E1VgRS", "9aoHzw53"], "8BwRFui7": ["jXgyTUEU", "glcMjUYy", "9y9GXWdA"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'Vxj87XQk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ubLGyDpo' \
    --body '{"requiredExp": 70, "rewards": {"acZBTBJ5": ["LfynAGCB", "yHkKLrgA", "ktaMzobS"], "XNLaprTf": ["pxi3BD9t", "oYjRygnT", "ChL1G4EC"], "glL0OjHd": ["LaqPZ6Vx", "fELgQLPV", "EAHhLoQZ"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'bwydiPhQ' \
    --namespace $AB_NAMESPACE \
    --seasonId 's2MHtvyQ' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '8v21CgBv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rvnsCbpq' \
    --body '{"newIndex": 54}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OgNKA09R' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'RRuWncXg' \
    --limit '83' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '9EgImRbg' \
    --body '{"exp": 67, "source": "SWEAT", "tags": ["IK6xvmfz", "1itMDcDF", "RlQMuSHg"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'zdn0zZz3' \
    --body '{"passCode": "m8W3qnNG", "passItemId": "CTEU6m5O"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'oNXAiS5m' \
    --passCodes '["Xpkjm1Yn", "Crzxi9wb", "g1m19Npf"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'KfGrv6vT' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '5E70r7z0' \
    --body '{"passItemId": "pIxZcwmS", "tierItemCount": 94, "tierItemId": "jVRVqtfO"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'FIrVVgVJ' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'R0clEtGI' \
    --body '{"count": 59, "source": "SWEAT", "tags": ["sGND6bvr", "e12STCr6", "U7km1Nl0"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '78jWDaCw' \
    --from 'PSoMmHFw' \
    --limit '95' \
    --offset '24' \
    --seasonId 'S4S3TlJ3' \
    --source 'PAID_FOR' \
    --tags '["ZtY1sZSw", "0kw6Khhl", "bvCBXoDW"]' \
    --to 'WHpoDuaS' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'tvlC7fxZ' \
    --seasonId 'kqeCddha' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JTozkfti' \
    --userId 'dI2TevON' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'E7yHBJ3m' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'XIwiaE77' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '6uDKveWw' \
    --body '{"passCode": "21LL5Tzd", "rewardCode": "kfTqJxDN", "tierIndex": 68}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'LkIZTEEd' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '66y3apJB' \
    --userId 'Fsv8Mirj' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE