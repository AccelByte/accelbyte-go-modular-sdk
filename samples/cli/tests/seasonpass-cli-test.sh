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
    --limit '97' \
    --offset '4' \
    --status '["DRAFT", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "hY5sDjGm", "defaultRequiredExp": 5, "draftStoreId": "NWg1oLzF", "end": "1993-03-24T00:00:00Z", "excessStrategy": {"currency": "kyMGmGFs", "method": "NONE", "percentPerExp": 63}, "images": [{"as": "ST9o9d7e", "caption": "mMMGW5da", "height": 60, "imageUrl": "qAieawJJ", "smallImageUrl": "Fv8JDFMx", "width": 7}, {"as": "zMz77APM", "caption": "tjWjabFR", "height": 0, "imageUrl": "LCpCSJ0N", "smallImageUrl": "poZZp50y", "width": 52}, {"as": "KsMrpQ4L", "caption": "1ig1ZeON", "height": 16, "imageUrl": "SjhTDvd2", "smallImageUrl": "pgBMd7mU", "width": 27}], "localizations": {"0ye4FEzm": {"description": "5kcLP2yG", "title": "ZbPCRrO1"}, "VsAv5HUu": {"description": "iZe792IO", "title": "ZEFqB6TA"}, "irFXy41b": {"description": "sMQwIDa5", "title": "R3OSMPYF"}}, "name": "vRT5XaF5", "start": "1977-05-18T00:00:00Z", "tierItemId": "Ji0367Xg"}' \
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
    --body '{"userIds": ["sG6y0Zj5", "BIHrznJH", "9K1EzZFj"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Syrsfsv3' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0C4guWha' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IilsQr4v' \
    --body '{"autoClaim": false, "defaultLanguage": "dq03KE6w", "defaultRequiredExp": 48, "draftStoreId": "TEZTdUYP", "end": "1985-08-15T00:00:00Z", "excessStrategy": {"currency": "t3lNXVSD", "method": "NONE", "percentPerExp": 48}, "images": [{"as": "sJSE66cq", "caption": "20QvoTei", "height": 4, "imageUrl": "bzD6pUk0", "smallImageUrl": "bXyP7u3s", "width": 79}, {"as": "d5dgm5kI", "caption": "QlPsBUta", "height": 79, "imageUrl": "V7NwMqn8", "smallImageUrl": "F0iLtoM8", "width": 71}, {"as": "IhFIRfzv", "caption": "uaQKv29j", "height": 60, "imageUrl": "NsQrrwfw", "smallImageUrl": "OjK8uvXd", "width": 0}], "localizations": {"bxdWI8M5": {"description": "d47dDA8t", "title": "EAQF1iWh"}, "oEkFB4zL": {"description": "8YFTRd31", "title": "SP4z6MPU"}, "0sbY7ya0": {"description": "uegIB9Zr", "title": "khZGRUbX"}}, "name": "h5Oqt5pS", "start": "1973-08-20T00:00:00Z", "tierItemId": "Hxi630vP"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ABGWq49P' \
    --body '{"end": "1988-05-13T00:00:00Z", "name": "E66400dP", "start": "1997-03-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4KC3l0qZ' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'EwjTh1tC' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'sXmrGhGt' \
    --body '{"autoEnroll": false, "code": "rSnI4LCX", "displayOrder": 60, "images": [{"as": "tY4btYtv", "caption": "vT1MKGC0", "height": 82, "imageUrl": "uCEp0Bti", "smallImageUrl": "h859NZWX", "width": 61}, {"as": "02ccODXH", "caption": "eqsNco18", "height": 69, "imageUrl": "hoeuD76z", "smallImageUrl": "ldN16trP", "width": 13}, {"as": "esfa3Lcy", "caption": "kKdXsXAr", "height": 80, "imageUrl": "IGrqHMbf", "smallImageUrl": "Qj0pxMbg", "width": 100}], "localizations": {"aowiMfRq": {"description": "QIJYN19y", "title": "xpdSzSeT"}, "WBq2O2K6": {"description": "1uhaynOl", "title": "Oy64MR3y"}, "vI3mF4Dm": {"description": "jOAZGRmo", "title": "YDE8FoTx"}}, "passItemId": "oJB1CrYs"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'rKvMf0LC' \
    --namespace $AB_NAMESPACE \
    --seasonId 'uUjs6Xh8' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '0MmEIkTL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ROkUQ86x' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'W42v2ZHG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Lrr9YuWz' \
    --body '{"autoEnroll": false, "displayOrder": 64, "images": [{"as": "s4O5HLaf", "caption": "pCS1z2YX", "height": 19, "imageUrl": "fO9OnYJq", "smallImageUrl": "AvQacyvj", "width": 67}, {"as": "Ajt8Pxkv", "caption": "o4NxuKR7", "height": 68, "imageUrl": "XwQ39kXU", "smallImageUrl": "bIkkwOaO", "width": 31}, {"as": "QZNjX1Rt", "caption": "DN5ApWiH", "height": 86, "imageUrl": "JSpJP0vW", "smallImageUrl": "jJ9QdeSs", "width": 79}], "localizations": {"0zX2txES": {"description": "YUqj7r4O", "title": "vltgN2mW"}, "B1Pl7lOB": {"description": "4FJbxsmI", "title": "s52Y7qiA"}, "cNKy2O7y": {"description": "62Px78ky", "title": "7pKEer2A"}}, "passItemId": "zoCP1qTk"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3CUpJDVb' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hhF2CwjY' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'VHumLuzz' \
    --q '21eKwI9w' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'mcfDhhKZ' \
    --body '{"code": "XvA4ZW5N", "currency": {"currencyCode": "mDNTsg7z", "namespace": "B5STxa80"}, "image": {"as": "r5iMcMrj", "caption": "CdW6tq7s", "height": 73, "imageUrl": "SoSNW2r8", "smallImageUrl": "jvaVos4v", "width": 32}, "itemId": "yScTCv6l", "quantity": 30, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '9UKBCqCZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'K0cVjikF' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'mjNspGgM' \
    --namespace $AB_NAMESPACE \
    --seasonId 'uPZdIjNm' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'rdmRZCzE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wGNXrUy8' \
    --body '{"currency": {"currencyCode": "5BOZBcyK", "namespace": "PcbKPrSe"}, "image": {"as": "nriD32VO", "caption": "SSuwbjKH", "height": 58, "imageUrl": "zj99o2GH", "smallImageUrl": "RDQ3z8Rr", "width": 91}, "itemId": "Nh1blMbR", "nullFields": ["INuvvxVs", "Tcc5vD6V", "H2VmujcS"], "quantity": 19, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '26zXRKOe' \
    --limit '9' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'eVkTZAHc' \
    --body '{"index": 57, "quantity": 29, "tier": {"requiredExp": 78, "rewards": {"pmUwuKee": ["yQQuJlMW", "JcitwiH5", "tmrvlrAb"], "FQmxrOlN": ["nhbI9m2i", "Cb60yZRK", "WnkVKuQB"], "KunGISxW": ["olmXfbCX", "cdery8f1", "QhVIbPGM"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'L06iQN6E' \
    --namespace $AB_NAMESPACE \
    --seasonId 'R8c9sd42' \
    --body '{"requiredExp": 7, "rewards": {"bKXLx2w7": ["DM1s9ogu", "4PiCdjbd", "qMIPEgU6"], "FrIR0hE9": ["lbBhgZlK", "ZpbJDfPy", "dQLUWg1X"], "O13vbPdN": ["3bIX4hYl", "lpC8k6u3", "S05b4H66"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '0bIs2KSY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jBGx6FyF' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'h3Wc0fcj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wrvohtmm' \
    --body '{"newIndex": 90}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fA5Pfqnp' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'ZGJVP6ya' \
    --limit '0' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'vwthm62q' \
    --body '{"exp": 62, "source": "PAID_FOR", "tags": ["dEJZfqIN", "Rino4jIk", "nkE2Nopd"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'b75X6SmP' \
    --body '{"passCode": "dqk8oTQR", "passItemId": "VrPiUdgY"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '50c2GkyM' \
    --passCodes '["7kHBbWXf", "DHp1ABsM", "KJt0oQvY"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'razCWjoo' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '9kqWKRTe' \
    --body '{"passItemId": "4rmJx2Bb", "tierItemCount": 46, "tierItemId": "MoMGo7kP"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '9Eyy8BnN' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'poxOr4wD' \
    --body '{"count": 61, "source": "SWEAT", "tags": ["lN3WBlXt", "efxtccNG", "RRTkgSOa"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'r7anRzB9' \
    --from 'aopTIBdY' \
    --limit '42' \
    --offset '19' \
    --seasonId 'F9JJYbfx' \
    --source 'PAID_FOR' \
    --tags '["f1rAD4mM", "tCqOtlNC", "uVdhpJ8c"]' \
    --to 'p12Aansn' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'UPPFpLpD' \
    --seasonId 'yTbNWQpB' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YbUB7HlB' \
    --userId 'cbYT38Xv' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'LtL3O4YC' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'jNaTKxs2' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ADtXEQ4s' \
    --body '{"passCode": "FK0K8091", "rewardCode": "IW7UVIZS", "tierIndex": 51}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'AFge0Imd' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'EQOlmAoN' \
    --userId '5KS7i3Cc' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE