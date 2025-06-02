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
    --offset '27' \
    --status '["PUBLISHED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "wLcICJSL", "defaultRequiredExp": 25, "draftStoreId": "9iihUeqp", "end": "1987-08-09T00:00:00Z", "excessStrategy": {"currency": "BpaTY7IV", "method": "NONE", "percentPerExp": 44}, "images": [{"as": "DM2sPSPa", "caption": "EbWQvKqb", "height": 45, "imageUrl": "YMZ1YHZ3", "smallImageUrl": "fSOoRuma", "width": 14}, {"as": "6XooZH7w", "caption": "erFTKv4v", "height": 19, "imageUrl": "zcvE72Fw", "smallImageUrl": "shyWKpEf", "width": 37}, {"as": "X2oe2lca", "caption": "R9UcMQYK", "height": 41, "imageUrl": "Utaw1rGe", "smallImageUrl": "0DnfNWPD", "width": 43}], "localizations": {"NZBHtsR2": {"description": "a96LIaXF", "title": "py7yiLHu"}, "mGFu4UXR": {"description": "uEUEkryS", "title": "wg8O7KrL"}, "XISSUn2M": {"description": "spkO1gRG", "title": "eFsmpVvM"}}, "name": "fbs6ktOq", "start": "1977-01-26T00:00:00Z", "tierItemId": "qGmO9Oo3"}' \
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
    --body '{"userIds": ["Im1S3HKG", "YsdGIIBn", "3p82szjF"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'UqMx9e4m' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dzo1CAfq' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'c1IjSXr9' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3WlT6hro' \
    --body '{"autoClaim": false, "defaultLanguage": "XzOecMqh", "defaultRequiredExp": 83, "draftStoreId": "TRg83kfh", "end": "1976-03-25T00:00:00Z", "excessStrategy": {"currency": "mw44e6CI", "method": "NONE", "percentPerExp": 80}, "images": [{"as": "lQJzdyaE", "caption": "cWvA12gm", "height": 59, "imageUrl": "RibRJsDR", "smallImageUrl": "BIC2yt8h", "width": 36}, {"as": "NyNw6Qbl", "caption": "Wm9cmJ9j", "height": 59, "imageUrl": "y0m5Alpl", "smallImageUrl": "fu1a8OF0", "width": 62}, {"as": "BlM47b3o", "caption": "H0WN0VKw", "height": 89, "imageUrl": "jxWarTw3", "smallImageUrl": "cw4agz36", "width": 44}], "localizations": {"ArBJlNv4": {"description": "gdUq0C1N", "title": "sztPJC2V"}, "tk96ZAOt": {"description": "6E0ON9yI", "title": "VEbXWmHZ"}, "d0twRhGS": {"description": "0cKc58wD", "title": "NWiI9NCK"}}, "name": "yTwzz1d9", "start": "1996-08-26T00:00:00Z", "tierItemId": "NlX77GBL"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Se0tJgl7' \
    --body '{"end": "1974-03-14T00:00:00Z", "name": "2QA8TXSm", "start": "1999-06-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0znKrH5D' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '01LeufFi' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'gY6KyqbW' \
    --body '{"autoEnroll": false, "code": "ZYCa1CFo", "displayOrder": 32, "images": [{"as": "OWrDxT6j", "caption": "sSRaegMf", "height": 89, "imageUrl": "WMxdnwnM", "smallImageUrl": "SaUSaDPn", "width": 38}, {"as": "xMfbVo5A", "caption": "EvRFy8D5", "height": 79, "imageUrl": "2W8i106T", "smallImageUrl": "nmspcjWR", "width": 31}, {"as": "nDtkip8N", "caption": "lx89YGd7", "height": 65, "imageUrl": "owy7NeBj", "smallImageUrl": "7Z3MyT21", "width": 18}], "localizations": {"wCoAQCw3": {"description": "MOxuazu8", "title": "MOl7MRaN"}, "FuRVwiSr": {"description": "2Hpwslkd", "title": "8lC8xvhK"}, "yzjpX8y5": {"description": "IH6f1O0H", "title": "5MdPVBKM"}}, "passItemId": "91vRSBo2"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'kcsa0SCe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HaPRcKy7' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'PYazFsqC' \
    --namespace $AB_NAMESPACE \
    --seasonId 'NHqaKUmQ' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'G2MIPBr3' \
    --namespace $AB_NAMESPACE \
    --seasonId '8ujtizZi' \
    --body '{"autoEnroll": false, "displayOrder": 4, "images": [{"as": "Hou0xQzR", "caption": "ynLE6BWu", "height": 18, "imageUrl": "s4vsbEXW", "smallImageUrl": "DiTLsazn", "width": 73}, {"as": "XBQiaz3T", "caption": "OGpxtZJO", "height": 19, "imageUrl": "XdHwkcim", "smallImageUrl": "qBBuFSXm", "width": 41}, {"as": "HnH4Y0iO", "caption": "8O1RVBi3", "height": 4, "imageUrl": "NTVkMxxo", "smallImageUrl": "471waRnc", "width": 32}], "localizations": {"QDy7RZzL": {"description": "MP7OQjp1", "title": "lvLTSgrW"}, "p87Ro9Bi": {"description": "3Bx9aWsk", "title": "rvKNPGv8"}, "QQvVMtbE": {"description": "2hDMRd2j", "title": "Jxfozbl5"}}, "passItemId": "cu2uMqNP"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'D45CpZZk' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nvqU5s0c' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'GkxFOZKy' \
    --q 'bjVggQ7N' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '5vB8Oou1' \
    --body '{"code": "OXVUXImh", "currency": {"currencyCode": "6VjaTe8U", "namespace": "Q2VQvv2m"}, "image": {"as": "NQUok3be", "caption": "fclok3KW", "height": 81, "imageUrl": "x1WjFId8", "smallImageUrl": "xXaVLfl8", "width": 92}, "itemId": "ZfqRZze8", "quantity": 44, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'qMVlJD0P' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ndVmV8Co' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '9MsCzYHl' \
    --namespace $AB_NAMESPACE \
    --seasonId '26iwAg6P' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'O16pAXpl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'qCdOxhL4' \
    --body '{"currency": {"currencyCode": "nkj8CmMp", "namespace": "IDzu7TGl"}, "image": {"as": "wIdJ3aFe", "caption": "Hekrv23L", "height": 90, "imageUrl": "HwVumunj", "smallImageUrl": "Yt04SFjL", "width": 39}, "itemId": "x22gf2Mu", "nullFields": ["DmhLhi9J", "nIewQfcm", "dKe2BkBH"], "quantity": 62, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'OFJlh4c6' \
    --limit '57' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'zHqwTZt9' \
    --body '{"index": 28, "quantity": 96, "tier": {"requiredExp": 27, "rewards": {"IRq75eYS": ["dYYR3iIC", "cWiht98R", "bXze6Oab"], "xA16zaEO": ["3xZj408V", "wzTzYJ2M", "aTO0rGpV"], "JrRNjT9I": ["8rVlbiqr", "mD5vaKeh", "PcZ7n4E5"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'EhgZF9Om' \
    --namespace $AB_NAMESPACE \
    --seasonId 'h2NQnCZn' \
    --body '{"requiredExp": 39, "rewards": {"eBatXzgU": ["f6o2JAaH", "G1f7ingu", "xE0r2D6C"], "wkYYw8j7": ["MtQqwB5O", "8cMpPTVk", "9pr3rdx5"], "7dyCRcGE": ["5ZROCLYF", "CdXSHvsW", "31oy7v9z"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'suselsBY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SmqI0tav' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'D4bTpcoG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bg3dUdgI' \
    --body '{"newIndex": 83}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YyQkNzy1' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'RlGBokIr' \
    --limit '26' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'JXIqCo8T' \
    --body '{"exp": 32, "source": "PAID_FOR", "tags": ["OvwzS80b", "Azm1JsAf", "hu7PldQf"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '5XFr0Tt9' \
    --body '{"passCode": "P2AQejGh", "passItemId": "JJs6mCNd"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'AZ3ouTYX' \
    --passCodes '["v4Eqcl2K", "VDCBxEUk", "BRrBNpVZ"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'dvYAP0sd' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'dwC3btAp' \
    --body '{"passItemId": "YXdG1h9u", "tierItemCount": 15, "tierItemId": "tYhX7aDC"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'HIQqjxrM' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'QWnbfPZw' \
    --body '{"count": 62, "source": "SWEAT", "tags": ["wTQDteTT", "GHn4e8Y4", "2Lw3ZaB2"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '2afukAaD' \
    --from 'qjEh77DL' \
    --limit '94' \
    --offset '26' \
    --seasonId '1xrpOmtO' \
    --source 'PAID_FOR' \
    --tags '["qKGcbwix", "rnAnGC5I", "TftPOadK"]' \
    --to 'QGffIxN4' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '4iIqMvLp' \
    --seasonId 'gIyhQoZb' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vsT02CVs' \
    --userId 'IGdnaXmV' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '7C23VN65' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'F67Edgly' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'yXSUh4Zz' \
    --body '{"passCode": "vhPRlC7V", "rewardCode": "3XiRBUom", "tierIndex": 33}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'yzvSFWL2' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'd7hn07nK' \
    --userId 'mbLohj87' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE