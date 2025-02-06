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
    --limit '64' \
    --offset '68' \
    --status '["PUBLISHED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "cx8CoTqs", "defaultRequiredExp": 85, "draftStoreId": "jNyqxgC3", "end": "1984-08-07T00:00:00Z", "excessStrategy": {"currency": "sn5ey1eL", "method": "CURRENCY", "percentPerExp": 58}, "images": [{"as": "LiejRXVB", "caption": "ulAbi5re", "height": 4, "imageUrl": "fYxwHxpd", "smallImageUrl": "OIar1RpT", "width": 35}, {"as": "ERCgFXQ3", "caption": "2oJZPM5i", "height": 73, "imageUrl": "5JS70NM1", "smallImageUrl": "JSuhFMBn", "width": 11}, {"as": "FVxy5CTO", "caption": "7GZnwMT3", "height": 36, "imageUrl": "uEQtcpbw", "smallImageUrl": "UyRikuV0", "width": 62}], "localizations": {"pAUoGOyc": {"description": "VrKt9t23", "title": "bN4d5uk4"}, "nmpsyzhc": {"description": "P871AFy8", "title": "sUXYE0aI"}, "ZhRSbmx6": {"description": "Nxp3u0fD", "title": "yjXXuKQE"}}, "name": "JslumAUU", "start": "1983-11-13T00:00:00Z", "tierItemId": "tRhAwi4t"}' \
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
    --body '{"userIds": ["5ey1Bp4N", "3D3xYGFA", "jeiCjcXf"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'imDaX9Qs' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'RildRcXh' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NCO0TSHp' \
    --body '{"autoClaim": true, "defaultLanguage": "R50Uv75x", "defaultRequiredExp": 95, "draftStoreId": "iR34WFpb", "end": "1983-12-11T00:00:00Z", "excessStrategy": {"currency": "SbcBDEYA", "method": "NONE", "percentPerExp": 80}, "images": [{"as": "6dPX9ajS", "caption": "VA072mdS", "height": 73, "imageUrl": "OZNsjYgy", "smallImageUrl": "B7q3CcdS", "width": 42}, {"as": "MxpHUhig", "caption": "4oMgTovI", "height": 58, "imageUrl": "xTMFodTR", "smallImageUrl": "xuwnfSY1", "width": 44}, {"as": "mhNTb1uG", "caption": "AVGspFoN", "height": 89, "imageUrl": "YiuQUvNq", "smallImageUrl": "J10EgRN8", "width": 99}], "localizations": {"hzDlXvtw": {"description": "fxgAu8XZ", "title": "3l2H2QF2"}, "PMTNYCTb": {"description": "UF86drOd", "title": "7yqKi0qu"}, "KuuLjGdH": {"description": "OUeMSovY", "title": "5gCqBqRd"}}, "name": "6Lu4lJwk", "start": "1982-11-09T00:00:00Z", "tierItemId": "yzODoJjX"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GBK8VUa0' \
    --body '{"end": "1980-06-21T00:00:00Z", "name": "HOAp9HD5", "start": "1974-06-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'cxQdTEsE' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '3o0iVIop' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'CBaAMMPY' \
    --body '{"autoEnroll": false, "code": "cPoSLnxm", "displayOrder": 53, "images": [{"as": "5IvGfWjh", "caption": "ukzbpZQw", "height": 90, "imageUrl": "eH7ip1nm", "smallImageUrl": "BQycS99l", "width": 78}, {"as": "tl8nQJry", "caption": "UC2YwJy0", "height": 96, "imageUrl": "z7aMWMln", "smallImageUrl": "TFIaYh8C", "width": 88}, {"as": "gTLUFcFn", "caption": "SOTr9D8g", "height": 85, "imageUrl": "XEQyqFZn", "smallImageUrl": "g1P9OnmK", "width": 63}], "localizations": {"RevgJEsV": {"description": "a7fDRHYv", "title": "Crc0wfH8"}, "jQs5Wmng": {"description": "l41Ub5bx", "title": "FFk6UJ2Y"}, "SqJz3F80": {"description": "XoP3KrbG", "title": "vCd3py8R"}}, "passItemId": "TLkU1uNy"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'F2vz6w6s' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vS94r7Jp' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '15qfmnXP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IDNRDsk0' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'YD5IPWj3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'r9h8wtDe' \
    --body '{"autoEnroll": true, "displayOrder": 16, "images": [{"as": "mc8Znf3s", "caption": "aFBf6wZ8", "height": 91, "imageUrl": "SK0zVeEh", "smallImageUrl": "8TSWR1Ug", "width": 79}, {"as": "5BQNrAX9", "caption": "jm0mYfYT", "height": 14, "imageUrl": "zafKOH4a", "smallImageUrl": "d0FL4EzD", "width": 76}, {"as": "gKdkhLA6", "caption": "31yn1ibb", "height": 77, "imageUrl": "Jf51ffCN", "smallImageUrl": "cCzxO5ya", "width": 64}], "localizations": {"iE9LSjte": {"description": "qiuTHcXo", "title": "HJGlwKBO"}, "y1z1eU6A": {"description": "Vk68jgpU", "title": "IZbosamB"}, "D295kWnB": {"description": "Lj4fDOLg", "title": "MCtLjWiZ"}}, "passItemId": "IB0gz3QA"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QVlkzypd' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'phjvCFsn' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'KVBNdkEw' \
    --q '44BQkWOu' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'GAe5qxu8' \
    --body '{"code": "qe6ez9ij", "currency": {"currencyCode": "5EYaIkiq", "namespace": "dcBFzkJd"}, "image": {"as": "auyizrkj", "caption": "z9gqz6vw", "height": 84, "imageUrl": "o1yRALcx", "smallImageUrl": "60YtWYfn", "width": 3}, "itemId": "SRO02MBE", "quantity": 90, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'xmznngXD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dktnXYHW' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '82kwzo3e' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KoL5UdX3' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'NHcqoLCb' \
    --namespace $AB_NAMESPACE \
    --seasonId '4Gfnp5lV' \
    --body '{"currency": {"currencyCode": "PwXGzYOu", "namespace": "cid42uiy"}, "image": {"as": "Q4Kc32yW", "caption": "1iPW1q7E", "height": 86, "imageUrl": "NCV1ip45", "smallImageUrl": "MNiIKH5T", "width": 25}, "itemId": "l8dVkkhx", "nullFields": ["B5SnZPU6", "bS8Yktnp", "SSX67uKO"], "quantity": 24, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'qbe4UUIK' \
    --limit '81' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'n2MvIHiP' \
    --body '{"index": 93, "quantity": 91, "tier": {"requiredExp": 67, "rewards": {"AqZgSXX0": ["PoRT048a", "mUOgILXO", "ttLXgUFO"], "C9IqXPPP": ["CBZD0sRA", "D9yZUjKs", "H5GGr0ad"], "kHw1syP0": ["9Y1vHvYA", "uy6D5QKB", "MiC3a8wL"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'ZD1hWX7H' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ARHhjAcj' \
    --body '{"requiredExp": 8, "rewards": {"u421Zcx8": ["YG5e9kAW", "91jZAxv0", "VNDyyaOs"], "N6y0O4Ji": ["BS2CNhgH", "YvsM1Njj", "DiB6OoZs"], "0O8HcgU4": ["PxCYqa9h", "KGrFxguU", "eXsBboFA"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'Mnd95iqS' \
    --namespace $AB_NAMESPACE \
    --seasonId 'K9IQR7YG' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'CBKnIfAd' \
    --namespace $AB_NAMESPACE \
    --seasonId 'lFtEf8fw' \
    --body '{"newIndex": 88}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fSHkfCDC' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Z3Dvdw0d' \
    --limit '26' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'qhMNdYP3' \
    --body '{"exp": 35, "source": "SWEAT", "tags": ["0bWx4lPH", "mKmYO5zE", "XswmHNFm"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'ugbjVsgB' \
    --body '{"passCode": "j59VShlo", "passItemId": "LZhJRDpV"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'ZLMDEgJt' \
    --passCodes '["JVExTytX", "zuGl1ClJ", "BbeVSeqU"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'GoA22rRO' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '4RTtEEfq' \
    --body '{"passItemId": "U6c7ChpQ", "tierItemCount": 73, "tierItemId": "bpWAh7JI"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'J9BlkeQn' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'SBJ5oOfG' \
    --body '{"count": 52, "source": "SWEAT", "tags": ["IJGszkc1", "Z6E0rgbs", "TPBrrE5t"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'huk9nnz3' \
    --from 'zG6GMApx' \
    --limit '21' \
    --offset '34' \
    --seasonId 'kkSOxxfr' \
    --source 'SWEAT' \
    --tags '["Gn1EpgDK", "9pjmuuvF", "feiGh0iN"]' \
    --to '6ki9z8jX' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'fFFFyrew' \
    --seasonId 'CmKpeSzr' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1hYjpDw1' \
    --userId 'w7lKZ1uQ' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'm1mi3VPE' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '99Nc41Mv' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'nanXRZL3' \
    --body '{"passCode": "8V8AHFPK", "rewardCode": "Z8RH7eeF", "tierIndex": 4}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'xQtHmq2K' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IlZH2vNW' \
    --userId '8Zl7oLra' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE