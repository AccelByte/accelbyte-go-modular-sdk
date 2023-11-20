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
    --limit '40' \
    --offset '31' \
    --status '["PUBLISHED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "ioZ6DC80", "defaultRequiredExp": 36, "draftStoreId": "pEIJlmGx", "end": "1998-07-18T00:00:00Z", "excessStrategy": {"currency": "kdiyYX1a", "method": "NONE", "percentPerExp": 55}, "images": [{"as": "TRYegYVT", "caption": "ewJMQSJw", "height": 79, "imageUrl": "639BVrGH", "smallImageUrl": "8TmFQQ3t", "width": 55}, {"as": "gqpVlbHH", "caption": "cTis3g80", "height": 23, "imageUrl": "zJeEkQfF", "smallImageUrl": "FRlW6HSJ", "width": 68}, {"as": "vk9gU9vs", "caption": "ugVsVhT1", "height": 66, "imageUrl": "5MV5hNK4", "smallImageUrl": "RpDDC2H0", "width": 15}], "localizations": {"gxmSnwcX": {"description": "q4Dmtpg5", "title": "lECLpKZk"}, "5t8XEzHe": {"description": "Bk5HQBw0", "title": "zaVP7UXY"}, "By4lnXHo": {"description": "bWkhlRWl", "title": "rhYMYSum"}}, "name": "D9MHZhaS", "start": "1973-09-08T00:00:00Z", "tierItemId": "RVCo7AK2"}' \
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
    --body '{"userIds": ["qbBvqT8h", "kOruBr5E", "7w7DlhZp"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8qRhQ4TF' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'plhHaGss' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 't6kf7CMa' \
    --body '{"autoClaim": false, "defaultLanguage": "UgkZcwy5", "defaultRequiredExp": 73, "draftStoreId": "9kmG2vXT", "end": "1997-11-24T00:00:00Z", "excessStrategy": {"currency": "91KYJmMf", "method": "CURRENCY", "percentPerExp": 43}, "images": [{"as": "1BeKVjQX", "caption": "tksXHYBW", "height": 28, "imageUrl": "RkkJs62B", "smallImageUrl": "y6Vrq1h6", "width": 41}, {"as": "93NEvM7C", "caption": "PiJefCNa", "height": 35, "imageUrl": "NWv7VT0x", "smallImageUrl": "ZDwtpXNU", "width": 91}, {"as": "omfJYHnw", "caption": "KtyroL86", "height": 93, "imageUrl": "GAAbEV8e", "smallImageUrl": "gvNbgbcE", "width": 4}], "localizations": {"1Il7udXV": {"description": "PLwS2mcB", "title": "6GSD5GES"}, "MWQUwHhX": {"description": "COJuWXHN", "title": "vsVnkFOV"}, "wKkqk2bc": {"description": "NBu8QMaa", "title": "IqFAjibt"}}, "name": "Fxgi3Hqj", "start": "1991-07-15T00:00:00Z", "tierItemId": "eEh5Jbth"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mn0WFvl6' \
    --body '{"end": "1971-06-12T00:00:00Z", "name": "bGD3RnJ5", "start": "1994-12-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lzkPDVTs' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'q2nlZETX' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'tEPfkhUR' \
    --body '{"autoEnroll": false, "code": "7KPMgqNA", "displayOrder": 4, "images": [{"as": "bzWY7s1L", "caption": "QtTUr25B", "height": 57, "imageUrl": "ycOOOPWc", "smallImageUrl": "zAZtlmFK", "width": 5}, {"as": "5DQ2NrGR", "caption": "VB36yzYC", "height": 16, "imageUrl": "GX5OwUjA", "smallImageUrl": "utzIx7lr", "width": 73}, {"as": "SLGIl1E4", "caption": "UAyyEkhg", "height": 83, "imageUrl": "tkyJv8dd", "smallImageUrl": "8NReHdgZ", "width": 62}], "localizations": {"ccFdqVX6": {"description": "8N7HEWk8", "title": "Bwc2FQPl"}, "IqEXH51W": {"description": "AXkWegm5", "title": "vYwWV1HR"}, "nX1tJSTx": {"description": "oNUl7q5s", "title": "6vz1Vp3D"}}, "passItemId": "F0u2v4R4"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '2spJji1S' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MlhgUQJD' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'xyqQFfvK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ToJNA9Kd' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'L55sDk2J' \
    --namespace $AB_NAMESPACE \
    --seasonId 'nxWu2kdG' \
    --body '{"autoEnroll": true, "displayOrder": 50, "images": [{"as": "5cR273r4", "caption": "Y38PSWgL", "height": 76, "imageUrl": "dtqiK68v", "smallImageUrl": "bxU9A4tc", "width": 2}, {"as": "6hHM5PUo", "caption": "DW6ALSys", "height": 34, "imageUrl": "VqWrG8A5", "smallImageUrl": "YZRDD6Oc", "width": 27}, {"as": "9e1I4VnJ", "caption": "JIWU4p92", "height": 93, "imageUrl": "Yj6zkT4u", "smallImageUrl": "TytBbxWR", "width": 26}], "localizations": {"VJPHRYaR": {"description": "uxqhj7XL", "title": "vxPiPAIw"}, "EqW0HdGR": {"description": "55GbWZbr", "title": "Dtc06CVK"}, "R6AteYuh": {"description": "VZGBxlBV", "title": "9xS9hJrL"}}, "passItemId": "du0kCFUy"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Y19Y8a6p' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fpAgtZSH' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'EWQRGmft' \
    --q 'Q9pL4g7B' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'oKsGyrkk' \
    --body '{"code": "1LDD6drb", "currency": {"currencyCode": "XpAMr7Hk", "namespace": "7wmMio0E"}, "image": {"as": "vij3O0Y6", "caption": "4cTPJUGF", "height": 4, "imageUrl": "Boo8UnVl", "smallImageUrl": "qUgfZ5Mj", "width": 19}, "itemId": "9kOvsGmd", "quantity": 72, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'C4eVUEXf' \
    --namespace $AB_NAMESPACE \
    --seasonId '9RIZlGTw' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'shI2iUg5' \
    --namespace $AB_NAMESPACE \
    --seasonId '7d3jonJO' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'YvNQeVCx' \
    --namespace $AB_NAMESPACE \
    --seasonId '679gQQnD' \
    --body '{"currency": {"currencyCode": "ufHWhdAe", "namespace": "SWM9TFlx"}, "image": {"as": "C2zAEb7K", "caption": "4N3akT2x", "height": 6, "imageUrl": "TUtncPzj", "smallImageUrl": "sVSD1iUf", "width": 56}, "itemId": "dIyzGHL6", "nullFields": ["5GNZ2FWn", "d59lZ7Jj", "FOVMo4t7"], "quantity": 55, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'm4qYgsoj' \
    --limit '64' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'DEPmAht9' \
    --body '{"index": 4, "quantity": 94, "tier": {"requiredExp": 32, "rewards": {"WKimv0wE": ["PEOdR6Lo", "ZyASatqD", "JrzETtSr"], "EuhRWWgP": ["m2soSEyD", "vSBVpngm", "5vAb4vUG"], "1N1Fwhrv": ["zQljjLwT", "bbrwgUlr", "l11wWY0u"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'hRmfTMi6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KfBQftVY' \
    --body '{"requiredExp": 71, "rewards": {"whtgZbqW": ["EM0SdHP8", "C0wrVUYa", "FrEJfC4O"], "owXrs2Ww": ["i2Sqxl90", "cAZbTrGX", "PeAVJboO"], "6GjoQ1ND": ["wLpBNDwA", "XcmcD1Gx", "c8ssZrnz"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'yhrD5WNd' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MowAcLmu' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'ZfwUMPrz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'c7YffE9l' \
    --body '{"newIndex": 92}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WcQzFkjT' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'PJdXdxY5' \
    --limit '44' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'kGHB4fzP' \
    --body '{"exp": 10, "source": "SWEAT", "tags": ["WinSjtii", "pfEXdDYj", "l3iWGlnz"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'hD16KPIj' \
    --body '{"passCode": "CyzUg8oR", "passItemId": "UIkqsS3H"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'hzVhqmDe' \
    --passCodes '["u6EkNR3O", "gN0df64q", "Yiw4Cgtr"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '5l4vUcps' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'apAKk3sQ' \
    --body '{"passItemId": "nKMYmll2", "tierItemCount": 62, "tierItemId": "HrpPuzo7"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'kcrQHLhU' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'O4fm2BNQ' \
    --body '{"count": 93, "source": "PAID_FOR", "tags": ["KJuuFjcH", "DaoN5TQf", "gO8orJzk"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'OAFXqtnY' \
    --from 'M3cWvFda' \
    --limit '50' \
    --offset '1' \
    --seasonId 'x26HyRnj' \
    --source 'SWEAT' \
    --tags '["gWjBsaya", "ZHP0oy7h", "8Uwo5LYZ"]' \
    --to 'P9NJDDd8' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Tvy2bcDg' \
    --seasonId 'Ufffi2lp' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uFHYqDp6' \
    --userId 'P1g6uYsK' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language '95xjuWCx' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'jSDes9AJ' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'SIFMa4xb' \
    --body '{"passCode": "UbSXMRHt", "rewardCode": "wupsqt2p", "tierIndex": 26}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'OpYPMBry' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Zwx9Qhkt' \
    --userId 'lVLNvXIi' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE