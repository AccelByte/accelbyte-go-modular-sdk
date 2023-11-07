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
    --limit '92' \
    --offset '62' \
    --status '["RETIRED", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "egxB2Ylj", "defaultRequiredExp": 94, "draftStoreId": "eeHBMsrC", "end": "1971-05-31T00:00:00Z", "excessStrategy": {"currency": "zPU6qy4M", "method": "CURRENCY", "percentPerExp": 11}, "images": [{"as": "vnUrpbnS", "caption": "oqq4xuW9", "height": 76, "imageUrl": "YpRuhh1u", "smallImageUrl": "jPXjehZj", "width": 19}, {"as": "aiy8rzuR", "caption": "nraDEvQ2", "height": 35, "imageUrl": "RsImPlxF", "smallImageUrl": "ISceo29h", "width": 71}, {"as": "YDBq7LWm", "caption": "34JoBVqe", "height": 28, "imageUrl": "i6aqp8as", "smallImageUrl": "Lar9GvYK", "width": 13}], "localizations": {"8OUycLL3": {"description": "nMskoABC", "title": "bwRKP8bO"}, "2g5q3ff2": {"description": "gJGdBxuX", "title": "VKHYjhK3"}, "VCkYzBFP": {"description": "lFkIwW8S", "title": "x9049SLt"}}, "name": "v22Jh9gt", "start": "1988-03-13T00:00:00Z", "tierItemId": "lnXhmSKR"}' \
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
    --body '{"userIds": ["WkgilDKW", "5YDQF9yP", "mAY1hQwF"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rUKI4ij2' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'l0HaNekb' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kXGoHwgJ' \
    --body '{"autoClaim": true, "defaultLanguage": "a54hXVoE", "defaultRequiredExp": 25, "draftStoreId": "mb4yjn89", "end": "1996-04-13T00:00:00Z", "excessStrategy": {"currency": "uWKk0XoH", "method": "NONE", "percentPerExp": 81}, "images": [{"as": "UwJlLww7", "caption": "yzGaTgDu", "height": 18, "imageUrl": "CLj9UOg7", "smallImageUrl": "al1wHTze", "width": 56}, {"as": "cAtAmuAV", "caption": "HY0TX4ya", "height": 46, "imageUrl": "1eyOjJnD", "smallImageUrl": "ZK7zKhGJ", "width": 59}, {"as": "qaVo47Il", "caption": "pBamGspa", "height": 43, "imageUrl": "o6claJkL", "smallImageUrl": "VrUrkC6T", "width": 43}], "localizations": {"T8SzktD8": {"description": "MFaaxWvW", "title": "7f3ngRZS"}, "i609953M": {"description": "AfDR9nqD", "title": "CjlxAQaX"}, "zkCuu8DY": {"description": "oUUZoqUY", "title": "E6YchviJ"}}, "name": "aBiFlFr0", "start": "1991-05-20T00:00:00Z", "tierItemId": "TV9ZE14M"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4jzt85aq' \
    --body '{"end": "1980-01-20T00:00:00Z", "name": "PP7cQcSW", "start": "1983-10-10T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'to9EaOo1' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'ETMjdjIr' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'ar2xXWDE' \
    --body '{"autoEnroll": false, "code": "EPVbDL6h", "displayOrder": 22, "images": [{"as": "cbcMsaAt", "caption": "9bZpUaYG", "height": 9, "imageUrl": "nWUTRWJs", "smallImageUrl": "1F5dxLXX", "width": 76}, {"as": "doZERbpe", "caption": "Rbl8BuRt", "height": 47, "imageUrl": "UYEIKFRk", "smallImageUrl": "EQdipiqF", "width": 74}, {"as": "CEb49OU4", "caption": "PwHVqixV", "height": 22, "imageUrl": "4cy9FvKX", "smallImageUrl": "rpUBWpBk", "width": 33}], "localizations": {"gIq5Wr9m": {"description": "oEfvfkF0", "title": "3bsRNAqS"}, "EFKjZ5o4": {"description": "SpFzstuy", "title": "jv03O2Wf"}, "I2rnqBRD": {"description": "BeUIq8CT", "title": "waNrciiS"}}, "passItemId": "9TCCPj1O"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'EUk7PNT3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WG5xIgWK' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'N0cQ8mJa' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wXokeAiC' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '7JKPyqga' \
    --namespace $AB_NAMESPACE \
    --seasonId 'CRDjtEcP' \
    --body '{"autoEnroll": true, "displayOrder": 89, "images": [{"as": "Cfh2ddOe", "caption": "5WFoNVQW", "height": 32, "imageUrl": "KTcMsVwC", "smallImageUrl": "Sd93eX6X", "width": 61}, {"as": "rdJnePnZ", "caption": "m2Dq5D0e", "height": 14, "imageUrl": "xlbApBVw", "smallImageUrl": "HCShYhYM", "width": 10}, {"as": "fecl6aZs", "caption": "IR44I9I0", "height": 36, "imageUrl": "xnc4jdhu", "smallImageUrl": "zRVJXFg7", "width": 68}], "localizations": {"W0K3OIjh": {"description": "pBOeeAdM", "title": "wmNMVimt"}, "SbLK9iCn": {"description": "78z1kV2c", "title": "cebsgRY2"}, "HDz86lQg": {"description": "KH9FDlgN", "title": "OddwR6eB"}}, "passItemId": "Y9Duf4N9"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NbharNa1' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Klg53EJM' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'cAjtR5nH' \
    --q 'OYcFYxgn' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'yY6GaQ2C' \
    --body '{"code": "la0GWU0X", "currency": {"currencyCode": "gfQGJY6Q", "namespace": "mUxwbl9t"}, "image": {"as": "yAAd1Dcu", "caption": "NkGf7Us8", "height": 39, "imageUrl": "00q9qNne", "smallImageUrl": "CIfIHR8f", "width": 16}, "itemId": "Yd7FcVsV", "quantity": 53, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'zSKTbcPF' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eMhuRTtm' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'qRd7JmEx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PIMYRTMJ' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'FLfuYBO1' \
    --namespace $AB_NAMESPACE \
    --seasonId 'sc9k3m6N' \
    --body '{"currency": {"currencyCode": "SeFhAEVm", "namespace": "uV4lmVeP"}, "image": {"as": "SEzntgYZ", "caption": "jAGMFncG", "height": 32, "imageUrl": "qv89otaz", "smallImageUrl": "TLB1hhzM", "width": 14}, "itemId": "zhJYIAmT", "nullFields": ["8L3TZgMA", "Mh9jyt4S", "QMTYaPco"], "quantity": 16, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '4d6JXcHT' \
    --limit '71' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'd7YTVIgy' \
    --body '{"index": 23, "quantity": 48, "tier": {"requiredExp": 75, "rewards": {"59nHJhq4": ["8VvtOKKw", "Sekk53Rg", "SLodjm9o"], "ndApmBNz": ["Tw6lM2Jg", "FIXl8gsH", "zKz4SbTl"], "ne6mbJaS": ["GclYCMje", "K2MtinTt", "ZXT06g5w"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '70tSmWCZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Y2X98JkX' \
    --body '{"requiredExp": 74, "rewards": {"9N5hxbSB": ["lJmKNPww", "vmINI0gU", "AU83CsgA"], "AdulEuBO": ["VzjKpwRB", "tgLT8TFH", "jINORr2u"], "sney0LwG": ["dlwiuWJi", "XpQFNJ5r", "US9dp0Jd"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'odBsVud6' \
    --namespace $AB_NAMESPACE \
    --seasonId '5jH3q1s6' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '8AlBuosW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vkjIaZOe' \
    --body '{"newIndex": 79}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vkLezsJg' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'L22sFVGO' \
    --limit '30' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'So1imD3b' \
    --body '{"exp": 63, "source": "SWEAT", "tags": ["HhTOTM7R", "ndRHe1BM", "dZ9olZas"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'BOXUazFb' \
    --body '{"passCode": "YAxIQXPG", "passItemId": "0NKWDRNr"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'UVCcTTeB' \
    --passCodes '["tIFf4VEi", "sETGBJxw", "WycMRoPk"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'HlzBOQDa' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'GnacFcHj' \
    --body '{"passItemId": "POTRzfRK", "tierItemCount": 12, "tierItemId": "ccerqtK3"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'UoDgTgWg' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'g7YM8LH8' \
    --body '{"count": 3, "source": "SWEAT", "tags": ["k3bXmfE7", "zUUrUC6a", "JXZbZpLD"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'ND07g1Ks' \
    --from 'zjyY2EH4' \
    --limit '56' \
    --offset '82' \
    --seasonId '6BWGdnTh' \
    --source 'PAID_FOR' \
    --tags '["7VfsRTgD", "HhH42qdA", "AF61Cqt1"]' \
    --to 'OQNDuCTT' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'kSFcsgPe' \
    --seasonId '5glKUI6l' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZtkFdscJ' \
    --userId '5vtk4EMD' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'OPKyw6iD' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'eGgDmKRN' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '0EGvTfnv' \
    --body '{"passCode": "L2HvJLId", "rewardCode": "JpyFBPGZ", "tierIndex": 73}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'nLAuiSFH' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'n3WH4hWv' \
    --userId 'EBJ20a6A' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE