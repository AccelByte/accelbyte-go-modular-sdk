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
    --limit '72' \
    --offset '41' \
    --status '["DRAFT", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "htJafavg", "defaultRequiredExp": 14, "draftStoreId": "9OUYQrQA", "end": "1982-11-25T00:00:00Z", "excessStrategy": {"currency": "qymPzD1L", "method": "CURRENCY", "percentPerExp": 85}, "images": [{"as": "2Xilqybb", "caption": "h1Bf183z", "height": 95, "imageUrl": "rULFfeVT", "smallImageUrl": "0Vhr3oGR", "width": 63}, {"as": "9ACFhtzL", "caption": "mKHAQt6d", "height": 27, "imageUrl": "r4nzs3GY", "smallImageUrl": "mJn37X3s", "width": 19}, {"as": "3pwHCG69", "caption": "IWdWHB5H", "height": 92, "imageUrl": "izBVDKcj", "smallImageUrl": "x7HQmEza", "width": 80}], "localizations": {"7UnHwZOT": {"description": "jDJhzYid", "title": "G8qmNFO6"}, "no6osQyP": {"description": "4F3JLVGD", "title": "mPG2Zg9T"}, "WDpIbWRQ": {"description": "xhsymLlu", "title": "3b2nPuFQ"}}, "name": "nxmnBIGb", "start": "1979-12-01T00:00:00Z", "tierItemId": "rEmVkrxz"}' \
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
    --body '{"userIds": ["e3TveuHY", "fk7AANIB", "GLsmiJCm"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xO73BkHQ' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'EkNNYIyI' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5DWif76m' \
    --body '{"autoClaim": true, "defaultLanguage": "XwEyZwGT", "defaultRequiredExp": 44, "draftStoreId": "ZQyBCLbv", "end": "1987-11-07T00:00:00Z", "excessStrategy": {"currency": "ElC9RRzo", "method": "NONE", "percentPerExp": 59}, "images": [{"as": "LojeYCcv", "caption": "o5NPMrbV", "height": 53, "imageUrl": "uifDgHqU", "smallImageUrl": "ppiud9PW", "width": 95}, {"as": "HFPU1m1c", "caption": "oOhjXC6Y", "height": 12, "imageUrl": "OPu0OWHZ", "smallImageUrl": "3Yag90FB", "width": 88}, {"as": "E5nyHhdq", "caption": "lspldqLf", "height": 66, "imageUrl": "B1flJXJf", "smallImageUrl": "eT37FIBn", "width": 96}], "localizations": {"Cn4oR75a": {"description": "KG0qUeJn", "title": "g6Mh3XNq"}, "lsGVZ7D3": {"description": "ML8qhkPz", "title": "XN3J7dM2"}, "CP9ZgUs5": {"description": "uL14mtMN", "title": "AHUabHCk"}}, "name": "6YAcAnOI", "start": "1992-05-15T00:00:00Z", "tierItemId": "zlNAPOQ8"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0tzeJ9aX' \
    --body '{"end": "1974-07-18T00:00:00Z", "name": "ccxSSh6d", "start": "1992-03-31T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YCAG2Ddy' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'DfetJHqi' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'OcsDjxaK' \
    --body '{"autoEnroll": true, "code": "KJ4wRTZ5", "displayOrder": 60, "images": [{"as": "axlPjsnC", "caption": "0NBUO8xP", "height": 11, "imageUrl": "7wVu7JuL", "smallImageUrl": "H7hXCZhq", "width": 87}, {"as": "fxtQzjoK", "caption": "ugKQWW2C", "height": 34, "imageUrl": "5NUZBteu", "smallImageUrl": "AHItopGg", "width": 54}, {"as": "sc1JbNF3", "caption": "WPiic2GK", "height": 88, "imageUrl": "VkWku7PU", "smallImageUrl": "aAHKsdff", "width": 69}], "localizations": {"szQCO2Yz": {"description": "mQGLkkJJ", "title": "JxastU0d"}, "0esqPJky": {"description": "Yg6CUxEk", "title": "jiVWi8F2"}, "q642N3vL": {"description": "kbY0YSGe", "title": "8ntHJ6y5"}}, "passItemId": "WAbAsrea"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '1N66xi8z' \
    --namespace $AB_NAMESPACE \
    --seasonId '5xTpsCW3' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'mv5ITh7G' \
    --namespace $AB_NAMESPACE \
    --seasonId '41cRBmaI' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'kWPYQBiB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Rk1db6d8' \
    --body '{"autoEnroll": true, "displayOrder": 90, "images": [{"as": "gk0us0PY", "caption": "hVyr2yQm", "height": 81, "imageUrl": "EUG9Ja2A", "smallImageUrl": "4pNy5ZbK", "width": 88}, {"as": "XWalyu24", "caption": "F0KHn3ZQ", "height": 45, "imageUrl": "3f0wDgNa", "smallImageUrl": "kHyGtzSW", "width": 57}, {"as": "03AAM8a6", "caption": "3JnphfON", "height": 3, "imageUrl": "yda9KfFg", "smallImageUrl": "3bDdMFTA", "width": 55}], "localizations": {"XaCxHlvj": {"description": "EXXGfQ8J", "title": "SzerNFCb"}, "BTvkiNgB": {"description": "3UlZdUvc", "title": "0OMgQmSB"}, "QTwTC1Vc": {"description": "327Imrjn", "title": "0Ja8iMvT"}}, "passItemId": "yYRUSlln"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'f2EjTy6J' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DbQfG9o8' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '6qrOq8UK' \
    --q 'q4baknJR' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'nCVdBNiK' \
    --body '{"code": "XSRw3z5W", "currency": {"currencyCode": "lkW6SoYm", "namespace": "DvxWVtQU"}, "image": {"as": "QHGpW087", "caption": "UdtMH1A8", "height": 80, "imageUrl": "4CAB6MSf", "smallImageUrl": "kWVZWMEs", "width": 88}, "itemId": "PjvTyz0n", "quantity": 29, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'FR1X8rQM' \
    --namespace $AB_NAMESPACE \
    --seasonId '6RZVbiEk' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '7CkJJTE3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'FZreOyqI' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '68V8ei7w' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Tx7H6a87' \
    --body '{"currency": {"currencyCode": "1HpAfjjj", "namespace": "tabOqX94"}, "image": {"as": "OQsgPHGS", "caption": "rGo8YaUk", "height": 9, "imageUrl": "Dn41NiRG", "smallImageUrl": "9eqF4LdL", "width": 81}, "itemId": "cy0qJ3V3", "nullFields": ["p31TN3Hn", "rPl7HzX9", "GLiru6BD"], "quantity": 32, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'LzYTRmcq' \
    --limit '73' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'npgD7Jjj' \
    --body '{"index": 99, "quantity": 97, "tier": {"requiredExp": 52, "rewards": {"LTmAOwgD": ["KOvnTS4z", "IhaMTEA5", "cUpnaRf4"], "qqqzFxvP": ["9JX3V7HM", "fgYRZF4n", "6tXVB0yK"], "lPKlo93u": ["wVUGYLrr", "zpkQ1Pgc", "EGzGVJzw"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'Unrhouq8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'YBx4cnHl' \
    --body '{"requiredExp": 7, "rewards": {"V9V2FZtX": ["RhA03Vsq", "ckirEnCU", "CDYzbmvS"], "9fZWofZ0": ["21X7Lnd1", "vPHNOIbH", "FKYyEIkV"], "XvsASbs7": ["a0iWR3Pk", "5LvLC8RB", "CWUvkRC9"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 't3uTR5Lf' \
    --namespace $AB_NAMESPACE \
    --seasonId 'zhvnvu4w' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'kR16Gn8e' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IC6v4N1F' \
    --body '{"newIndex": 89}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZNbfTD4g' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId '7WIZMImP' \
    --limit '83' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'DFW43TUt' \
    --body '{"exp": 75, "source": "SWEAT", "tags": ["PR0bxMWn", "VDd9qB7E", "pcL2ARlL"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'hZC5pYfm' \
    --body '{"passCode": "YMbJP5Gb", "passItemId": "jwMmIhaY"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'csbGbjF2' \
    --passCodes '["7Aln56m4", "iwyPslcM", "tap1qFMF"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'UVIbmfWI' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'Ar4xStc0' \
    --body '{"passItemId": "qZLMuEli", "tierItemCount": 90, "tierItemId": "LTE3sARX"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'driIOw8S' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'NbELOGbG' \
    --body '{"count": 10, "source": "PAID_FOR", "tags": ["3Rqfospm", "3vVaFWyt", "KsuwSxpG"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'amO99yqX' \
    --from 'aWU3mJaq' \
    --limit '91' \
    --offset '56' \
    --seasonId 'DOUQDX3O' \
    --source 'PAID_FOR' \
    --tags '["WcsoQ4ID", "i3M4gNyF", "bxbMCHoh"]' \
    --to 'QOmjbE0c' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'gP5IvHkN' \
    --seasonId 'JUO4lmGe' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4JQlnYAZ' \
    --userId 'uvkYa65L' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'CZx77Tzu' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'XUALe6QZ' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'OlXrh9PX' \
    --body '{"passCode": "4WuxrvLg", "rewardCode": "4nAQdbIJ", "tierIndex": 94}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'yeX8bPgF' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6QgSuurE' \
    --userId '9XDs1I7H' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE