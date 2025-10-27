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
    --limit '54' \
    --offset '62' \
    --status '["PUBLISHED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "rOQiRbcs", "defaultRequiredExp": 4, "draftStoreId": "gtivuM6K", "end": "1991-09-27T00:00:00Z", "excessStrategy": {"currency": "551yfy60", "method": "NONE", "percentPerExp": 68}, "images": [{"as": "fqVO9EaJ", "caption": "fMS6tWRx", "height": 57, "imageUrl": "UEVyTIJ0", "smallImageUrl": "VHjkZRZw", "width": 53}, {"as": "7X0bVCna", "caption": "znZkMrcj", "height": 14, "imageUrl": "YtqBrOnV", "smallImageUrl": "poC5u1AQ", "width": 56}, {"as": "9248ivY6", "caption": "slyZp2pw", "height": 13, "imageUrl": "qPFYog2N", "smallImageUrl": "AWfiwCvo", "width": 8}], "localizations": {"YyLUeCo7": {"description": "5DQOhmYH", "title": "sFhBSNYh"}, "2lt8ioIe": {"description": "OiKPiCrd", "title": "PZsIlrSQ"}, "O3hr4JwD": {"description": "ARWtyWbp", "title": "Yo3DmhzY"}}, "name": "Xo7IydnK", "start": "1981-12-24T00:00:00Z", "tierItemId": "4q8g9fk5"}' \
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
    --body '{"userIds": ["TXHnnc97", "6AyTCepn", "iXFsvfZZ"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'KNq5jovy' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Py1Oik0D' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZqWoi5TZ' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'BCTSmCbu' \
    --body '{"autoClaim": true, "defaultLanguage": "EgQQud9f", "defaultRequiredExp": 7, "draftStoreId": "HPTZ7Z9J", "end": "1991-09-10T00:00:00Z", "excessStrategy": {"currency": "WCoB3iJ2", "method": "CURRENCY", "percentPerExp": 35}, "images": [{"as": "EZ1wW1yn", "caption": "fMghnvdW", "height": 68, "imageUrl": "xNuUema5", "smallImageUrl": "Y5UI6mQW", "width": 43}, {"as": "tx0TTIO8", "caption": "xJ3JQuvz", "height": 3, "imageUrl": "ldK1HgWo", "smallImageUrl": "0FADv1G3", "width": 90}, {"as": "n8R0Zc7G", "caption": "WdLyRaWS", "height": 65, "imageUrl": "4lx7HfZv", "smallImageUrl": "HydjaExd", "width": 97}], "localizations": {"Jd7GfNYZ": {"description": "CNtzNMfe", "title": "Hk4MLvDd"}, "cKIiqoB7": {"description": "uyrkK8E5", "title": "PHCjU2Hb"}, "sgZXvVic": {"description": "AGOxjPgF", "title": "YAfsfXnu"}}, "name": "1GxeXn2L", "start": "1990-11-16T00:00:00Z", "tierItemId": "0YKknklo"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mYpm9qjK' \
    --body '{"end": "1996-07-07T00:00:00Z", "name": "rEW7bYEO", "start": "1978-04-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jVgdtSsO' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ygledd3n' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'rc5XSHO3' \
    --body '{"autoEnroll": false, "code": "0B3XkJeL", "displayOrder": 96, "images": [{"as": "6tVcY5R4", "caption": "yjPLxHHu", "height": 20, "imageUrl": "j0g1AJCg", "smallImageUrl": "lvo7TBdt", "width": 95}, {"as": "kwtj8tT6", "caption": "S0TXl10H", "height": 19, "imageUrl": "usrDG0sr", "smallImageUrl": "Al7YH2Nr", "width": 16}, {"as": "gGzgpP7u", "caption": "p3cHB0Iz", "height": 3, "imageUrl": "pmVucEMG", "smallImageUrl": "szHsdaS2", "width": 52}], "localizations": {"dhB3G1dG": {"description": "EM6aPBoD", "title": "b9fwcf3m"}, "am6b8xYx": {"description": "PB5ujMhI", "title": "i9j5ttju"}, "RNoes4PD": {"description": "U2SMvroe", "title": "iNal3AjX"}}, "passItemId": "Ayu0OY0a"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '99tTaM0d' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PBFlCqiH' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'fmhubUL2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kOHYDdiH' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '8I4xb6Lr' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rTz9Uidr' \
    --body '{"autoEnroll": false, "displayOrder": 68, "images": [{"as": "NBPJcZIb", "caption": "46TQ5QmT", "height": 64, "imageUrl": "Xts0FkQv", "smallImageUrl": "k1V8Y0T5", "width": 51}, {"as": "ab4EokYI", "caption": "L810ZPQh", "height": 98, "imageUrl": "RrBwgQiJ", "smallImageUrl": "87Gki3Jx", "width": 81}, {"as": "33WJy2L5", "caption": "qyO25oCx", "height": 55, "imageUrl": "9juIF2lS", "smallImageUrl": "C962S8OV", "width": 90}], "localizations": {"AzmV2UN4": {"description": "Lb461TcN", "title": "eGcOwHLT"}, "jysNEb3I": {"description": "5JsDXkQ9", "title": "2dWkeZmS"}, "xI1p3RTa": {"description": "7RDXtBZq", "title": "qqYUq0gV"}}, "passItemId": "qkBc7Ee4"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ph8uxb7S' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'RQUYVYZT' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'q3Evpilt' \
    --q 'Oac3nGtg' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'wc3kpYsH' \
    --body '{"code": "uupK77ia", "currency": {"currencyCode": "Ke76x791", "namespace": "ghRBJAy0"}, "image": {"as": "3G1oTI3f", "caption": "LYV9BGH9", "height": 36, "imageUrl": "BVRMwfIP", "smallImageUrl": "Xp36c86h", "width": 87}, "itemId": "3NZtHmd4", "quantity": 2, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'yx2abaRh' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VNa0bReu' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'QxKQmrEk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pPhkocEP' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '0KGtYcjG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'khnPNEk0' \
    --body '{"currency": {"currencyCode": "XsLgomcO", "namespace": "Lnxm2Xfk"}, "image": {"as": "XbGISVhx", "caption": "LAok0lxm", "height": 96, "imageUrl": "Zt2h4DZC", "smallImageUrl": "cq8CJj0v", "width": 34}, "itemId": "fPawWgb2", "nullFields": ["v4mzgyGs", "ocwJOCBB", "aDX1RekM"], "quantity": 82, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZFGsIgwz' \
    --limit '40' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'hbSLZ9Q4' \
    --body '{"index": 11, "quantity": 57, "tier": {"requiredExp": 51, "rewards": {"NWFCRBdP": ["YDfkWusD", "BykDTW6N", "tmkhLbZQ"], "GTvWRxvV": ["F1D9bU8V", "lUGLbxCR", "lcNzbsLi"], "9ctuOHxa": ["r614Jqfd", "E6vfB7kg", "D6nwdGyx"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 's2XbbWAU' \
    --namespace $AB_NAMESPACE \
    --seasonId '6H0uQzzw' \
    --body '{"requiredExp": 8, "rewards": {"KnU6L9YT": ["rvAeqFsO", "oFRvA2bM", "S9m1RP1z"], "SnY8Xcp5": ["EebbDHzJ", "xsEeCeDK", "kzVnsp3d"], "1kz7bk85": ["HEaSOZpx", "jMdJm4eY", "fS8HUzWm"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'aDRBtOPz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'n6qADz3o' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'TXhTISqn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Zfp9eeXU' \
    --body '{"newIndex": 94}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fAxFAZdW' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'o6Gc6S2Y' \
    --limit '95' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'KrLcOnw5' \
    --body '{"exp": 48, "source": "PAID_FOR", "tags": ["5jsOiacV", "E70URD6C", "D15TodGI"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '2RaiyUNs' \
    --body '{"passCode": "L8XjD3dW", "passItemId": "r7rWG7mp"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'z1O4Mprf' \
    --passCodes '["Vh56dXyg", "1pfKaJNr", "dX3HuQPH"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'aPAN228v' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ngathWel' \
    --body '{"passItemId": "DGtIZXZW", "tierItemCount": 61, "tierItemId": "tn8UtGyz"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'cDMM7vnp' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'X1PPwegh' \
    --body '{"count": 51, "source": "SWEAT", "tags": ["XLUNBYWw", "gSZlHDkH", "jZS0VYBG"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'X7rrlYMO' \
    --from 'QIhEzjyw' \
    --limit '90' \
    --offset '49' \
    --seasonId 'C9qCBcYI' \
    --source 'SWEAT' \
    --tags '["Fpv1joB6", "hgG9DUY1", "7Uzv45n7"]' \
    --to 'tpkscxNR' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Z2yjDsTk' \
    --seasonId 'jSzby8yO' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Lm1EZJow' \
    --userId 'EqDafXMI' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '39pTuIMv' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '5LQJxAKO' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '9xflV66x' \
    --body '{"passCode": "A3I4XiBz", "rewardCode": "dpZ8Nn13", "tierIndex": 72}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'DJBVnsyH' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jnUxL4m4' \
    --userId 'IcNU43XD' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE