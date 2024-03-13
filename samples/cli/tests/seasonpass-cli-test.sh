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
    --limit '88' \
    --offset '65' \
    --status '["PUBLISHED", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "0YGXgHJd", "defaultRequiredExp": 88, "draftStoreId": "3IkvH1Nb", "end": "1979-10-18T00:00:00Z", "excessStrategy": {"currency": "4d1LncCX", "method": "NONE", "percentPerExp": 39}, "images": [{"as": "AxkDhoMg", "caption": "4BjAmM2q", "height": 12, "imageUrl": "0YugM2kc", "smallImageUrl": "7c5me9sO", "width": 64}, {"as": "H3HsEepB", "caption": "6Rzl8wEY", "height": 29, "imageUrl": "E2noAzjq", "smallImageUrl": "cCct9zxx", "width": 72}, {"as": "UZklQkTo", "caption": "qgO7HIb3", "height": 25, "imageUrl": "sCvsNh53", "smallImageUrl": "pkG9JAUw", "width": 40}], "localizations": {"JWPetpZX": {"description": "UnTMw2mp", "title": "jhxPHr6r"}, "DjPB5b9y": {"description": "1LAF2cNd", "title": "BF9uJJmd"}, "dxzAWvRT": {"description": "uxuJW6bj", "title": "IPpTwBkM"}}, "name": "G8C65hwc", "start": "1999-04-11T00:00:00Z", "tierItemId": "7WPn4jRg"}' \
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
    --body '{"userIds": ["IrCyA0H9", "LanoaXIW", "Mni4yrIa"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vxgqlNYL' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XampcD5Z' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'v6QbHOsI' \
    --body '{"autoClaim": false, "defaultLanguage": "XgpitEoW", "defaultRequiredExp": 90, "draftStoreId": "JTAuKSb7", "end": "1985-08-11T00:00:00Z", "excessStrategy": {"currency": "nq1i3gZQ", "method": "NONE", "percentPerExp": 43}, "images": [{"as": "1Qbplc2R", "caption": "tvVJfXcE", "height": 61, "imageUrl": "rlyR8NPC", "smallImageUrl": "y1JKea6b", "width": 84}, {"as": "kAbctUkn", "caption": "I9RFm5NC", "height": 64, "imageUrl": "jsJyTWXn", "smallImageUrl": "HXr4009i", "width": 17}, {"as": "mKYEEYxY", "caption": "ohVlOHOU", "height": 49, "imageUrl": "Xd4YDSRH", "smallImageUrl": "JGIt8hkq", "width": 35}], "localizations": {"aR7eoUtE": {"description": "weSMB0kR", "title": "yzQXbebu"}, "DylDYUmC": {"description": "DwGWiAkx", "title": "6Po29sLc"}, "fTdWapOu": {"description": "kQ03BXsX", "title": "bWScomU2"}}, "name": "cwZWrqxF", "start": "1973-01-09T00:00:00Z", "tierItemId": "YwHMPX7L"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Q3FgtPOp' \
    --body '{"end": "1972-08-09T00:00:00Z", "name": "jMKz70Ol", "start": "1987-12-24T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KXaQve2H' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'GEn8e6KR' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'YBnuGwu9' \
    --body '{"autoEnroll": false, "code": "heUn14ca", "displayOrder": 61, "images": [{"as": "OjA7Wb2o", "caption": "NXgb2i0D", "height": 73, "imageUrl": "lm21GNTZ", "smallImageUrl": "x0FGL6Hn", "width": 68}, {"as": "G3BKKKkv", "caption": "NtqnI94n", "height": 63, "imageUrl": "0jpumZUu", "smallImageUrl": "CfMRS2r3", "width": 59}, {"as": "fUG2Ghyw", "caption": "DQrqkXX9", "height": 91, "imageUrl": "TTjO2dpD", "smallImageUrl": "k5hn5isT", "width": 2}], "localizations": {"Zi5u8LrG": {"description": "1rm6ckmF", "title": "PK9f6sQD"}, "td14jIyM": {"description": "a4odUaUJ", "title": "kI88ozTi"}, "NCXY1qy2": {"description": "6YFIzkXL", "title": "d1DhXt5l"}}, "passItemId": "CgC8XuLV"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'zydZ3GEZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PYS2UEw4' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'E7j8nQ6P' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DTGP8aus' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'jGtjAaWk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XoLNg6pl' \
    --body '{"autoEnroll": true, "displayOrder": 75, "images": [{"as": "4eri4uIm", "caption": "9K3Xrob4", "height": 84, "imageUrl": "zD9KODdZ", "smallImageUrl": "uOzDdkin", "width": 81}, {"as": "fqVjwLEs", "caption": "WyYaBRtw", "height": 31, "imageUrl": "tLe0qA6m", "smallImageUrl": "IiAndNSH", "width": 59}, {"as": "zc1Ea8Mp", "caption": "f6YwUAxS", "height": 3, "imageUrl": "UN8eZSgN", "smallImageUrl": "pp186IXW", "width": 63}], "localizations": {"qxPy4Fio": {"description": "AkX3d4Gn", "title": "6XdBZ7rt"}, "aMarvKdP": {"description": "kIHmjYkV", "title": "3or2ecNX"}, "8ADefa5w": {"description": "By5FJYeQ", "title": "zL6Vd1od"}}, "passItemId": "Ig6Uy0dE"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kfJSpsFF' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AmSUBVTr' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'LBmv7p1i' \
    --q 'Jpk8XKGt' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'W3Si5QHP' \
    --body '{"code": "nMQBqHfC", "currency": {"currencyCode": "atn0pWyB", "namespace": "5ZD3PzOy"}, "image": {"as": "JN8PbUzI", "caption": "iHq4yXLC", "height": 50, "imageUrl": "UZSabMPw", "smallImageUrl": "ZhNuMLfi", "width": 52}, "itemId": "yl4QWTHk", "quantity": 81, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'm6GRf3Lb' \
    --namespace $AB_NAMESPACE \
    --seasonId 'h6nAhEd8' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'whmSxggT' \
    --namespace $AB_NAMESPACE \
    --seasonId 'J8KsiUlo' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'c7rWmZ5p' \
    --namespace $AB_NAMESPACE \
    --seasonId '6hynoaxJ' \
    --body '{"currency": {"currencyCode": "o5ttdhMQ", "namespace": "0H0VhHYF"}, "image": {"as": "BxQg91lE", "caption": "XsuUFyLB", "height": 7, "imageUrl": "DVZZHPBt", "smallImageUrl": "rO427bqi", "width": 17}, "itemId": "qbajLxJ7", "nullFields": ["wAfeXHja", "oqjqkBa5", "p6sYBapk"], "quantity": 17, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'yuttyB2n' \
    --limit '98' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'wtgjNw7S' \
    --body '{"index": 59, "quantity": 66, "tier": {"requiredExp": 68, "rewards": {"vakpy5g3": ["QTkyQ7rE", "BsxHLRCD", "dZKAPJQN"], "CxvEqsNw": ["DXZqKfyr", "UeOU0Lnh", "luEivFqN"], "TWllEh49": ["7JwlIY9E", "KnP3NFH1", "sHYr54v0"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'PGewvD9T' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bsqLaEXy' \
    --body '{"requiredExp": 2, "rewards": {"EerIPsyj": ["aP65PhGC", "waSbM3kF", "7bX2WZun"], "QwD1162d": ["mOmQPN68", "wvpkacc4", "xM9Pm5vh"], "jO0rFXOG": ["VpHFrDew", "6Ta3iA9u", "CzlsZIjK"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'dUNVxHFy' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Tu3UEYU1' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'QXmpq2Ha' \
    --namespace $AB_NAMESPACE \
    --seasonId '8hSypaq3' \
    --body '{"newIndex": 46}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dfeg60jg' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'XVeVfdem' \
    --limit '61' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'p8yZ1ynC' \
    --body '{"exp": 25, "source": "SWEAT", "tags": ["y11dqsll", "DMgP8OeW", "ONZsP22C"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'OEPNlrha' \
    --body '{"passCode": "8GM4MmRn", "passItemId": "8uDBQ90K"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'bqzcrhNV' \
    --passCodes '["xrUzFZX7", "eVi4yYCE", "DAba0XWM"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'jqYICHdr' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'fEj1uN3W' \
    --body '{"passItemId": "BNupctzb", "tierItemCount": 53, "tierItemId": "4XFfpUOL"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'oeVM5mKA' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'kGDPmyvx' \
    --body '{"count": 99, "source": "SWEAT", "tags": ["FzKhfRE6", "rxRwNRtg", "3Y8Ky9rJ"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'CwoDUrwb' \
    --from '8oyaWTxN' \
    --limit '24' \
    --offset '67' \
    --seasonId 'zcwMSL4F' \
    --source 'SWEAT' \
    --tags '["Ojwu5UFF", "ZDQMAc6W", "yVQcZ4O4"]' \
    --to '5emFwuip' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Vmc6xk7N' \
    --seasonId 'wxKhOBr1' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'X3SW85Ky' \
    --userId '2eb83uNG' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'MHjTzivY' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'jyKvxxa4' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'CvOQL0FH' \
    --body '{"passCode": "BfkJCZny", "rewardCode": "97WoJvof", "tierIndex": 4}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '9mznrDEg' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ijg8VHCV' \
    --userId 'wC6iink1' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE