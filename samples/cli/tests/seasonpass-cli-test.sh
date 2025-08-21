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
    --limit '91' \
    --offset '23' \
    --status '["DRAFT", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "taUM2OPy", "defaultRequiredExp": 86, "draftStoreId": "n5TPhVTV", "end": "1971-01-21T00:00:00Z", "excessStrategy": {"currency": "KEq766ye", "method": "CURRENCY", "percentPerExp": 82}, "images": [{"as": "dTKVOL0n", "caption": "78RQyhsP", "height": 66, "imageUrl": "KVKhISYp", "smallImageUrl": "IhuGUEpS", "width": 22}, {"as": "ml6rklhv", "caption": "ecNLNNDA", "height": 18, "imageUrl": "3bWZlkXj", "smallImageUrl": "YhZaY9R6", "width": 78}, {"as": "2iN43Uhl", "caption": "OJpTtECI", "height": 81, "imageUrl": "hvb75YxH", "smallImageUrl": "5ffpg0y6", "width": 23}], "localizations": {"KXS6VWDO": {"description": "yV5xTnGD", "title": "KtJdXMwS"}, "LjWdn7x2": {"description": "UdBPVWnx", "title": "hIOeL5kZ"}, "PXC4KhaU": {"description": "tJyR7wlO", "title": "1skxhpdC"}}, "name": "1HdiEmnB", "start": "1991-08-20T00:00:00Z", "tierItemId": "eR6tch6n"}' \
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
    --body '{"userIds": ["2ds9GmML", "m4MnZM0Y", "2fUE5FU7"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'F28wcN1C' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zekH2QG8' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8FLPtAuR' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bD8yPRRL' \
    --body '{"autoClaim": false, "defaultLanguage": "1SaNXTsf", "defaultRequiredExp": 10, "draftStoreId": "u55Q45Z4", "end": "1981-12-14T00:00:00Z", "excessStrategy": {"currency": "xc5ozXZC", "method": "CURRENCY", "percentPerExp": 37}, "images": [{"as": "0ehBwIbH", "caption": "Hoo1csj8", "height": 67, "imageUrl": "zIide7TQ", "smallImageUrl": "sBYlWyfj", "width": 30}, {"as": "1yxF7PBV", "caption": "JoQENp8i", "height": 46, "imageUrl": "6H5hkExn", "smallImageUrl": "v2pMb2Rx", "width": 86}, {"as": "LT3WOBHI", "caption": "GD086Vhm", "height": 79, "imageUrl": "XuEUP2rB", "smallImageUrl": "VbIUnsXS", "width": 4}], "localizations": {"02X4JfWt": {"description": "WEJNQddU", "title": "yVSbVAkd"}, "IlFf8dBL": {"description": "P9nKYSIt", "title": "dsTbQWCQ"}, "79GlJUES": {"description": "0LeZGZXr", "title": "W458su3W"}}, "name": "slt6hWka", "start": "1997-12-27T00:00:00Z", "tierItemId": "qvx3s2no"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '25C9fC7q' \
    --body '{"end": "1980-09-13T00:00:00Z", "name": "TiPZScUr", "start": "1990-09-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pjccUONA' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'zTJm2FBj' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'EO9UGtUW' \
    --body '{"autoEnroll": true, "code": "ghEduo8Z", "displayOrder": 23, "images": [{"as": "tbQD3aVn", "caption": "BML1ZyEC", "height": 22, "imageUrl": "Zm7pP1I8", "smallImageUrl": "SFP9KaRE", "width": 30}, {"as": "Ts4U1wXO", "caption": "gmV1RiXq", "height": 48, "imageUrl": "QHshvXAJ", "smallImageUrl": "jm9ujTVI", "width": 97}, {"as": "BjPZhyjM", "caption": "WuLhXxnJ", "height": 87, "imageUrl": "SfwdTBVc", "smallImageUrl": "NgOG7jFa", "width": 55}], "localizations": {"KKnht4Qo": {"description": "FkTDONlm", "title": "FyqbO6lx"}, "iBVb0Yix": {"description": "jAWdThwg", "title": "P1bTSgPf"}, "Mp2eQIES": {"description": "k4RoBZsa", "title": "g9vFmgn4"}}, "passItemId": "zFHPxwPg"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'e5IX0Lc2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PlH7wZDK' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'LoSLETl1' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HdUGpjQY' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'Os9nNffx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'LB3mOf5m' \
    --body '{"autoEnroll": false, "displayOrder": 26, "images": [{"as": "30u15GJa", "caption": "2LtSCSpr", "height": 8, "imageUrl": "jrvQbjBe", "smallImageUrl": "jD5JGHZP", "width": 81}, {"as": "RjlZyeTU", "caption": "P9O4X1Hh", "height": 65, "imageUrl": "O27XyGNp", "smallImageUrl": "GPUup8Q0", "width": 40}, {"as": "09Lemg7E", "caption": "MPSdt2R3", "height": 5, "imageUrl": "EpSHO7WC", "smallImageUrl": "4OZib6mD", "width": 60}], "localizations": {"LbTbWA8t": {"description": "m0VhnWNE", "title": "VXABahC7"}, "wiDpBhIi": {"description": "M0g7f8X5", "title": "Rt2ON4om"}, "A7p13M7y": {"description": "e0OC12hR", "title": "DWIzZxWZ"}}, "passItemId": "fvP9ceoE"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KGgroFZK' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WQgIlHKE' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'KBv8Cx9A' \
    --q 'zuGDHbQr' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Luy8SlUr' \
    --body '{"code": "hi4KOvQy", "currency": {"currencyCode": "dFGNwEFF", "namespace": "Is27mCoN"}, "image": {"as": "bs5Iw0C1", "caption": "VJ00MCQ1", "height": 30, "imageUrl": "Nfeqf9gF", "smallImageUrl": "U9DxvOpu", "width": 77}, "itemId": "5KbPae43", "quantity": 77, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'eZiovo7P' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XbycdeKC' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'LpkfzWsz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'OprMLtLm' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'cA4DgkHR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pCQBtLZG' \
    --body '{"currency": {"currencyCode": "gcy9KKKK", "namespace": "dbexlXul"}, "image": {"as": "IWzwcU38", "caption": "b5v0v6u5", "height": 25, "imageUrl": "FNNHpbwR", "smallImageUrl": "EaOsowzB", "width": 26}, "itemId": "klvc8b1g", "nullFields": ["r9GXIecW", "sBRH7Zmn", "tdDzP1dA"], "quantity": 57, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'G6EY7OUm' \
    --limit '89' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '85ancRWK' \
    --body '{"index": 77, "quantity": 13, "tier": {"requiredExp": 55, "rewards": {"24AqHr8X": ["jWGKmmyS", "Hhf1WvJj", "3YWx9VRm"], "G2BrkcnF": ["tTlXHU7J", "Tn6wtW2w", "Cg5ANQjI"], "2WE4NdZb": ["QKE0GkSN", "zobwX15r", "Tzky7Ywk"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'hphkNq0x' \
    --namespace $AB_NAMESPACE \
    --seasonId '08m8wGtv' \
    --body '{"requiredExp": 42, "rewards": {"2E7ojF2S": ["innJGuuF", "EyOnRIDJ", "3OmUCFad"], "ZMa39gWQ": ["CHv2ON8Y", "kgHWYuvw", "xuT2grow"], "Fk5M75jH": ["XlfgoGWj", "MNRfbNW1", "lADG2N2q"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'WDUdGQRa' \
    --namespace $AB_NAMESPACE \
    --seasonId 'BJIworvx' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'Rh6ujLl4' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QdiSzc0C' \
    --body '{"newIndex": 21}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gL5Qal82' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'uJHwFXIz' \
    --limit '0' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '7uXyswlH' \
    --body '{"exp": 37, "source": "SWEAT", "tags": ["SgMUkZhh", "KNPq3F9n", "u26I37Vv"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'MxFgDRk0' \
    --body '{"passCode": "sdwvWiw8", "passItemId": "NZMyJ5Mi"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'hh7cgROI' \
    --passCodes '["bgv1eOoc", "CCOcbD6G", "7A3Z882B"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '6rrQRJ3g' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'dH4jeihr' \
    --body '{"passItemId": "tmdh6J7d", "tierItemCount": 30, "tierItemId": "fZKzYBlB"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '8FZObKMx' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'TfydycEd' \
    --body '{"count": 35, "source": "PAID_FOR", "tags": ["KYpTRt5R", "oSU681T5", "BWm63Hg3"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '6CL4kMvN' \
    --from 'TjBv9o1o' \
    --limit '78' \
    --offset '64' \
    --seasonId 'M6kXquyl' \
    --source 'SWEAT' \
    --tags '["p2C1RjpD", "qZBjCZKg", "Nqv1PXw6"]' \
    --to 'qUhqxNun' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'FTlqmObe' \
    --seasonId 'pB2o8SiV' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DNNV1wRe' \
    --userId 'xabSgvE9' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'D34aqSCJ' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'SymeLmKx' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'eEgkNwQj' \
    --body '{"passCode": "uWU4vQFN", "rewardCode": "GMQQ0TW5", "tierIndex": 56}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'JIqZhHYS' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KZqko85k' \
    --userId 'XSSusEtq' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE