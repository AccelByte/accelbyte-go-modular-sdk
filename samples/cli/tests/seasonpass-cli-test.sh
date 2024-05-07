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
    --limit '91' \
    --offset '68' \
    --status '["DRAFT", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "dNGBKaod", "defaultRequiredExp": 76, "draftStoreId": "1tVKLSwD", "end": "1990-06-12T00:00:00Z", "excessStrategy": {"currency": "Yv7ydwuj", "method": "CURRENCY", "percentPerExp": 78}, "images": [{"as": "CH5zpClx", "caption": "N5ePo4k1", "height": 86, "imageUrl": "srcVhQaI", "smallImageUrl": "1lVqNSgf", "width": 68}, {"as": "YEj1ChNP", "caption": "Qny18jnG", "height": 89, "imageUrl": "KY5pdd9f", "smallImageUrl": "6nYF3mZP", "width": 56}, {"as": "H0NhXnGm", "caption": "2u9axRDK", "height": 70, "imageUrl": "prlgAbJ9", "smallImageUrl": "5JE7XEie", "width": 10}], "localizations": {"ZqMQV6iz": {"description": "r4EexNSk", "title": "7nunMqpe"}, "XyJlwVKX": {"description": "0GjEZ1Mc", "title": "0l8GwKgi"}, "XpMoPmym": {"description": "pAsdYMTH", "title": "de37HpPp"}}, "name": "Be7WV6NR", "start": "1998-05-16T00:00:00Z", "tierItemId": "8MtbLTVG"}' \
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
    --body '{"userIds": ["ZF5KDdo4", "LvHB0XB2", "rw7i0uAE"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'oBFnJAdZ' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2W5w9hAR' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OxC69bgu' \
    --body '{"autoClaim": false, "defaultLanguage": "XzD1Lx0x", "defaultRequiredExp": 99, "draftStoreId": "ijYVFdDN", "end": "1972-07-11T00:00:00Z", "excessStrategy": {"currency": "4XKYrAgO", "method": "CURRENCY", "percentPerExp": 3}, "images": [{"as": "oY5yJPrE", "caption": "4LbjOqah", "height": 55, "imageUrl": "thEHOOC3", "smallImageUrl": "Cnodf5RO", "width": 28}, {"as": "8JoQIx1T", "caption": "BPIOuvJU", "height": 15, "imageUrl": "sLBvpCmF", "smallImageUrl": "ubJAMF25", "width": 69}, {"as": "mBSDFIPY", "caption": "K38X8CzX", "height": 82, "imageUrl": "amZtY1gj", "smallImageUrl": "EKuDTE97", "width": 72}], "localizations": {"Egc1Owrz": {"description": "m8NirFTb", "title": "AOLrLBkZ"}, "rSk8gA7w": {"description": "JRmcTbCx", "title": "dEr9sDCk"}, "tSUH51lW": {"description": "t90W53Da", "title": "aPf7vytS"}}, "name": "osK5ZtQQ", "start": "1997-01-22T00:00:00Z", "tierItemId": "EhWJ4LXd"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 't98TlghM' \
    --body '{"end": "1983-03-22T00:00:00Z", "name": "Fk9iu0Mu", "start": "1998-08-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JEs1OfpL' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '94HQPLIY' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'GIChXC5b' \
    --body '{"autoEnroll": true, "code": "kdPkLnv5", "displayOrder": 7, "images": [{"as": "5Qrwt8pX", "caption": "0rVGZqx3", "height": 82, "imageUrl": "jTQIzLcL", "smallImageUrl": "UJGuenZq", "width": 41}, {"as": "6d0dQvNP", "caption": "CPZXrQqC", "height": 67, "imageUrl": "oUWBhywc", "smallImageUrl": "T8cUw5hh", "width": 77}, {"as": "MoNBwrPk", "caption": "biyh5vP0", "height": 78, "imageUrl": "JR6QrMHM", "smallImageUrl": "FvmLf39W", "width": 18}], "localizations": {"84I86PBW": {"description": "4wI7gzPy", "title": "1WMHQuRe"}, "68RtxpoD": {"description": "bXrBGEiV", "title": "PycMya9N"}, "1LFC7pHV": {"description": "K005vV3E", "title": "xQlAnQDd"}}, "passItemId": "9AVrDWyH"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '5Mohsrzn' \
    --namespace $AB_NAMESPACE \
    --seasonId '4lc0tNwi' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'U1XnacVX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'l5hZNEzt' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'dglnyc7Z' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TURgEsaH' \
    --body '{"autoEnroll": true, "displayOrder": 43, "images": [{"as": "QknBHb1b", "caption": "U0cjS06B", "height": 86, "imageUrl": "Kas9FxJH", "smallImageUrl": "VYB3Ly7w", "width": 82}, {"as": "WkvODUII", "caption": "H3QPARuZ", "height": 0, "imageUrl": "5T7CyckI", "smallImageUrl": "Tsz7bem9", "width": 49}, {"as": "tqsLv9i3", "caption": "FnpRb6Aj", "height": 17, "imageUrl": "UENyQ4LE", "smallImageUrl": "5qROYE3r", "width": 64}], "localizations": {"kbxeNWLH": {"description": "RBFu2OAm", "title": "ztqEYiKb"}, "Wq0pnyQz": {"description": "PvBi5oTy", "title": "pkKMxoxg"}, "EO6dTfmL": {"description": "ITK0mmux", "title": "RZ6IM5Yi"}}, "passItemId": "w9KrumP6"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gs4rrcBq' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qlM6rxIs' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'w9oWF6oy' \
    --q 'xfnLDQCG' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'cq4mQyRS' \
    --body '{"code": "9XablgfM", "currency": {"currencyCode": "aMVu05VD", "namespace": "8K2RewLj"}, "image": {"as": "1mFlPxEX", "caption": "1GeKxm2y", "height": 3, "imageUrl": "TE3cBRTv", "smallImageUrl": "LYZZlZxP", "width": 97}, "itemId": "44x8wS5n", "quantity": 76, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'EY8zwibi' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ltarG4Wj' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'P5or5QT4' \
    --namespace $AB_NAMESPACE \
    --seasonId 'hKZeudCT' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'UHgTmEXx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZSxo5Gs9' \
    --body '{"currency": {"currencyCode": "8s1rC91W", "namespace": "WLA682DF"}, "image": {"as": "WCon6MH3", "caption": "ICfpz7dg", "height": 56, "imageUrl": "i3n9heEC", "smallImageUrl": "MtUcA50o", "width": 42}, "itemId": "URasdfuQ", "nullFields": ["JtMCkphU", "qSa4MgOB", "NsxLTnuS"], "quantity": 46, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'FDAAXKzv' \
    --limit '18' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '4hMjuMab' \
    --body '{"index": 10, "quantity": 97, "tier": {"requiredExp": 43, "rewards": {"jaxfBiap": ["Tl5qFD1k", "KriVcban", "EeR6aV2m"], "0ZYfQW0w": ["ynzi9G3e", "qk7V6E7M", "gBh9zQet"], "l8mitBKJ": ["robUDr7y", "addeJgqG", "y71Qkhqc"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'CfHw7uYU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NxvmZd2s' \
    --body '{"requiredExp": 17, "rewards": {"8TIIBzND": ["qywHqanh", "qmDTdrj6", "BthFusD4"], "hQj02VoA": ["MyixQyBd", "qM6WODiM", "SZgeyJPy"], "sUoHi1IG": ["dkdExgrt", "Gstc4rEF", "uUgFJGG3"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'IoGEoujm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'msxqfgJC' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'ududwfSB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HL4kTwXI' \
    --body '{"newIndex": 95}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mNXXvuah' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId '38qUbYAo' \
    --limit '1' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'D6vowfdC' \
    --body '{"exp": 10, "source": "PAID_FOR", "tags": ["LcrVqzFA", "DgsmSeDE", "lG63YRwS"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'AoCQOM4m' \
    --body '{"passCode": "WQZxBzdf", "passItemId": "h2FtAftB"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'Zs6DZslj' \
    --passCodes '["dUR1OpWq", "R0lEfh3a", "CE1luMXx"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '4ZZJ1C92' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '1e0e1w1s' \
    --body '{"passItemId": "hksQ0pmW", "tierItemCount": 67, "tierItemId": "W9a0aaph"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'EYjfZwpR' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'WDLR2Gu4' \
    --body '{"count": 16, "source": "PAID_FOR", "tags": ["GgZftJR0", "eKX6Upni", "cIjx88xn"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'vi4Y8z7r' \
    --from '8LGtW4k1' \
    --limit '43' \
    --offset '86' \
    --seasonId 'g0FRBd10' \
    --source 'SWEAT' \
    --tags '["Y2wvXqAp", "x5NNdYU2", "M9jXTs2q"]' \
    --to 'HdFAoIbh' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '3s9Ejwpq' \
    --seasonId '4KV4QsyX' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OBtpUe6o' \
    --userId 'DzkYHyZH' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'CKjmisNN' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'ZZJCYAUk' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'YH62LtvU' \
    --body '{"passCode": "WV7rJspo", "rewardCode": "o4hFN9Sm", "tierIndex": 65}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '1MFxKzZd' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '6sozzOuU' \
    --userId 'AzM08VTG' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE