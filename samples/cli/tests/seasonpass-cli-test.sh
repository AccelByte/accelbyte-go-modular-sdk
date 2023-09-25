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
    --limit '90' \
    --offset '44' \
    --status '["DRAFT", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "Ff1xaOGd", "defaultRequiredExp": 3, "draftStoreId": "HISpo4q0", "end": "1975-02-20T00:00:00Z", "excessStrategy": {"currency": "iAZ033iu", "method": "CURRENCY", "percentPerExp": 17}, "images": [{"as": "OP7cvPXJ", "caption": "81hHkTmi", "height": 6, "imageUrl": "okeA5fs4", "smallImageUrl": "UF7SQwJO", "width": 86}, {"as": "fNRN6Qq3", "caption": "MptxVggO", "height": 83, "imageUrl": "bT6swJJM", "smallImageUrl": "ssGTIXCZ", "width": 94}, {"as": "PcDXUGba", "caption": "wyufibJk", "height": 13, "imageUrl": "ztiaofph", "smallImageUrl": "N6M0mDcM", "width": 97}], "localizations": {"2fzKtHsn": {"description": "8sV6lAu4", "title": "JwpCXaE3"}, "iiYxrJzR": {"description": "eSAMkUPN", "title": "4Q3zdfls"}, "7if6dvPe": {"description": "b0PL7Cas", "title": "9g0MwjSu"}}, "name": "qPyGQchb", "start": "1976-01-13T00:00:00Z", "tierItemId": "KUhRD1PI"}' \
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
    --body '{"userIds": ["VGSxNvXN", "064MU4Bq", "JZmRYoQe"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AKma6vmV' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'G1cBLlWh' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lnbAwC2A' \
    --body '{"autoClaim": true, "defaultLanguage": "sUybCdCY", "defaultRequiredExp": 91, "draftStoreId": "tblbcwAM", "end": "1972-06-19T00:00:00Z", "excessStrategy": {"currency": "H1gjRqr4", "method": "NONE", "percentPerExp": 40}, "images": [{"as": "jRqcwAx0", "caption": "nZULpyKA", "height": 56, "imageUrl": "h7SZmFTs", "smallImageUrl": "jmFz6YQO", "width": 66}, {"as": "P46H8bUc", "caption": "qM0bqNQi", "height": 42, "imageUrl": "HAGaPriN", "smallImageUrl": "JeyNqZcP", "width": 66}, {"as": "0ZzDLlp3", "caption": "5bf5Jp3A", "height": 60, "imageUrl": "eEeJSplV", "smallImageUrl": "F7Bxf0GM", "width": 96}], "localizations": {"LnlrEfVD": {"description": "L66IEmZu", "title": "VC5yhHQz"}, "37aqYhbe": {"description": "Ye7YQ6Kp", "title": "W1TCCIZc"}, "PHV81LOE": {"description": "o1EZmtjc", "title": "xm4lYFIO"}}, "name": "CDmblfsl", "start": "1975-05-01T00:00:00Z", "tierItemId": "oRN3QZOR"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MSea6ZL3' \
    --body '{"end": "1972-04-23T00:00:00Z", "name": "7JtnLhk9", "start": "1990-02-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ETyxUsuk' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'kVU1l671' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'uBNo5muk' \
    --body '{"autoEnroll": true, "code": "Pzahjome", "displayOrder": 1, "images": [{"as": "dAHoY4aM", "caption": "4EsDrWFl", "height": 42, "imageUrl": "gwM3ehBo", "smallImageUrl": "fhFaIdbj", "width": 54}, {"as": "hHWVAwYB", "caption": "r1RQlTSM", "height": 3, "imageUrl": "PL4Vu3pB", "smallImageUrl": "VUw269Jp", "width": 66}, {"as": "5sCS2YlH", "caption": "WeJgYJ8T", "height": 66, "imageUrl": "KjE7Gb30", "smallImageUrl": "tUrSE2Gd", "width": 20}], "localizations": {"20bBP7mJ": {"description": "Ao4cZyUK", "title": "04qwy2QA"}, "nSoO47S6": {"description": "FhhGDLCn", "title": "cpjCaVad"}, "NI4ExYVG": {"description": "8Pe7SNxx", "title": "Sqi42Noj"}}, "passItemId": "WQHrpCRe"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'Nsg7EL1j' \
    --namespace $AB_NAMESPACE \
    --seasonId '9WbCdy2C' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'QSJi0zDe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eeCnvik1' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'Q8nEdXyg' \
    --namespace $AB_NAMESPACE \
    --seasonId '74AqDG1d' \
    --body '{"autoEnroll": true, "displayOrder": 98, "images": [{"as": "e0bRbeYJ", "caption": "dI2W5rUl", "height": 65, "imageUrl": "wsXC9D8x", "smallImageUrl": "mVAVE3n5", "width": 86}, {"as": "NvlfXquT", "caption": "hfOn200O", "height": 93, "imageUrl": "tvJ2TkVH", "smallImageUrl": "368baQ3D", "width": 60}, {"as": "fcUGzZzX", "caption": "9k6RMYPY", "height": 8, "imageUrl": "9ZIVM4aK", "smallImageUrl": "VfjSZGz8", "width": 28}], "localizations": {"0tDJ3IWF": {"description": "FwkTrJWR", "title": "NVQRo5Q0"}, "tnycmg94": {"description": "PoTZwkhg", "title": "stEsDWHl"}, "Cu5gq9e1": {"description": "pajfFIwr", "title": "TG4BQKrN"}}, "passItemId": "89bfMB7Y"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uSMHAqDp' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WuzQ6yz4' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'z53RbQTt' \
    --q 'WeaRT5hc' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'OkXB5CrH' \
    --body '{"code": "zAJVFYcy", "currency": {"currencyCode": "zBmd2fzc", "namespace": "XVVBygwz"}, "image": {"as": "epd7MAhI", "caption": "tylJjq67", "height": 53, "imageUrl": "6bKyMxm6", "smallImageUrl": "jKD3forq", "width": 90}, "itemId": "Gjg6vkkk", "quantity": 56, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'Ozux9sXK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'J1CL574v' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'nOQqV0QF' \
    --namespace $AB_NAMESPACE \
    --seasonId '7PKVGx2j' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'mcrbOTjD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ggRPirPm' \
    --body '{"currency": {"currencyCode": "padTYmva", "namespace": "ypqxTcgG"}, "image": {"as": "z9eFkeQF", "caption": "ihcpTL5P", "height": 64, "imageUrl": "Gx68TKCO", "smallImageUrl": "YddmMXST", "width": 70}, "itemId": "afbIOqGL", "nullFields": ["yiGXr6WT", "GXIan4BP", "lP1qOGb5"], "quantity": 91, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'V4jcprJE' \
    --limit '4' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'Y2P3DBFB' \
    --body '{"index": 37, "quantity": 78, "tier": {"requiredExp": 11, "rewards": {"L7oN9drz": ["WvmJPW3C", "NeYN99cN", "rvf1N6RF"], "pFkDGaJO": ["GbGl6Srp", "69SBwvWi", "fWvUjcFf"], "gq5VVATS": ["RgkeBcGn", "5c7E7jvh", "cYPMtZJ2"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'o0U2OH0i' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LmS4fcVZ' \
    --body '{"requiredExp": 38, "rewards": {"JQBVFL7v": ["O3YxWvCs", "HnGe6kjX", "j27z7Q7H"], "iOw5aXHL": ["poKGSbaI", "JquzcTtt", "UsP64EMQ"], "V1grPXp7": ["Vo3472K6", "lJ2xUtOr", "FM09FoN6"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'WJMid4W5' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gEbGBRw6' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'ReGodaO0' \
    --namespace $AB_NAMESPACE \
    --seasonId '9corAK47' \
    --body '{"newIndex": 32}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bnqiAYZd' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Yjnn70IB' \
    --limit '46' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'Pf8IVwwc' \
    --body '{"exp": 85, "source": "PAID_FOR", "tags": ["ybUVgJdH", "FGhel1iW", "cvoJMrA4"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'UwtLYHjT' \
    --body '{"passCode": "4ubYBv8W", "passItemId": "sx1bbBjd"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'jVB2pXJl' \
    --passCodes '["wVexgGPN", "mwxJPgiM", "kzgGIRRe"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'N2KynKTc' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'NMfryx0U' \
    --body '{"passItemId": "IFhcnq3n", "tierItemCount": 31, "tierItemId": "0BA2Klb8"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'XeibzQn7' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '2JpSzHTZ' \
    --body '{"count": 68, "source": "PAID_FOR", "tags": ["TVZpPglt", "tavR10s0", "JAmGndf6"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'u7FH7OUR' \
    --from 'f8szNbfH' \
    --limit '56' \
    --offset '67' \
    --seasonId 'cFfCiDin' \
    --source 'PAID_FOR' \
    --tags '["QzsDPpDr", "YCGtOYmO", "c34oHv4k"]' \
    --to 'PdCoxOfL' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'NTkpOuL3' \
    --seasonId 'XKJwELl8' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'aSCHAqCf' \
    --userId 'Wdnr86Gn' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '95aQQPms' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'tiGflEHh' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'pPHt62JK' \
    --body '{"passCode": "PK78qdSr", "rewardCode": "d6lPT9k4", "tierIndex": 84}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'RaPe2pz5' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rlrx4Hwz' \
    --userId 'mRhvDXUC' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE