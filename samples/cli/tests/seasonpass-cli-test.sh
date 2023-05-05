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
    --limit '51' \
    --offset '71' \
    --status '["RETIRED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "AxnZWhu2", "defaultRequiredExp": 94, "draftStoreId": "un2PqTOE", "end": "1990-05-26T00:00:00Z", "excessStrategy": {"currency": "VzdoYgJW", "method": "NONE", "percentPerExp": 91}, "images": [{"as": "ym93McSV", "caption": "5lSZdzRa", "height": 41, "imageUrl": "ZYY5Dmkh", "smallImageUrl": "b0tql0VX", "width": 25}, {"as": "5sUZKDRr", "caption": "yj1hxWl3", "height": 82, "imageUrl": "f5O3lK1j", "smallImageUrl": "oSFlH1eU", "width": 74}, {"as": "znsI8xMv", "caption": "YH4AXE8F", "height": 3, "imageUrl": "oHD4IRPm", "smallImageUrl": "wWUt7QYi", "width": 19}], "localizations": {"9hr4YvaG": {"description": "20HXXigB", "title": "BcRTM2CK"}, "B7W0CYUW": {"description": "yNpHNRyB", "title": "FmI7Adnn"}, "rWDYfQ8n": {"description": "ABYC2BKB", "title": "c0WQOwUY"}}, "name": "fqu6dSaQ", "start": "1972-11-10T00:00:00Z", "tierItemId": "CNN3W8lC"}' \
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
    --body '{"userIds": ["pVqddujf", "pXeUvfkO", "zwB2Gz4e"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FTMPKuYM' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '7mZ2IxL3' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0Hy2bbAp' \
    --body '{"autoClaim": false, "defaultLanguage": "RPe7zrBa", "defaultRequiredExp": 10, "draftStoreId": "XtSrXa1o", "end": "1983-08-08T00:00:00Z", "excessStrategy": {"currency": "6rj7V4bT", "method": "CURRENCY", "percentPerExp": 8}, "images": [{"as": "wLhIRFZx", "caption": "2yBV5d1t", "height": 67, "imageUrl": "uj3y74Sc", "smallImageUrl": "nhXX3TMB", "width": 98}, {"as": "Nicfy81o", "caption": "I9vRVROE", "height": 41, "imageUrl": "hfCX8ZUN", "smallImageUrl": "G1fYDFwZ", "width": 14}, {"as": "8z3lvae2", "caption": "P0iqluHW", "height": 14, "imageUrl": "M3kdzWEM", "smallImageUrl": "WomIPQek", "width": 64}], "localizations": {"9MXoEjsh": {"description": "NR8fgS6A", "title": "rTyyDt2I"}, "4DGgxHXR": {"description": "k5euzh4T", "title": "WmjGxzOs"}, "2GUHs8iW": {"description": "3HZrgGId", "title": "d2xL1sYI"}}, "name": "yOb0Yw9P", "start": "1982-12-11T00:00:00Z", "tierItemId": "pfRdq1WS"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KfHLS5ZI' \
    --body '{"end": "1995-03-02T00:00:00Z", "name": "RAIoBtvf", "start": "1989-07-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MrHXymqI' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'jvQjbPBc' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'fCuZ7HbR' \
    --body '{"autoEnroll": true, "code": "oJzkhTMG", "displayOrder": 67, "images": [{"as": "vZbQFAGx", "caption": "YA7H5K1r", "height": 81, "imageUrl": "SPTWpXJE", "smallImageUrl": "F5QZjAj5", "width": 36}, {"as": "MM9nXPwp", "caption": "1l9PCtUD", "height": 57, "imageUrl": "DrmAVP4C", "smallImageUrl": "UDtrk12p", "width": 15}, {"as": "jukpWDSk", "caption": "Sher40iJ", "height": 93, "imageUrl": "oLsdjz6h", "smallImageUrl": "KVbIXGvS", "width": 82}], "localizations": {"d4zr0w3N": {"description": "HimOTgbQ", "title": "rZg9g1Zx"}, "zj3trZJv": {"description": "tHagL3rD", "title": "LuDsuUAU"}, "YYEVNqnj": {"description": "R6ijuLm1", "title": "IZPcquqw"}}, "passItemId": "PlKwO6k9"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'tDvm0nrg' \
    --namespace $AB_NAMESPACE \
    --seasonId '8J2iOLT8' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'tMuOFiL1' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ORVCFLhs' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'fTJSXAjZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dsb9fCQi' \
    --body '{"autoEnroll": false, "displayOrder": 89, "images": [{"as": "nIl7ArWE", "caption": "Am6SBR9L", "height": 29, "imageUrl": "zhPY2j2E", "smallImageUrl": "EUrWsVhl", "width": 87}, {"as": "WJ0naZ7w", "caption": "3d1FiNs1", "height": 35, "imageUrl": "SYcD8agh", "smallImageUrl": "s8f96ZQC", "width": 96}, {"as": "8aLRkMwm", "caption": "3zw71rup", "height": 53, "imageUrl": "491D3rIj", "smallImageUrl": "vZY056wP", "width": 25}], "localizations": {"EvL2k7ge": {"description": "qWX725Qa", "title": "Xg7oTQf7"}, "QzzaGGX9": {"description": "yiLf3ZaC", "title": "ecnt82em"}, "IPyUkYpA": {"description": "2e2gJQcj", "title": "CRbpIoLJ"}}, "passItemId": "TTqYwwwI"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Jclq9c5o' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pqRvQvCF' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'xhZznHW2' \
    --q 'PoXZ11F5' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '98gc6TYb' \
    --body '{"code": "FbWBxnn6", "currency": {"currencyCode": "orrELZmu", "namespace": "TjlINIJp"}, "image": {"as": "mFRYezfb", "caption": "S52Y5LrT", "height": 48, "imageUrl": "1pW4vzZ8", "smallImageUrl": "o0nnv8Bf", "width": 91}, "itemId": "KlXEskoq", "quantity": 47, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'zg0tkIsU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Bcst5osQ' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'I0wHZj9h' \
    --namespace $AB_NAMESPACE \
    --seasonId 'djQy5dUn' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'PXhUkblg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TJgKqrcn' \
    --body '{"currency": {"currencyCode": "ZHcw3xdD", "namespace": "gOtlmi5H"}, "image": {"as": "gXswa3DU", "caption": "vmHyQK0k", "height": 70, "imageUrl": "b8LAVJ7T", "smallImageUrl": "GUfrfzu9", "width": 59}, "itemId": "cZgycDdQ", "nullFields": ["zW69C7vs", "prxVJOsN", "54dRHe87"], "quantity": 35, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'VCFPWimK' \
    --limit '75' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'o54cPCRM' \
    --body '{"index": 90, "quantity": 84, "tier": {"requiredExp": 45, "rewards": {"ctZSGgzO": ["CVAeNvyo", "jOQPriPL", "FZfYhDbB"], "YOywGQEs": ["RcoAi9YE", "jAtlC0EF", "SlLlVZoF"], "D4pNZFPz": ["PbTlAYuB", "Fkx4s9IW", "S8FHkmM2"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'WArwRAV1' \
    --namespace $AB_NAMESPACE \
    --seasonId 'koeoutzw' \
    --body '{"requiredExp": 56, "rewards": {"9CuLRUSO": ["Sa3MnSBP", "jpk724aj", "CoO9Oj3Z"], "I1nOKwrP": ["4lnp1k5x", "OEx5njX0", "ItxBWVzo"], "WmREbCz3": ["0dnDyYIG", "YXgj7Yfx", "XnFBx7QQ"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'yQhn6G1v' \
    --namespace $AB_NAMESPACE \
    --seasonId '8Qm5oMfY' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'gKi7SUrr' \
    --namespace $AB_NAMESPACE \
    --seasonId 'x4k65pUZ' \
    --body '{"newIndex": 8}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'i0DLC156' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'o4qmTll7' \
    --limit '79' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'm7BfEciu' \
    --body '{"exp": 79, "source": "PAID_FOR", "tags": ["U71xKPlu", "ohHIciOV", "x1g3vr9v"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'KVDN0E1I' \
    --body '{"passCode": "XG9nWTO5", "passItemId": "oDfgYjAR"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'otVkNbbG' \
    --passCodes '["BMTwzJZo", "ScvMdcxG", "jvVNbXYX"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'EOMZBJXx' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'fEoAw4Ra' \
    --body '{"passItemId": "Ip4KL8yb", "tierItemCount": 6, "tierItemId": "7iF44Rv7"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'jvWz6Kcf' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'lyBPJdDR' \
    --body '{"count": 36, "source": "SWEAT", "tags": ["lulbjqQk", "vYDj8Qpb", "cPGLT4rj"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'DKM3Od5f' \
    --from 'WnFzKIos' \
    --limit '81' \
    --offset '12' \
    --seasonId 'CTTnVF9x' \
    --source 'PAID_FOR' \
    --tags '["WGy4AqM5", "hMxUkmFn", "ptD8gec6"]' \
    --to '9RUYqHYK' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '1giu1LCp' \
    --seasonId 'kMPKMCHX' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'b8Oqo2aK' \
    --userId 'Pxy3LwWF' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'D8Xtc7tO' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'o0uijFIv' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'tx9Zg3st' \
    --body '{"passCode": "GjSxaOrb", "rewardCode": "zO1bXSVh", "tierIndex": 25}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'j5e9Tyyg' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Pd6PugHx' \
    --userId 'WdfTvh5d' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE