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
    --limit '44' \
    --offset '86' \
    --status '["RETIRED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "BEFXY2c4", "defaultRequiredExp": 33, "draftStoreId": "F4Sadm9w", "end": "1973-05-29T00:00:00Z", "excessStrategy": {"currency": "YZNuzYts", "method": "NONE", "percentPerExp": 74}, "images": [{"as": "JM0g0r8k", "caption": "a8G0GSyK", "height": 72, "imageUrl": "wWY8a25C", "smallImageUrl": "baRxUmSP", "width": 94}, {"as": "HTRhVQsu", "caption": "o2lmNwhd", "height": 10, "imageUrl": "aSswfl3t", "smallImageUrl": "rUiemd4x", "width": 0}, {"as": "cnhdKk1o", "caption": "F8wGfdxb", "height": 85, "imageUrl": "aDmic7US", "smallImageUrl": "91ZDeslL", "width": 90}], "localizations": {"Aw3LhSeF": {"description": "i1sjNVFr", "title": "PbxMvubV"}, "LHIP1UJn": {"description": "GCA8B7Ta", "title": "QucRFMHJ"}, "BxMhGTx8": {"description": "D2v2b8Ef", "title": "HYKYWN8b"}}, "name": "mejAJOdG", "start": "1981-01-13T00:00:00Z", "tierItemId": "XBL04SGX"}' \
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
    --body '{"userIds": ["HqzLBvuB", "botPicQ4", "AeeHn1Wf"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'ejkCE2Zt' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DPB1O5PO' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'SQjxh1CY' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'u2yP6Av9' \
    --body '{"autoClaim": true, "defaultLanguage": "pL1kaZBb", "defaultRequiredExp": 55, "draftStoreId": "qu2kJdiS", "end": "1976-03-27T00:00:00Z", "excessStrategy": {"currency": "0qeSJCRv", "method": "NONE", "percentPerExp": 69}, "images": [{"as": "3Ztg5xuq", "caption": "yhC8BKTA", "height": 7, "imageUrl": "a7JgGlao", "smallImageUrl": "VzD0HmDR", "width": 48}, {"as": "xSFc8u97", "caption": "5Sy3a8LA", "height": 68, "imageUrl": "NKiu1KYj", "smallImageUrl": "YFCHnbqh", "width": 26}, {"as": "PryvJRnY", "caption": "q3xzic44", "height": 72, "imageUrl": "zU5elcMj", "smallImageUrl": "LDqealKN", "width": 5}], "localizations": {"rikwXDzv": {"description": "JzBm9XIK", "title": "ywcJxl6i"}, "eAlpTTyi": {"description": "E0FsFJT3", "title": "ANJ1wWij"}, "S6HP7ITQ": {"description": "XTEXNVaO", "title": "hEUu6zYM"}}, "name": "TpcMPTPO", "start": "1985-04-12T00:00:00Z", "tierItemId": "XclkCq7Y"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lI9DpPrH' \
    --body '{"end": "1991-07-29T00:00:00Z", "name": "4JVh3gmz", "start": "1978-07-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'UrL9AmVq' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'SvMsXv6d' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'Gd13kG2k' \
    --body '{"autoEnroll": true, "code": "G9MjGBHI", "displayOrder": 95, "images": [{"as": "oCRguQO0", "caption": "dj9yzOIH", "height": 73, "imageUrl": "x6UpjPgy", "smallImageUrl": "f55zur8t", "width": 33}, {"as": "ESrDlCQN", "caption": "93Ld8zj6", "height": 33, "imageUrl": "cfV4h1XT", "smallImageUrl": "xiATG6ZO", "width": 69}, {"as": "B143Ts47", "caption": "JSfhG2VD", "height": 87, "imageUrl": "nmwoHT5P", "smallImageUrl": "NPIioAm6", "width": 36}], "localizations": {"LuSUiAkl": {"description": "rCgqgWVi", "title": "KLJpnvPw"}, "KPQHoLd4": {"description": "LVYFzz9w", "title": "SAngbcwc"}, "DCm5a7fj": {"description": "CZ9f1KnM", "title": "PBuz2tHT"}}, "passItemId": "jxwLGV0Q"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'bslmz87z' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IbU0JJ9D' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '14uklXZw' \
    --namespace $AB_NAMESPACE \
    --seasonId 'QtaFF4s0' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'nGF8JOHI' \
    --namespace $AB_NAMESPACE \
    --seasonId 'De7y3pGU' \
    --body '{"autoEnroll": false, "displayOrder": 13, "images": [{"as": "drJGLI9T", "caption": "KFKzyF6n", "height": 27, "imageUrl": "JgEAYdYl", "smallImageUrl": "3w0zitvQ", "width": 39}, {"as": "mvKueD40", "caption": "5WL1ulu4", "height": 98, "imageUrl": "q3cxk2Mc", "smallImageUrl": "Qj9Rrf5N", "width": 4}, {"as": "I8kwYmti", "caption": "farbjkZt", "height": 27, "imageUrl": "tcnCuRq1", "smallImageUrl": "MzTxqiYp", "width": 65}], "localizations": {"DGbE42Z0": {"description": "LK3tZXyU", "title": "Pos7aMAF"}, "5UjzklIZ": {"description": "GSzjpv79", "title": "VXciN3Ec"}, "jg4mOzKD": {"description": "ywdakzf1", "title": "3NQCrZ7Y"}}, "passItemId": "UCqyRAEF"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'X3NVaDPX' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'VARLymYJ' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'SiCu0Zfr' \
    --q 'MKHCikKT' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'XEc09Agn' \
    --body '{"code": "Aai6p2Oi", "currency": {"currencyCode": "lZE3ULq8", "namespace": "Pm1fjzKG"}, "image": {"as": "pAMMuhTO", "caption": "7hV3tphe", "height": 47, "imageUrl": "cv3QRzOh", "smallImageUrl": "t7eBbFYy", "width": 98}, "itemId": "AkRuPzXS", "quantity": 91, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'M6i3FxIK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NpiZO7lj' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'Kj9EnIBB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'r5SpdpUL' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'rNRPbhIK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KDlEUB5g' \
    --body '{"currency": {"currencyCode": "cL9osUqw", "namespace": "vrDI2uVp"}, "image": {"as": "S4130yCD", "caption": "gC2gBq4o", "height": 40, "imageUrl": "YkbTQVpk", "smallImageUrl": "G3KtcLOc", "width": 72}, "itemId": "qKyNNVpx", "nullFields": ["tDS2Ynvr", "fCWOr2Cv", "tFfph7or"], "quantity": 73, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'z3n1XxHa' \
    --limit '84' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'Hbkb5UBl' \
    --body '{"index": 86, "quantity": 95, "tier": {"requiredExp": 92, "rewards": {"IoEUp6vZ": ["qd3BIIEB", "NqSieFjx", "ksd7IBLO"], "LfVbjwWO": ["3kX0jkbT", "scju8St5", "Jfk5mb5A"], "mdqUzG72": ["7LZUQOkQ", "Mqb6o5GM", "Xp5yLRz4"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'XcHfjQXU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PBdKhQFl' \
    --body '{"requiredExp": 92, "rewards": {"xK0OmJrZ": ["VxBKPnyv", "HWce36lI", "muhBFKgt"], "qAktTrJv": ["uLTKmh5r", "brReLbs7", "QfI9jDMS"], "ugJGEI7k": ["He8Z0lKO", "REDTGFQV", "4isaneIc"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'APRbReXL' \
    --namespace $AB_NAMESPACE \
    --seasonId '1uarc9TX' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'NzlYfEqo' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wWvmfwyT' \
    --body '{"newIndex": 34}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0LBnAQHL' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'T5n21fLV' \
    --limit '77' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'cKDcSqXQ' \
    --body '{"exp": 7, "source": "SWEAT", "tags": ["NBwjuljX", "Bcpy7ImW", "9d5XYcTv"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'EgKQcHI8' \
    --body '{"passCode": "dcEWpelV", "passItemId": "eeTHz1EU"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'Wf5qAYbP' \
    --passCodes '["GOxpAn2t", "OOYEW7dX", "fU6VZHpO"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'ZEfRcH2G' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'k6oZIWr4' \
    --body '{"passItemId": "4HU3QQrX", "tierItemCount": 1, "tierItemId": "AlbeOODw"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'DUygJOGo' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'Xl19V7hp' \
    --body '{"count": 58, "source": "PAID_FOR", "tags": ["6ESG4Vkn", "cvbx3slg", "Wppk7Bl0"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'f9TbgmTa' \
    --from 'dXr77uSb' \
    --limit '32' \
    --offset '46' \
    --seasonId 'e2hCXXGf' \
    --source 'PAID_FOR' \
    --tags '["hKgGWYqz", "UWSPqLHZ", "VGVbUIwm"]' \
    --to 'jANzJwuN' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '8t88nEeC' \
    --seasonId 'qW4cdWMb' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IfEhyhW7' \
    --userId 'H1rAVjMy' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'OwW33tDt' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'fQAjM03m' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'pDraLz8S' \
    --body '{"passCode": "t4AqxGHI", "rewardCode": "acEKHldz", "tierIndex": 97}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '9FooVic8' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2vwKUX10' \
    --userId 'i16YLhEZ' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE