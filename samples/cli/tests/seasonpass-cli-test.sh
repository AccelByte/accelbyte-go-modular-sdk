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
    --limit '49' \
    --offset '2' \
    --status '["RETIRED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "anwg52bD", "defaultRequiredExp": 50, "draftStoreId": "wtZzs1zH", "end": "1981-01-15T00:00:00Z", "excessStrategy": {"currency": "eMJSaMPv", "method": "CURRENCY", "percentPerExp": 50}, "images": [{"as": "bietncut", "caption": "bRQVuI66", "height": 75, "imageUrl": "6U7GOoud", "smallImageUrl": "cUOVxSgp", "width": 23}, {"as": "OYvCPTVt", "caption": "eZojJyuZ", "height": 86, "imageUrl": "T2Muzgkw", "smallImageUrl": "6jpcVZJX", "width": 58}, {"as": "PEYtBuQM", "caption": "tiQKi1x9", "height": 66, "imageUrl": "hvanqh0e", "smallImageUrl": "Sddc9356", "width": 58}], "localizations": {"xSKKZLar": {"description": "pnCcZYVk", "title": "sCNpdQ1F"}, "X8zmstJ9": {"description": "CCI1GhNf", "title": "vjwzdROO"}, "BPZcWruW": {"description": "2nZaRcJI", "title": "0jBNn2eN"}}, "name": "yI7nMvks", "start": "1988-08-13T00:00:00Z", "tierItemId": "fQ8L30Il"}' \
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
    --body '{"userIds": ["20Tsdixz", "bqmW5p7c", "hYyqxs5n"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rEmvzW4o' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'TqwDOUNp' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'EqdsC5O3' \
    --body '{"autoClaim": false, "defaultLanguage": "EYVbFFRD", "defaultRequiredExp": 89, "draftStoreId": "x3j8d69P", "end": "1977-10-24T00:00:00Z", "excessStrategy": {"currency": "7y5t376l", "method": "CURRENCY", "percentPerExp": 39}, "images": [{"as": "G4iJC1F2", "caption": "tG3arH2T", "height": 16, "imageUrl": "jTxkIJ1K", "smallImageUrl": "ezdJpXoX", "width": 11}, {"as": "huxkop1S", "caption": "iyvz71sz", "height": 69, "imageUrl": "vy4ccriu", "smallImageUrl": "pzCm68NH", "width": 35}, {"as": "5Xv38O2i", "caption": "62aYjNrS", "height": 8, "imageUrl": "lFiPjdJO", "smallImageUrl": "5ms2s50D", "width": 78}], "localizations": {"kO9d0Qc7": {"description": "c5jJ8lJT", "title": "5n6vASyJ"}, "SB2j6KpQ": {"description": "LPDm3ikR", "title": "K4U9e7SN"}, "VBDhFUUU": {"description": "mut43MPQ", "title": "5emyQbHv"}}, "name": "ZR8GXnk5", "start": "1992-04-10T00:00:00Z", "tierItemId": "X49aOa5f"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'N5ClnYSN' \
    --body '{"end": "1972-05-31T00:00:00Z", "name": "n7xterNS", "start": "1984-02-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8bilm4cI' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'hYCsRkFo' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'Dh5QFbqa' \
    --body '{"autoEnroll": false, "code": "Yzffajpl", "displayOrder": 12, "images": [{"as": "QAQONgHv", "caption": "atu7XRkK", "height": 85, "imageUrl": "dszS8kly", "smallImageUrl": "LtCkvblr", "width": 19}, {"as": "SIlp2yOg", "caption": "K4BdSv0i", "height": 20, "imageUrl": "e4VNc0m2", "smallImageUrl": "vRPZGHW3", "width": 5}, {"as": "Oikzn56V", "caption": "4yLEKjAm", "height": 19, "imageUrl": "nxO0dv8a", "smallImageUrl": "pjETg28d", "width": 30}], "localizations": {"NS4lWbRE": {"description": "iuAD6XaI", "title": "0lAbwtbr"}, "0dP950kr": {"description": "ierBzIVb", "title": "sqlh0J4V"}, "lpYHvzNP": {"description": "YHwQJTGc", "title": "LLJWbCls"}}, "passItemId": "DcxkZvZH"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'FOuoP9Jo' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PkQlwaMh' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'eGlFOuGe' \
    --namespace $AB_NAMESPACE \
    --seasonId '7qN3D2oj' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'vWoCP0zM' \
    --namespace $AB_NAMESPACE \
    --seasonId 'maFZLYfW' \
    --body '{"autoEnroll": false, "displayOrder": 100, "images": [{"as": "e1XQsFTi", "caption": "5R1x9ETU", "height": 13, "imageUrl": "w6hfkDEz", "smallImageUrl": "kCYvkkLc", "width": 53}, {"as": "6Bfi3mDS", "caption": "5dQIDsQZ", "height": 13, "imageUrl": "oqBXVHDW", "smallImageUrl": "YWpdqbiR", "width": 99}, {"as": "lMelpyAq", "caption": "vSy9NW3d", "height": 73, "imageUrl": "rEm95yU7", "smallImageUrl": "cXURaAgd", "width": 64}], "localizations": {"QE3uurtl": {"description": "Kx5H4IV7", "title": "gphcNLVd"}, "MAYGx45t": {"description": "6dXPuukn", "title": "QGwJLr7F"}, "dZUky9Lz": {"description": "4hQwGiku", "title": "utgys7OZ"}}, "passItemId": "kWuwvjSP"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'o2kgmCw1' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bfsqFJf8' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'CiCQKcCJ' \
    --q 'o51L8dsF' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'nv5Sfnl3' \
    --body '{"code": "ocpsObwH", "currency": {"currencyCode": "o0L8A5PJ", "namespace": "gd3YFqSc"}, "image": {"as": "bALyTTH5", "caption": "9FZchUnX", "height": 85, "imageUrl": "LSJeqevf", "smallImageUrl": "ilNybdN7", "width": 75}, "itemId": "tGPp6kev", "quantity": 97, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'z16RnrkM' \
    --namespace $AB_NAMESPACE \
    --seasonId '1reekRO6' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'afAa6Uyt' \
    --namespace $AB_NAMESPACE \
    --seasonId 'i9ubU9nY' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'PZ5TIVA7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'N6iRRbvy' \
    --body '{"currency": {"currencyCode": "5ydZoD6J", "namespace": "0wpDzYoU"}, "image": {"as": "V6I65f52", "caption": "1aBKFmgf", "height": 77, "imageUrl": "eCKuYLPs", "smallImageUrl": "KdKVYObm", "width": 45}, "itemId": "Gfb1MSOs", "nullFields": ["yz6VuEJb", "2OFlgDIa", "cLzhzhaH"], "quantity": 95, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'TS45sBAz' \
    --limit '52' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'AmPssAL1' \
    --body '{"index": 13, "quantity": 90, "tier": {"requiredExp": 99, "rewards": {"ZxzxF2me": ["RSdLom9J", "RS569L4B", "qCGMGEtR"], "YjWAzjzi": ["ewK2DiYh", "aq2BHTNQ", "5iOZETuc"], "fmj45DBw": ["DrBKgHIe", "rpgKqM88", "v3iYBeOB"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'N496Wb4p' \
    --namespace $AB_NAMESPACE \
    --seasonId 'zdx0X0IB' \
    --body '{"requiredExp": 54, "rewards": {"9jYvlLYw": ["aKvXKugV", "pOwR4J4G", "f3DIlH5w"], "FlS5nUHG": ["jyCxt5ir", "6UAjHCBW", "WQ2Za3Pv"], "1TsISjBz": ["UyV4L7XA", "w6wG4oQ5", "VgEDECvW"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'VhuTpYHW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Hkbhg5Q2' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'HkHpbrY5' \
    --namespace $AB_NAMESPACE \
    --seasonId '5eeEKR4S' \
    --body '{"newIndex": 66}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'o55ipqaM' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'nR4E2eIR' \
    --limit '56' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'onZvFf7D' \
    --body '{"exp": 65, "source": "PAID_FOR", "tags": ["QtEkFcPS", "9GIjXLx4", "IwfxGEBw"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '5CuUM5QJ' \
    --body '{"passCode": "YGXjOJ3s", "passItemId": "phSauL2F"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'XPRUzDr8' \
    --passCodes '["pcniModv", "cE1ciOeK", "ASw5WW14"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '7xZ95pmm' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '0tyEwQd9' \
    --body '{"passItemId": "fHfsNU2R", "tierItemCount": 88, "tierItemId": "OdSZd8Qf"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'P2ba2BCh' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '1KPNUVZU' \
    --body '{"count": 54, "source": "PAID_FOR", "tags": ["M6zAq2mh", "Ul01k263", "2gQt1kpf"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'hBkZr6Em' \
    --from 'V8nm2zO6' \
    --limit '90' \
    --offset '38' \
    --seasonId 'kCzU3Lek' \
    --source 'PAID_FOR' \
    --tags '["KampmgH1", "uMWQe0vW", "EKioYsQu"]' \
    --to 'rdBFNYtq' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'JkUSBjr8' \
    --seasonId 'LIT8tntS' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'oxYtqbUK' \
    --userId '33CuCXJu' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'VzBb4e9Q' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'rQTjoxKf' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ffSfResW' \
    --body '{"passCode": "besX7scK", "rewardCode": "3fvMhoG5", "tierIndex": 92}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'dEHtKRwh' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0nYzjTlD' \
    --userId 'MbBQ0jGJ' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE