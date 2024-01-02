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
    --limit '98' \
    --offset '47' \
    --status '["PUBLISHED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "S7WDlN3x", "defaultRequiredExp": 9, "draftStoreId": "9BLmGdwy", "end": "1987-07-11T00:00:00Z", "excessStrategy": {"currency": "6Cdx0VJX", "method": "CURRENCY", "percentPerExp": 8}, "images": [{"as": "nLYVKlbF", "caption": "aLolODFD", "height": 5, "imageUrl": "7hqXlGN4", "smallImageUrl": "ATViqv95", "width": 84}, {"as": "L2sNiLyn", "caption": "L321ThCG", "height": 80, "imageUrl": "EgrFXOoG", "smallImageUrl": "VsFinCRR", "width": 40}, {"as": "0yfvdwaI", "caption": "IYfH5lGp", "height": 4, "imageUrl": "Oi1vQ9Ni", "smallImageUrl": "8IkdHlRQ", "width": 77}], "localizations": {"Wirp4p33": {"description": "Rgb9M8Vv", "title": "pMtYUWSW"}, "HVCXShO0": {"description": "WFhuH4dL", "title": "PPel4HYu"}, "QXKmYKxw": {"description": "e5NInqJF", "title": "doFFgHSL"}}, "name": "nCybalnn", "start": "1976-07-04T00:00:00Z", "tierItemId": "HizsxQDR"}' \
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
    --body '{"userIds": ["D8rbM0bo", "qY7P6skB", "uFniEocE"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kG8UEFwB' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xVV291LB' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ws2EfgiD' \
    --body '{"autoClaim": true, "defaultLanguage": "wOl0efZW", "defaultRequiredExp": 1, "draftStoreId": "rsk3iUeS", "end": "1992-05-26T00:00:00Z", "excessStrategy": {"currency": "kvOUeKse", "method": "CURRENCY", "percentPerExp": 71}, "images": [{"as": "Y83v9v4D", "caption": "w5RnMgbl", "height": 25, "imageUrl": "uMoaumfv", "smallImageUrl": "yAjqOn3P", "width": 26}, {"as": "kY3QSY6s", "caption": "qZzL7l1y", "height": 47, "imageUrl": "gONGqQA1", "smallImageUrl": "baUTFuxV", "width": 9}, {"as": "FSaibJID", "caption": "sunOquhW", "height": 38, "imageUrl": "dweWQxOx", "smallImageUrl": "xSDMqPfr", "width": 27}], "localizations": {"sQjFfQ8W": {"description": "wTUQkoKj", "title": "hD1cRdbH"}, "xk3QL7Gu": {"description": "HmRdGyIQ", "title": "dIleTauK"}, "P4AhHRna": {"description": "PYtcb1kX", "title": "rlDsRbwE"}}, "name": "tIA47kyk", "start": "1981-11-18T00:00:00Z", "tierItemId": "F9vZkLtf"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dX3wyBqy' \
    --body '{"end": "1971-09-04T00:00:00Z", "name": "6MqPPg4l", "start": "1990-06-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dofC6MM4' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'synhe24A' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'yhFSNjWh' \
    --body '{"autoEnroll": false, "code": "FBtWdGGo", "displayOrder": 68, "images": [{"as": "BRbhe4SD", "caption": "MfOHbnXw", "height": 1, "imageUrl": "okLjjFtv", "smallImageUrl": "59fI5sjj", "width": 90}, {"as": "6kJxCA92", "caption": "f6GMHGLY", "height": 32, "imageUrl": "xkZv1vMX", "smallImageUrl": "CWhkA4TU", "width": 68}, {"as": "AH5YQ60t", "caption": "eVnWBXZj", "height": 84, "imageUrl": "13vVIipv", "smallImageUrl": "IYJcdGoW", "width": 71}], "localizations": {"fLYhVrZZ": {"description": "GGaGkMjW", "title": "uGyQxJYT"}, "IbSQJaEY": {"description": "IBqN0XPW", "title": "nBLX45k2"}, "2CAItQzt": {"description": "qcUot87K", "title": "67bXR1Nq"}}, "passItemId": "nQCEXnjQ"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'v4P6RPOM' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XnqZfeAi' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'ftOXNqnh' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bBEUa4oN' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'vFJ1Xswg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Mmw4ALop' \
    --body '{"autoEnroll": false, "displayOrder": 97, "images": [{"as": "jyOlsBaV", "caption": "i6kFxqB4", "height": 32, "imageUrl": "Rub39OYM", "smallImageUrl": "NUUk2mXi", "width": 33}, {"as": "ZbYB5No1", "caption": "UbvIODLD", "height": 36, "imageUrl": "baehN32Z", "smallImageUrl": "d38Hn1VJ", "width": 16}, {"as": "dqmYLpdQ", "caption": "tjQ8BZXX", "height": 74, "imageUrl": "HdA56pXO", "smallImageUrl": "UOQZT3GA", "width": 27}], "localizations": {"rknHiPQf": {"description": "GnB9d6r9", "title": "ru2PkzQ7"}, "jDexSTXy": {"description": "bKtT3cT3", "title": "bKlQkAPi"}, "MMsxQDiz": {"description": "BkxsRmgP", "title": "B9R0KiQV"}}, "passItemId": "93DRQoCJ"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HigcxPxV' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NH5BidEd' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'Vc31Yn9j' \
    --q 'bvYjIzhb' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '2hsSJ3nl' \
    --body '{"code": "DBS6LX8D", "currency": {"currencyCode": "rUNwjRbt", "namespace": "QqfXGlUT"}, "image": {"as": "jzRXKM7M", "caption": "Aa5dV4uS", "height": 95, "imageUrl": "5ASvneXS", "smallImageUrl": "BweCWeiE", "width": 24}, "itemId": "wfAdBu1e", "quantity": 88, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'l80pYuVf' \
    --namespace $AB_NAMESPACE \
    --seasonId 'yxtkAQnZ' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'ykJtwd4h' \
    --namespace $AB_NAMESPACE \
    --seasonId 'S59vQ4qL' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'QWHr58B6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZZXarUGR' \
    --body '{"currency": {"currencyCode": "lPBaZKJ2", "namespace": "aXEJFuzD"}, "image": {"as": "YjKMOVoZ", "caption": "Lp8i4GYF", "height": 96, "imageUrl": "LVist69C", "smallImageUrl": "iv6s83zV", "width": 63}, "itemId": "9ynXjo3O", "nullFields": ["1uJZ55Jn", "lNsndYLG", "SfU975oH"], "quantity": 75, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '8Vm3xcLD' \
    --limit '76' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'zfq7ktM1' \
    --body '{"index": 55, "quantity": 3, "tier": {"requiredExp": 5, "rewards": {"iyUGcTYH": ["7ec3ddfr", "fBZPIDqh", "g8YHkQNz"], "KUSIUkUx": ["tQjqVxCr", "nDWhfdG5", "vK0StqhG"], "j5Y8DtQu": ["yVpMyPpt", "VQSF3zbt", "g5m7keGG"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'TqyTQKgT' \
    --namespace $AB_NAMESPACE \
    --seasonId 'obMwLEfE' \
    --body '{"requiredExp": 69, "rewards": {"oPWgYim7": ["m8PjEBkj", "wp1PsvN0", "XcogqXSk"], "qG1J4Sqy": ["ji8udNwo", "bA7H7DEC", "0DQgdoV6"], "gAxTZu2t": ["3vnyCOx6", "Vdn8bkAO", "5JwX1BET"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'fHYYHhKm' \
    --namespace $AB_NAMESPACE \
    --seasonId 'teGtvlF2' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'PuMyPkqR' \
    --namespace $AB_NAMESPACE \
    --seasonId 't6L2xQdv' \
    --body '{"newIndex": 55}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PXzzTkjg' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'GkDRVSdX' \
    --limit '43' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'Xib3hiDr' \
    --body '{"exp": 28, "source": "SWEAT", "tags": ["ByHPuPKk", "ZzYUAbLR", "uIiPa2VG"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '3eayCfuD' \
    --body '{"passCode": "b1gwYZaG", "passItemId": "84jpaMI1"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'CrmV1v6v' \
    --passCodes '["cdFPmaiW", "CRUyt6bt", "1Ry2SnD0"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '23IOisc4' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'EqYOoe1u' \
    --body '{"passItemId": "tBKkc2bZ", "tierItemCount": 64, "tierItemId": "jRknLJeB"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'cnLCHMZX' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'izpRcLli' \
    --body '{"count": 88, "source": "PAID_FOR", "tags": ["ExJ1QUUD", "SSZjrguQ", "TF2ioVKa"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'K9TWK1v5' \
    --from 'EpFPpX9R' \
    --limit '85' \
    --offset '99' \
    --seasonId 'OcJXWsGa' \
    --source 'SWEAT' \
    --tags '["FaETZaZ8", "yzzQxRVe", "uCUj07hh"]' \
    --to 'sLr5Z2F2' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'ZQsqVEbA' \
    --seasonId 'KGSFPR6m' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QyMZL7BR' \
    --userId 'xQN94ItR' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'gZOs5pT2' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'yx3ErBhE' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'krlFYNIU' \
    --body '{"passCode": "zM7yrbqX", "rewardCode": "dgfHRTma", "tierIndex": 71}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'WjYfJcx1' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qGJxR6W4' \
    --userId '66mVPxtN' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE