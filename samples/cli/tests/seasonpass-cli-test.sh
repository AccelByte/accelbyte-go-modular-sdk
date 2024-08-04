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
    --limit '76' \
    --offset '74' \
    --status '["DRAFT", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "jAIPhS1Y", "defaultRequiredExp": 96, "draftStoreId": "WUdCVbCk", "end": "1977-03-20T00:00:00Z", "excessStrategy": {"currency": "ZePll6A5", "method": "CURRENCY", "percentPerExp": 48}, "images": [{"as": "THBHFulR", "caption": "XYNCwgVp", "height": 37, "imageUrl": "ub82ZFsf", "smallImageUrl": "rtPnZ01G", "width": 52}, {"as": "RzT5EeLt", "caption": "sP0DyH8r", "height": 52, "imageUrl": "rn8xciwl", "smallImageUrl": "zzIlk48b", "width": 33}, {"as": "ajv2e13X", "caption": "6nIwFOKf", "height": 44, "imageUrl": "8yT6ydHL", "smallImageUrl": "RVi4MxFq", "width": 93}], "localizations": {"hloQZLtF": {"description": "rMhCGYgB", "title": "eu4WSztp"}, "CzBe9qWa": {"description": "IXgdr4SB", "title": "DIxvxBrM"}, "TpZHk9x3": {"description": "aFLefey5", "title": "6us5gdXd"}}, "name": "NQho5Tkn", "start": "1976-12-09T00:00:00Z", "tierItemId": "XX2MHun9"}' \
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
    --body '{"userIds": ["AKF4VYky", "j3HaHuWo", "Szwhupc7"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CP8u0aFG' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2DWhpoZM' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'c50EuajB' \
    --body '{"autoClaim": true, "defaultLanguage": "Jk3iYjqV", "defaultRequiredExp": 94, "draftStoreId": "n1mIjesh", "end": "1985-03-02T00:00:00Z", "excessStrategy": {"currency": "VhkZlc8g", "method": "NONE", "percentPerExp": 13}, "images": [{"as": "EYOzB6a7", "caption": "HcKIjVUL", "height": 83, "imageUrl": "0npnRDnT", "smallImageUrl": "PUqJR41U", "width": 85}, {"as": "Z7sBYbyD", "caption": "tjKUFjDH", "height": 67, "imageUrl": "91UBWeJF", "smallImageUrl": "hXcnzxn6", "width": 60}, {"as": "PEFhiygz", "caption": "9uXgKxM0", "height": 7, "imageUrl": "SBgtqyzF", "smallImageUrl": "LPlcQLFZ", "width": 3}], "localizations": {"LvcloYyL": {"description": "mxbs9yOI", "title": "rdQwDUDk"}, "eiWaywdR": {"description": "oAHFUsyM", "title": "b1BrJ8jY"}, "r5248Eq1": {"description": "AWriIJ5V", "title": "LruNTd3M"}}, "name": "xkmsiAgS", "start": "1987-11-13T00:00:00Z", "tierItemId": "KiZ69qby"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'BSIzflWc' \
    --body '{"end": "1984-02-01T00:00:00Z", "name": "nxY3IRSd", "start": "1982-05-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bVSAZnDY' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'hVRVUnbl' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'ohLgWWGq' \
    --body '{"autoEnroll": false, "code": "1GkE3um0", "displayOrder": 26, "images": [{"as": "Q4jeElvK", "caption": "ZmT3Qikg", "height": 82, "imageUrl": "Z7ywysPB", "smallImageUrl": "naKimtRX", "width": 45}, {"as": "pL8KNykh", "caption": "iN5okwzg", "height": 95, "imageUrl": "Unbuguvt", "smallImageUrl": "eWmdqHig", "width": 19}, {"as": "QW6v1Yr2", "caption": "wKHQe4Uo", "height": 30, "imageUrl": "r4rntOWr", "smallImageUrl": "J0eMTt4p", "width": 88}], "localizations": {"6LQHmqJ6": {"description": "2ZzWE7o6", "title": "PHnXdadn"}, "NkOgfSDf": {"description": "Eu5SyJbQ", "title": "cyQ3lR7K"}, "yGTklHaH": {"description": "WoqE4hKh", "title": "vBLspo7S"}}, "passItemId": "7Aa5FszQ"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'kul8x0us' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EKmQ4MZ6' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '20dYN7n9' \
    --namespace $AB_NAMESPACE \
    --seasonId '7oqjHde2' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '3ClmLNJL' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wxjE2RKD' \
    --body '{"autoEnroll": false, "displayOrder": 53, "images": [{"as": "3RtYjmML", "caption": "72QzastD", "height": 75, "imageUrl": "ohAPXksR", "smallImageUrl": "2Y1fOGSV", "width": 18}, {"as": "YswzbZti", "caption": "CUMYuRNc", "height": 83, "imageUrl": "UuQsUTar", "smallImageUrl": "nG6gRxGK", "width": 27}, {"as": "K1JWnFGU", "caption": "ensPF3Ba", "height": 57, "imageUrl": "HKVsbOeL", "smallImageUrl": "cV4GPi71", "width": 59}], "localizations": {"zxDzHeUP": {"description": "gqhJ3tMY", "title": "khS7SAZH"}, "QxGMsRK3": {"description": "YNooLmNl", "title": "OqVVPnSm"}, "ODmwc8V5": {"description": "yNFa3Awi", "title": "XKUveV1B"}}, "passItemId": "2fVzUVDV"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0BlQNmB7' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DLscUE1H' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'jatcJKAk' \
    --q 'ROIGvltP' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'CtuKs7Jh' \
    --body '{"code": "OmzrrMbA", "currency": {"currencyCode": "jP166YKB", "namespace": "kjNnRyNP"}, "image": {"as": "XvzOkgeX", "caption": "Za5WND5N", "height": 17, "imageUrl": "k96sN2vY", "smallImageUrl": "KD2Xgv4L", "width": 28}, "itemId": "uka43HIy", "quantity": 93, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'pKZAjz9W' \
    --namespace $AB_NAMESPACE \
    --seasonId 'CPpoUtkl' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'decEYGMP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'AxaX7dSm' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'cBROwkwB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'w9twf8R4' \
    --body '{"currency": {"currencyCode": "d69lkUCs", "namespace": "NvngxSb6"}, "image": {"as": "WtcaFavQ", "caption": "NzXv7Leq", "height": 65, "imageUrl": "Pr1q6fE1", "smallImageUrl": "1tH0CC6a", "width": 35}, "itemId": "NRAqG7tD", "nullFields": ["oYQTYpqk", "xjq8WTgV", "OTpUdoY6"], "quantity": 81, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'CUDkr1wQ' \
    --limit '91' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '9sqIaBKe' \
    --body '{"index": 44, "quantity": 66, "tier": {"requiredExp": 16, "rewards": {"UkQySub6": ["xzOBM8FK", "cX8UY5gC", "Iz2XEtz4"], "8iwTjfC1": ["pTfPZzVu", "Iy0eNKBr", "YjnVhGfp"], "v5l8rDTs": ["MaDG88Yt", "aOE29XI8", "tj6SnUbw"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'fwnckf0e' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Fsbd7nVV' \
    --body '{"requiredExp": 63, "rewards": {"n7zDa5VW": ["0RXCGP41", "QKGY9gG4", "c1YTrUpR"], "y2CAEznS": ["eQiVdYiB", "p9v72PfA", "yUPFtmzu"], "9BA0OPYF": ["FpbMPGiY", "HY0GCLKz", "Jzf8fIEv"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'NvBbDabD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'RVNYweY4' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'fqDxLPjx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'AfI8N5GV' \
    --body '{"newIndex": 7}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NjY5HfJm' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'hC680jUI' \
    --limit '7' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '0g8EyNQa' \
    --body '{"exp": 43, "source": "SWEAT", "tags": ["DIXXlhF0", "O7QJQzas", "1Ij80k2j"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'VtFXEAYg' \
    --body '{"passCode": "AOlQGFUG", "passItemId": "VBrNXsab"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'IIDFVLJn' \
    --passCodes '["lgzRknWn", "cK3zK7eG", "w0tkkTFA"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'WoidA6K5' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'Yk4VW5gU' \
    --body '{"passItemId": "G8Vxwn8j", "tierItemCount": 66, "tierItemId": "BPaDxIZq"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'sLSOZUCi' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '9SQLwXV5' \
    --body '{"count": 55, "source": "SWEAT", "tags": ["yfNm5sj1", "BlntPMBn", "V1YXTo6Y"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'M9Br5r92' \
    --from 'aY7LZDxG' \
    --limit '42' \
    --offset '69' \
    --seasonId 'UFp9UXIb' \
    --source 'SWEAT' \
    --tags '["ATTw3pAk", "nt7U9ipF", "5eKYCa4V"]' \
    --to 'WUMDPU4L' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'cpSThqYW' \
    --seasonId 'z3OHxgol' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xpCUWNyF' \
    --userId '46tH4RRt' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'dtq2xPVa' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'djeYZ8R1' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'Kh1Eqbcd' \
    --body '{"passCode": "JQI5RkuQ", "rewardCode": "S03rQ514", "tierIndex": 4}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'LF00HTn9' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4hsclDw8' \
    --userId 'NrIpgnXf' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE