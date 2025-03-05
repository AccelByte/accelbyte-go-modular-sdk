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
    --limit '24' \
    --offset '2' \
    --status '["RETIRED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "NUI20ukI", "defaultRequiredExp": 87, "draftStoreId": "tTnspHMZ", "end": "1986-12-07T00:00:00Z", "excessStrategy": {"currency": "wazYZA2o", "method": "NONE", "percentPerExp": 95}, "images": [{"as": "Qy3V52la", "caption": "rwmxyel2", "height": 90, "imageUrl": "AxxHPoWH", "smallImageUrl": "7GE8AZpF", "width": 28}, {"as": "DfUivkeS", "caption": "Cv5Yd4Le", "height": 16, "imageUrl": "vo5fJv9F", "smallImageUrl": "Z8IzzUJv", "width": 78}, {"as": "ZzZRZDgQ", "caption": "7yo3S5Ni", "height": 86, "imageUrl": "4fY6qDQ8", "smallImageUrl": "IAr5yahS", "width": 92}], "localizations": {"RgEKj1e3": {"description": "VIw28WRZ", "title": "z0K5SEtc"}, "LPfEvEgc": {"description": "NfdkBarH", "title": "njogBeJG"}, "MBk8klTV": {"description": "6MNYZq4K", "title": "Xju3yaHz"}}, "name": "6fhv4QP3", "start": "1981-03-03T00:00:00Z", "tierItemId": "cI1BduMF"}' \
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
    --body '{"userIds": ["MZcZQxma", "nAzuClyk", "6mWRur6B"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'XSz9tBLQ' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ca9hQ08I' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zgZbK9gY' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nrKt03gv' \
    --body '{"autoClaim": true, "defaultLanguage": "s04UqgQe", "defaultRequiredExp": 84, "draftStoreId": "3k8odMmW", "end": "1996-08-20T00:00:00Z", "excessStrategy": {"currency": "5fSKSnDa", "method": "CURRENCY", "percentPerExp": 10}, "images": [{"as": "nRNhERzi", "caption": "Sw9xh9IC", "height": 35, "imageUrl": "wE2LQTt9", "smallImageUrl": "Wb7hhVUP", "width": 25}, {"as": "cKXu19gh", "caption": "5d89meQX", "height": 36, "imageUrl": "mlzoXTVo", "smallImageUrl": "zEjS76ng", "width": 100}, {"as": "20Idw3Kq", "caption": "nSVooFMS", "height": 73, "imageUrl": "YQTfQ54x", "smallImageUrl": "aJivcAs9", "width": 52}], "localizations": {"reOpE6rh": {"description": "zXYVDE4r", "title": "doNPxqmM"}, "9pRWpdmY": {"description": "ehisRkTW", "title": "HlZAoVtA"}, "p9BlSEbv": {"description": "tcv3UnRr", "title": "KqLwALO7"}}, "name": "8bwNpdnr", "start": "1984-11-30T00:00:00Z", "tierItemId": "qpF5Oa3Y"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hO5sZkIV' \
    --body '{"end": "1990-05-11T00:00:00Z", "name": "eAwas0O5", "start": "1989-06-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Cqg4CEBJ' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '6IyGwHGH' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'AasOQ012' \
    --body '{"autoEnroll": true, "code": "O3rbDvq2", "displayOrder": 54, "images": [{"as": "XLTL4xun", "caption": "5xT4IsFX", "height": 18, "imageUrl": "JkmfEzrT", "smallImageUrl": "KeHqG0Il", "width": 41}, {"as": "4yjf3QxV", "caption": "j5MW86wS", "height": 25, "imageUrl": "jNk3HJIz", "smallImageUrl": "P0rVPrv4", "width": 93}, {"as": "z0GRptWT", "caption": "ChUbi8w5", "height": 94, "imageUrl": "5hThOjo2", "smallImageUrl": "BAaynOP1", "width": 48}], "localizations": {"q0LDuDTP": {"description": "0MNsdizq", "title": "eGLFNWNd"}, "kcPnoaKd": {"description": "f083nYFs", "title": "uzNk9B1E"}, "9L0Hnpme": {"description": "y6QF7b5Y", "title": "x33Xx6PM"}}, "passItemId": "M2KeWAvu"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '4XrTPly4' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EfoTHvDn' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'nU6B0Ej6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'J2XPflrB' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '9Fr3xw6F' \
    --namespace $AB_NAMESPACE \
    --seasonId 'V8kTqGAe' \
    --body '{"autoEnroll": true, "displayOrder": 61, "images": [{"as": "ZYklHSx5", "caption": "mZi89y85", "height": 100, "imageUrl": "oX80XQ7m", "smallImageUrl": "xHfTuVoq", "width": 41}, {"as": "4vuyjXzZ", "caption": "zGEHFrii", "height": 34, "imageUrl": "Rj9VxBBI", "smallImageUrl": "JJV5sf6h", "width": 66}, {"as": "QmMbEmFb", "caption": "AQhvgVPY", "height": 88, "imageUrl": "tTRu7E4Y", "smallImageUrl": "slcvlMEA", "width": 29}], "localizations": {"t0bG6roX": {"description": "03zXnxEQ", "title": "w5G3wwIY"}, "xlUIV1g8": {"description": "aUpA1oE5", "title": "kVCEYfxd"}, "XNoQVH8t": {"description": "BL9F5KFg", "title": "10vaRwKr"}}, "passItemId": "8QqhEawi"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gLFXrkw3' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AE5t8420' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'cD7BBOmq' \
    --q '4QMZswsi' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'tWepkgyL' \
    --body '{"code": "BZorsuPO", "currency": {"currencyCode": "3b31XS0W", "namespace": "Ilr8pQgH"}, "image": {"as": "uXgcy4D6", "caption": "YzILtoVI", "height": 55, "imageUrl": "wIWhnTnf", "smallImageUrl": "8AKsW3IB", "width": 51}, "itemId": "0ITsyMWH", "quantity": 24, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'xdjgk8Wc' \
    --namespace $AB_NAMESPACE \
    --seasonId '4xAqR94v' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'HdLukzCD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ib1avJGq' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'fBecVzbj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PO5N0KIF' \
    --body '{"currency": {"currencyCode": "wvAUGbKs", "namespace": "T3DRs6Xz"}, "image": {"as": "vT0Zzle5", "caption": "thL0agNV", "height": 28, "imageUrl": "obx36bg3", "smallImageUrl": "OxA9X7Qx", "width": 86}, "itemId": "PPYY15wo", "nullFields": ["pLQ6tpG6", "iYRfyYuB", "PHUrPIUl"], "quantity": 22, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'FOOR4rDB' \
    --limit '69' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'Uo0ugKMs' \
    --body '{"index": 13, "quantity": 70, "tier": {"requiredExp": 54, "rewards": {"qFmMUIWQ": ["TLkFC8ZA", "b9X7IYLT", "YsJvJ6dw"], "wOHaGEcK": ["fsT8cAfs", "Q39Hblhj", "ahW3kPue"], "Cn0cIOXK": ["uEFA5kaT", "wgG8ogi1", "84lrGTjo"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'jn416kuf' \
    --namespace $AB_NAMESPACE \
    --seasonId 'hxJK4Zy3' \
    --body '{"requiredExp": 4, "rewards": {"ee1kLoDW": ["6Pxc388y", "2tC0Cf6X", "3tLEwGct"], "i0eEVfFO": ["fQ4S8LE2", "I0xq5Xwo", "5uSlDRWf"], "S7JUKljF": ["bBg9Dv58", "uPkfRJVv", "MbQxRYUt"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'YchN17mi' \
    --namespace $AB_NAMESPACE \
    --seasonId 'L69q8mHa' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '3ABAWDOZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XBMcsFGW' \
    --body '{"newIndex": 26}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZYsWn9mu' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Sdh58waz' \
    --limit '8' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'MYVPH97C' \
    --body '{"exp": 70, "source": "PAID_FOR", "tags": ["k4NoIT0h", "UJFvEeoh", "eTW7RCBt"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'oV0Hs2lP' \
    --body '{"passCode": "eekcidxh", "passItemId": "0NZeE6oB"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'Urpwaafc' \
    --passCodes '["tRDY1xxq", "x8GAZJ01", "Hx0jWWEg"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'vjeMYaDZ' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ooL5ROmX' \
    --body '{"passItemId": "w76xNIKA", "tierItemCount": 70, "tierItemId": "jE7cqYuQ"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'WmcL5ocu' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'KDct7ynX' \
    --body '{"count": 92, "source": "SWEAT", "tags": ["jjG8z308", "53j1J7oi", "dlDJh1S2"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'tRA8DIZn' \
    --from 'say7TWZl' \
    --limit '40' \
    --offset '48' \
    --seasonId 'BMUTuzbO' \
    --source 'PAID_FOR' \
    --tags '["Y1lT89jc", "y0lY9lY4", "WzXJ6E9O"]' \
    --to 'WS9XgQ7r' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'n8jclem9' \
    --seasonId 'mmgKkgeq' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gnhsJ9Gz' \
    --userId 'HES6gE91' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'vAS1gWyK' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'iHH3Uwcx' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'kAwsuiIU' \
    --body '{"passCode": "VCE3kEFk", "rewardCode": "ymnGSBl7", "tierIndex": 17}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'pzs4iSVk' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fDDhbqmj' \
    --userId '5PRZJcZy' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE