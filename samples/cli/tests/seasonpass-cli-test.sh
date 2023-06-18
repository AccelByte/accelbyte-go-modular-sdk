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
    --limit '0' \
    --offset '14' \
    --status '["DRAFT", "RETIRED", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "Pt7oO6spc0eR6TBB", "defaultRequiredExp": 79, "draftStoreId": "TZMVsVilSW8CFxTZ", "end": "1983-04-26T00:00:00Z", "excessStrategy": {"currency": "T8mcgu7wkGNtSZZT", "method": "NONE", "percentPerExp": 48}, "images": [{"as": "ncVImmehn41Sg6VE", "caption": "oXZyY5FD0ZuIORWF", "height": 58, "imageUrl": "0h82xvdwrW7V1MSg", "smallImageUrl": "zuCT1BpGHVgcCwKD", "width": 59}, {"as": "6cBgiWGDMfXgXvYM", "caption": "TmDI5FuSy6OH1KKG", "height": 79, "imageUrl": "rTlEe6Ax49w0dWPW", "smallImageUrl": "Iv4pxqmwPdcQiATg", "width": 51}, {"as": "czgBLwe7qLZsQ0O4", "caption": "tYIxq2cr4z8MUDsM", "height": 63, "imageUrl": "NXraqAzKXKvN4NYz", "smallImageUrl": "kEsFZOCKasKVD7q6", "width": 88}], "localizations": {"yD1KjI69WVkI5Zzw": {"description": "Yfo0p54Rm44PbOOO", "title": "WmDPDGYrgICjBUd7"}, "kFA6mtbZOef2JmdC": {"description": "qJJ0f9J0jswyXLMt", "title": "oxHmwWxFTOJANhz0"}, "zkFieFqn8f0iDE7s": {"description": "rhpfx8BArphw7eWh", "title": "4SrnxFcSMmYGP5Ob"}}, "name": "gauIFxrpjbElAphp", "start": "1975-05-25T00:00:00Z", "tierItemId": "yv5H5YiT7f2ssjLJ"}' \
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
    --body '{"userIds": ["6EsRlkrEyCOqUhyM", "OquppM4X0f5YZNkv", "uzJRh46WSqqAQ3ay"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CkluVa6aeDCZv7Za' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NX2fzw6kBHAZakbs' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MNaEOgxFev4fWGli' \
    --body '{"autoClaim": false, "defaultLanguage": "935mTlN3IKSBiwzA", "defaultRequiredExp": 55, "draftStoreId": "jLBHE2BuCpEiXSsg", "end": "1999-10-09T00:00:00Z", "excessStrategy": {"currency": "ToY6BBtJA6rr5fV9", "method": "CURRENCY", "percentPerExp": 89}, "images": [{"as": "9jp9Mf9lmzfItQP0", "caption": "E1GWSWN2Hhwphz93", "height": 88, "imageUrl": "SEoI3qdcFM8gO2TR", "smallImageUrl": "8hSnpw4Fka4jjfb6", "width": 87}, {"as": "K3s9rJc8dJyKygN8", "caption": "oHthyvAb6icyCxOL", "height": 76, "imageUrl": "e781EWcLmAT6wTDC", "smallImageUrl": "iOa3pSU7iENlkdTj", "width": 12}, {"as": "4YhDAoqicnxCrZ5x", "caption": "zrcm1m87TW3xAZSI", "height": 28, "imageUrl": "OetBEgNM4xEmJDzO", "smallImageUrl": "Yo0YVWCidBBpxnyM", "width": 68}], "localizations": {"kQOcCJDoxaU1w0WD": {"description": "frv4jlpfQfAUYsq0", "title": "dIlRsIm6Yh3tHA5f"}, "dkEn7qgc9kHCOH5b": {"description": "UatB6bhoRyNsSifT", "title": "Efr2jcKy4dJB9kDe"}, "xJMU5iuSUe4ugc6K": {"description": "NuWVI0N55O91J7X5", "title": "n6TXxLixEaPimSsE"}}, "name": "XNuKVpWgrSolzEFH", "start": "1999-04-21T00:00:00Z", "tierItemId": "P1JIkAvBkP1eCpE0"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'iaBQUGOQNNkZfuy2' \
    --body '{"end": "1983-07-20T00:00:00Z", "name": "vOVS5FhZ9F5kVjjx", "start": "1978-11-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '7vdrJ6rDlLGWx3HQ' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Sz2Huf9uMlyyDovL' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'SBYpqW4ImKqgVzvh' \
    --body '{"autoEnroll": false, "code": "paMGon1zfbzfmOwk", "displayOrder": 42, "images": [{"as": "vPWzN2iAAZeyqAyL", "caption": "kRJeWiZydPZyTI33", "height": 84, "imageUrl": "yKDLSIgxIjEAVorK", "smallImageUrl": "JsveBTlpGF4efyE2", "width": 67}, {"as": "HWY4JcybpEjxajFC", "caption": "zYzp4d4y8kg2MkHd", "height": 9, "imageUrl": "lWcJvR5YO53tEqar", "smallImageUrl": "8frakhrcunnAgPlX", "width": 15}, {"as": "0STKvOEmsTBsdp6P", "caption": "spVaEdDVUh8aTrzz", "height": 5, "imageUrl": "DBTCrQBwhcai9mct", "smallImageUrl": "ehppcjy1NOYvt7fS", "width": 76}], "localizations": {"q225CTlYOQEksJhn": {"description": "ZP9z4TTAaip0A7EK", "title": "y0uMJDYHSvE8wgfh"}, "8AcklRiz7hXGb9m2": {"description": "jiEoDkOJ6xAirMeq", "title": "hfcFsMoxRscmRfrp"}, "07YxPDroM1DmMvfO": {"description": "y8ryDGmKKvEoTj0s", "title": "A22XMrx2YCJe2KSy"}}, "passItemId": "s01fed1kZZjcAzs4"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '8UcJ8hSypNXhZUVb' \
    --namespace $AB_NAMESPACE \
    --seasonId 'oWd6Pm36D5egoUlJ' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'IMgz5T7EfVJRq349' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PXggBWUshkoBBdtx' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'kX1irEJzmPpNy4jU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ncmRmoSPjGUDgx7r' \
    --body '{"autoEnroll": true, "displayOrder": 62, "images": [{"as": "OnUXpzHyDvZlgwmG", "caption": "Bf7f9YNEqZ5SJ2eo", "height": 17, "imageUrl": "5MbAkSHzKiKGYgc7", "smallImageUrl": "1VCMUR0Yh8dJTK6X", "width": 43}, {"as": "MDibtsi4nER8mTjC", "caption": "umTFCBuvXoZnkT0E", "height": 58, "imageUrl": "1blpqYArM13RhGP8", "smallImageUrl": "ZHEeyPfcZNvzl8nU", "width": 91}, {"as": "KhDyO8oLaOItSO85", "caption": "bfJHUJAbWrBxNt3F", "height": 18, "imageUrl": "JsMO3AgL1fAxzifF", "smallImageUrl": "9KJyCdaQtfcVJDjL", "width": 7}], "localizations": {"i5t9r7621bZ6dbJH": {"description": "LaDaiHDVhnRvugqO", "title": "8CtdZz4IZe5Ydq0j"}, "w9Q2VcACnRYUfzCi": {"description": "YxsQ3PPbAXxUPdFN", "title": "qa1zxh2T8NeqbkGG"}, "5SxizwksQefI9jNq": {"description": "5r2JV9o8rPtER6tb", "title": "W16zgCPt5kENJTar"}}, "passItemId": "d94uzjCCkM2FSwre"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WwZDXKXKyiXivKEV' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'no1EfxJHhnPV8YMX' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'AKpll6iwTeJPsr3f' \
    --q 'Lu1HeCEoOuDuhGFb' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'W6UOHv8wCq3DtilP' \
    --body '{"code": "b2I5GKCstTmmHi7h", "currency": {"currencyCode": "hKE7QtahcfvTUAFu", "namespace": "qnhem11TvzcpDWSO"}, "image": {"as": "6oC0YgjjMswpdHix", "caption": "i5MRaDY4OyCiAW7r", "height": 94, "imageUrl": "RGyrWOJyJqhMrKum", "smallImageUrl": "MJGZAFT5vAetSBIx", "width": 85}, "itemId": "LGuNV2Z2HrC745dP", "quantity": 1, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '2yPL1AymmhvpvRhu' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QbhElDfxhBVGkN63' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'XeACzjkQH0LvCVtf' \
    --namespace $AB_NAMESPACE \
    --seasonId '9jKuAF4huDUTLen7' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'vSDPt7VueawrXg9Q' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BGdNJEPdpQ4F6VR2' \
    --body '{"currency": {"currencyCode": "HtGbWfzrzIjEEQOT", "namespace": "QVEsiCGTxXdVCDC3"}, "image": {"as": "oDgpYUIQGULkmkgf", "caption": "u2ym0a7VVnCajDsx", "height": 23, "imageUrl": "rZX6US5u9iYWvXtG", "smallImageUrl": "jnIl9PpSgwppLjVR", "width": 39}, "itemId": "Jp20IfaicFCWLeN7", "nullFields": ["LytmfhMFsMhv20dc", "k3HyWlMyFGKmVtgM", "Un1qgectVkPen5dv"], "quantity": 1, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'cmZNuYsHCMjCLT94' \
    --limit '34' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '23hh6Wba3ETvevRY' \
    --body '{"index": 4, "quantity": 76, "tier": {"requiredExp": 19, "rewards": {"UxR1AacxBluNQZwj": ["tSKkfOhxrl44gQ24", "4kPaSgsvNiDdfDHV", "SCpvWKfeFy8HlU3q"], "RGVQaA36tdfUvtcP": ["ljOKcTmrOEEmpAxn", "La6ecHeU1FtIiSAc", "Qb6DmDkTBZCsve39"], "4aVaGoAfdJJuFYC2": ["ndfpl6nKeh5ukdFi", "f8KAOSfD431quijQ", "TA6bVp7vbrXaSlrX"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '3nPwNEOYEjW4yXV6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kewNZlb9uxVoxz7q' \
    --body '{"requiredExp": 0, "rewards": {"9i1BxXUgrizQHcJS": ["vsxboGG3j2lRvkCh", "GLgyetKEhoekPDgp", "7NQfkOYpeCrTXuXa"], "FUiG9SBf26HTRwGc": ["9GOg9ipMHFxmhAVB", "KxGBrIWE0NnTT6rq", "ePksI1E3MfuYymzE"], "VDLimp5Vn7Zj6X76": ["xhOGURjwCKNX9uOx", "AiB9Q4VuIP65cpxg", "oZp87aNmCAjRxh3N"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'iXVshsAy6pKwvLJt' \
    --namespace $AB_NAMESPACE \
    --seasonId '48cbhbhD8hCR1Xqa' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'Cre9mFvSVR6JaC3x' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vHNf2m7zxfY8DK4q' \
    --body '{"newIndex": 33}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lB2fpjkSHIMrp4nU' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'SWOogw6xxz4ctUbK' \
    --limit '49' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '10CCiFLtJsYq1xuO' \
    --body '{"exp": 11, "source": "SWEAT", "tags": ["SM0hziH0YQpjnYTK", "OeepWnxUCrp0WmMq", "XcHbxuldhqVhNpoI"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '8N3hrbMgccMPorZJ' \
    --body '{"passCode": "Hdg6u3Apuqh5gB9W", "passItemId": "ZfxB9Hykox92u1mi"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'eEHR3dgbFgiR6Dx4' \
    --passCodes '["bJ63xq1cvYfnrSP2", "ibp8xFHc1l9s96sN", "y3WyNzfvLEDSyq6P"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'GJ3jtHhlBnVODjwy' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'jJeipgvsg7FAnSwa' \
    --body '{"passItemId": "t2JR5l8XzCCfo68r", "tierItemCount": 100, "tierItemId": "Oe3u9beAlgVqAC0g"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 't3ASrtfWFJCn1vfX' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'D2IPnKZqJAkBuLKc' \
    --body '{"count": 93, "source": "PAID_FOR", "tags": ["I93wIQ8PFZi6kEVV", "wElVKqYW3JlxiXGj", "YLFafqOj1lJwLUiL"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'rIMdOCbm3FIwouRl' \
    --from '1p9ObylsfehXJl3d' \
    --limit '77' \
    --offset '11' \
    --seasonId 'tZbr2AiiN1AoP5Nj' \
    --source 'SWEAT' \
    --tags '["c3ah0fCsFiwcvqlT", "DeTGAMA2lYsWK1Fn", "ZCPQRP63377i1DOR"]' \
    --to 'UdFZX8fbRIv2mdmV' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'DsziZRlC2DtyhWNq' \
    --seasonId 'pH8LQCC8rJR5WpJ5' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bM9emen4JdtrEjC1' \
    --userId 'HkVgN5mjsb2BNo7h' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'fKhQHuuJzKjub5r4' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'HH5zNFdM1gvSEux1' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'teKm4iAi6S545ucG' \
    --body '{"passCode": "APK44pRXH1QCQulX", "rewardCode": "LdFeA978LfET4qzu", "tierIndex": 98}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '8sQmhZ4biA2BOxaZ' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'trfElD5s1ZZKzDCh' \
    --userId 'xoOxO8Ebfj0bjaRE' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE