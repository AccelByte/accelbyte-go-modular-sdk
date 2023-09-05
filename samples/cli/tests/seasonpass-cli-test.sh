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
    --limit '94' \
    --offset '5' \
    --status '["DRAFT", "RETIRED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "p9IUJnlr", "defaultRequiredExp": 59, "draftStoreId": "Rg5dbVYl", "end": "1984-11-22T00:00:00Z", "excessStrategy": {"currency": "aFtT2hyX", "method": "NONE", "percentPerExp": 50}, "images": [{"as": "fndrNXxP", "caption": "JvpiEFv9", "height": 46, "imageUrl": "duYcbtsy", "smallImageUrl": "dDMyIoGO", "width": 82}, {"as": "VxRHiW3z", "caption": "5RKtmEVO", "height": 4, "imageUrl": "s967MVC5", "smallImageUrl": "0o5hqLIz", "width": 17}, {"as": "9XeKp8AS", "caption": "E1chJU9l", "height": 99, "imageUrl": "SgoHcRzx", "smallImageUrl": "pzakK6FI", "width": 91}], "localizations": {"FldCtrrX": {"description": "BBEwnrMM", "title": "Sc5PeW6F"}, "vQrRFBcC": {"description": "qJk7mG0C", "title": "GfdWS4Mk"}, "47UCRWy1": {"description": "nnpc0Tp1", "title": "PVIaQ48l"}}, "name": "LA7mMNyp", "start": "1983-06-01T00:00:00Z", "tierItemId": "dbLFSFqF"}' \
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
    --body '{"userIds": ["74VIKwUH", "0vs8y5ce", "DZfJyUWT"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'C4VgUb6F' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JC4x9Yj7' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3O3ZW312' \
    --body '{"autoClaim": true, "defaultLanguage": "b03uM8RI", "defaultRequiredExp": 95, "draftStoreId": "hv6tW6c0", "end": "1978-10-07T00:00:00Z", "excessStrategy": {"currency": "RBDfmIT3", "method": "NONE", "percentPerExp": 70}, "images": [{"as": "LqJjt2sa", "caption": "ro8u2K3S", "height": 91, "imageUrl": "Nkouv1UW", "smallImageUrl": "2qkhs74i", "width": 8}, {"as": "pmkJeqSb", "caption": "NEyoqxTq", "height": 65, "imageUrl": "6Ls4aUWU", "smallImageUrl": "F4gbokPY", "width": 18}, {"as": "80yTY3EB", "caption": "nGQPablL", "height": 10, "imageUrl": "gZZ2MwBp", "smallImageUrl": "L6xgYSAi", "width": 80}], "localizations": {"eZxJ49Tj": {"description": "hxcKYzgo", "title": "gsu2MP5i"}, "OWB3AgC5": {"description": "xnIJc7Iw", "title": "wcVzkmcx"}, "mjW23AWE": {"description": "Ka0rwa4T", "title": "Tf5Yw9SM"}}, "name": "7ZtyOK76", "start": "1996-12-05T00:00:00Z", "tierItemId": "uIJTXfKq"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ncIk8rz6' \
    --body '{"end": "1971-06-27T00:00:00Z", "name": "eoOq8DJo", "start": "1984-06-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'C64jex1I' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'VfqRBCBy' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'Z0s7lYBm' \
    --body '{"autoEnroll": false, "code": "S99ekI5g", "displayOrder": 35, "images": [{"as": "OKSYOJec", "caption": "mMAzx5D4", "height": 79, "imageUrl": "ZqOOIxDx", "smallImageUrl": "JDbcbuTJ", "width": 59}, {"as": "DFsNSz4l", "caption": "lIxSkl0q", "height": 83, "imageUrl": "8eD0FoQ5", "smallImageUrl": "ydxVdWJy", "width": 11}, {"as": "0Ba93MbT", "caption": "ZOZAtUDq", "height": 90, "imageUrl": "lumnlsFs", "smallImageUrl": "JVp3bAxL", "width": 16}], "localizations": {"SbTJmQYA": {"description": "quoQCVm1", "title": "4xh4UnZd"}, "QTIglPlM": {"description": "P5mVsRsx", "title": "zAZIkXo6"}, "vIsdjUUp": {"description": "Sg39UA1G", "title": "B9u1euBR"}}, "passItemId": "NiatAeSQ"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'R4snHYyv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'PtAYmhYV' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '9iSqoPA0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Dwu3J4pv' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'd1ny3N5p' \
    --namespace $AB_NAMESPACE \
    --seasonId '2t67IUCW' \
    --body '{"autoEnroll": false, "displayOrder": 16, "images": [{"as": "zSJfTKso", "caption": "W79TbPz9", "height": 25, "imageUrl": "XcagUzMH", "smallImageUrl": "xKsdqzy0", "width": 22}, {"as": "EmBcJBFl", "caption": "uSUVB88r", "height": 73, "imageUrl": "4xutWUib", "smallImageUrl": "fJuASgZP", "width": 90}, {"as": "ZCEC4ms6", "caption": "2qMoaYFB", "height": 79, "imageUrl": "LFKD9bNO", "smallImageUrl": "1VmbNI3O", "width": 9}], "localizations": {"kEBfpEnB": {"description": "hc5qCnyj", "title": "go1OnzUS"}, "pBvDSbOO": {"description": "08EZXhcn", "title": "NE96Ixgi"}, "jIISBl6E": {"description": "9TFnk5MD", "title": "Ht9MtTo1"}}, "passItemId": "a4XjOWb3"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Veo4Q91T' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pZSx4ea6' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'PqYbSIbr' \
    --q 'zcPWsM29' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId '3fNvBCiU' \
    --body '{"code": "l3bmW4hr", "currency": {"currencyCode": "kQNm3Pcm", "namespace": "Aq3YclXb"}, "image": {"as": "r2mjKNmP", "caption": "vcaXEZFe", "height": 74, "imageUrl": "m2IlsIQg", "smallImageUrl": "tFZV1TX3", "width": 64}, "itemId": "L7yuBAxK", "quantity": 34, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'mLs9ZNu4' \
    --namespace $AB_NAMESPACE \
    --seasonId '925WV8on' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'EuHcLaEU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'hXXIjzfp' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'QaO4Mk9q' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XzxFTLLi' \
    --body '{"currency": {"currencyCode": "CprsWUyf", "namespace": "qLGFzziZ"}, "image": {"as": "SfXFrAAx", "caption": "yx0HkmEt", "height": 67, "imageUrl": "uc0p6Ha4", "smallImageUrl": "QyZ73wgk", "width": 3}, "itemId": "9zWfVutm", "nullFields": ["hlnC1PAt", "ZJSYZvlA", "HcGZALeD"], "quantity": 11, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'FqyUg7XF' \
    --limit '15' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'OyDxtlSv' \
    --body '{"index": 51, "quantity": 49, "tier": {"requiredExp": 98, "rewards": {"gVKQNP8W": ["NS2ofaMT", "ov0O9zhG", "NCasM8uJ"], "CfQqmRoO": ["SwaufHIy", "lliqG17O", "x5ovRPyb"], "FpsOkYlJ": ["LO2aTkOZ", "bQqY5i5r", "yuRhrcIE"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '3Xm4k8Ww' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EuvCO5YS' \
    --body '{"requiredExp": 15, "rewards": {"WiBzQuPo": ["KG6T1s9K", "XjoZYe48", "M3qtfhkS"], "5gALYFr1": ["turT571K", "uHP1WB8d", "e1eVWXMN"], "GB5wiG0f": ["iX2aC1wL", "Pdga1VLc", "7YzC89uP"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '91o7Cj0I' \
    --namespace $AB_NAMESPACE \
    --seasonId '8dt5yWIW' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'DyxG9JEA' \
    --namespace $AB_NAMESPACE \
    --seasonId '3I615OGH' \
    --body '{"newIndex": 36}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GSWyGJoT' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'gfRWgfz8' \
    --limit '64' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'fZ7cdO4x' \
    --body '{"exp": 41, "source": "PAID_FOR", "tags": ["AAelmh8V", "PRN88Lta", "6dCb4WMW"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'BLYvQx2K' \
    --body '{"passCode": "qgOwr9gS", "passItemId": "XRnANP9M"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'OcyEC9uV' \
    --passCodes '["8GTYZR0i", "PZO0cStk", "vahoBiw0"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'GCU6YFUt' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'ywo4qcm7' \
    --body '{"passItemId": "aKjPz5rH", "tierItemCount": 60, "tierItemId": "L5keLoEM"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'PAXG9LDv' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'wBjo1TJD' \
    --body '{"count": 95, "source": "SWEAT", "tags": ["d3OgnP3D", "walxHjVZ", "QHPU1pix"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'B2XqA9G1' \
    --from 'zVREeTvr' \
    --limit '20' \
    --offset '93' \
    --seasonId '79gFSAfF' \
    --source 'PAID_FOR' \
    --tags '["ViKY545M", "aQ64JztJ", "nfGD7nO8"]' \
    --to '0eQaxZEU' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'NqHlrs6g' \
    --seasonId '4jEdiiEO' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9ATSa1od' \
    --userId 'VWaHcT0v' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'S7OsiqbS' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'b21RUdbe' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'KNXouoZV' \
    --body '{"passCode": "ohK5iyqR", "rewardCode": "GeqOwfvP", "tierIndex": 23}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'AQlZcjTy' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KA5vyqh1' \
    --userId 'w3xJxOe4' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE