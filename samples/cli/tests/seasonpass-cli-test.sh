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
    --limit '54' \
    --offset '100' \
    --status '["RETIRED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "MemjmHDw", "defaultRequiredExp": 78, "draftStoreId": "PKYUDQKM", "end": "1991-10-12T00:00:00Z", "excessStrategy": {"currency": "1V08RK0C", "method": "CURRENCY", "percentPerExp": 27}, "images": [{"as": "4n33dP71", "caption": "CjwuSVKW", "height": 54, "imageUrl": "hfgVNaaJ", "smallImageUrl": "wXP15t0W", "width": 80}, {"as": "m851RQci", "caption": "OAVXIllj", "height": 4, "imageUrl": "4TvUMucX", "smallImageUrl": "82s8gbHx", "width": 5}, {"as": "qdT5iJea", "caption": "4JCyb32C", "height": 57, "imageUrl": "G77APN3b", "smallImageUrl": "tGejoM4D", "width": 53}], "localizations": {"77FQg2SY": {"description": "FkA4tzPb", "title": "NHqfaQc7"}, "nWl3lFbx": {"description": "EBn759iP", "title": "lSf3yOrl"}, "W8umfAhG": {"description": "rLxqXtVG", "title": "ClkkkPK0"}}, "name": "UhYxnjw2", "start": "1987-04-05T00:00:00Z", "tierItemId": "EUMYi4ft"}' \
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
    --body '{"userIds": ["a9bn3Onf", "Djhjgejo", "7zSaBpy2"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Z0inq8fP' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qJQC9TCM' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0ryxEEeb' \
    --body '{"autoClaim": true, "defaultLanguage": "awMEsaPP", "defaultRequiredExp": 53, "draftStoreId": "ljQfgvsP", "end": "1971-07-17T00:00:00Z", "excessStrategy": {"currency": "748FJVHp", "method": "NONE", "percentPerExp": 83}, "images": [{"as": "cIKPW3vC", "caption": "xehWZlo6", "height": 41, "imageUrl": "32EWGPwU", "smallImageUrl": "Sni03BZX", "width": 75}, {"as": "J2GEgd22", "caption": "XhXu5hVT", "height": 16, "imageUrl": "2FqCCwv8", "smallImageUrl": "304RL8Ld", "width": 89}, {"as": "DmQskQme", "caption": "la8OBztb", "height": 82, "imageUrl": "sUv6iuCR", "smallImageUrl": "q4ylBcpn", "width": 94}], "localizations": {"o5X8yTvG": {"description": "uZwXCpDF", "title": "Ff5bP4ly"}, "7c9hgGW4": {"description": "bBrt6F7X", "title": "pu9U2Mx0"}, "GcF7eqck": {"description": "RZGofmC6", "title": "ZknmA58W"}}, "name": "Eu8CqS6w", "start": "1978-09-02T00:00:00Z", "tierItemId": "9XXIGXc8"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'G2CcQeSM' \
    --body '{"end": "1972-11-15T00:00:00Z", "name": "CXGVvaCw", "start": "1991-05-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'FSGLi9Qj' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'tAwbTisX' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'PZ8uUfcw' \
    --body '{"autoEnroll": false, "code": "b2iyo6v3", "displayOrder": 25, "images": [{"as": "RHSeI6VE", "caption": "q2rnyrHG", "height": 52, "imageUrl": "KZibDTi2", "smallImageUrl": "vmU0wwlg", "width": 10}, {"as": "4KsWugU6", "caption": "CRzUTP6b", "height": 72, "imageUrl": "Qd7nkK5D", "smallImageUrl": "vdwdTS8P", "width": 33}, {"as": "8WU1zwI4", "caption": "7Fw8dOi8", "height": 45, "imageUrl": "UUDiYX39", "smallImageUrl": "byLTBmkT", "width": 75}], "localizations": {"rJFUaOCH": {"description": "NVh1gS9C", "title": "xjoWiorB"}, "Eu2OdkGZ": {"description": "NSRbJcyV", "title": "f90WuWpW"}, "7cEoUNL5": {"description": "HJL5P0RL", "title": "8al7DlRQ"}}, "passItemId": "1QBIKRhO"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'CdPyHwic' \
    --namespace $AB_NAMESPACE \
    --seasonId '6G9omhRh' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'hfFbUsCv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ra8SVTC2' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'JZqiD76h' \
    --namespace $AB_NAMESPACE \
    --seasonId 'eQ5q0t0s' \
    --body '{"autoEnroll": false, "displayOrder": 9, "images": [{"as": "y3Z4BpEc", "caption": "E5BN2Gc8", "height": 78, "imageUrl": "zfqYPgFi", "smallImageUrl": "IN0jf5qZ", "width": 36}, {"as": "VoDtEGe0", "caption": "XY6Fup6C", "height": 98, "imageUrl": "RY4ia1iY", "smallImageUrl": "KdqZncIJ", "width": 89}, {"as": "sZuVUwYs", "caption": "RHyQjdby", "height": 93, "imageUrl": "8yQX137v", "smallImageUrl": "vyqdDEty", "width": 43}], "localizations": {"aLZ6SlSC": {"description": "1jfe5JeG", "title": "ZP3QgThf"}, "Xx1Sb7YT": {"description": "S5HPGxVh", "title": "BC94Dhh5"}, "YGdAvXrP": {"description": "BDRsWr3R", "title": "Sldaw77l"}}, "passItemId": "F5J7wJlm"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '500R8ZuD' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Oi5Gj1O6' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '40zP7tCB' \
    --q 'EZv9wE6c' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'RRwkKJxn' \
    --body '{"code": "PrYjzl3t", "currency": {"currencyCode": "wfuGWAuu", "namespace": "WB91JVa0"}, "image": {"as": "R0LbiaQ5", "caption": "sFrCNxXh", "height": 12, "imageUrl": "EdtOHNAL", "smallImageUrl": "cGVyoomi", "width": 9}, "itemId": "YwxnESYg", "quantity": 55, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '7ZBghL3P' \
    --namespace $AB_NAMESPACE \
    --seasonId 'oK3hbrUf' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'vsYpAQYy' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZeOdpkFH' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'ElzPzy1o' \
    --namespace $AB_NAMESPACE \
    --seasonId 'IEOJHnS5' \
    --body '{"currency": {"currencyCode": "HxTQQfZJ", "namespace": "SGxw2gSa"}, "image": {"as": "swJwhlnI", "caption": "Zc7O4V79", "height": 54, "imageUrl": "cjODjaIP", "smallImageUrl": "Dcqz2QjR", "width": 46}, "itemId": "xKrYhdoa", "nullFields": ["GsPJQ4Cm", "MkCu5Tqu", "jq2fIJW7"], "quantity": 76, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'rQXtYXHt' \
    --limit '13' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'k5DuFNr6' \
    --body '{"index": 18, "quantity": 84, "tier": {"requiredExp": 68, "rewards": {"VWBrpstn": ["rAVmTCY7", "rsj8wVoq", "wyzdQk7x"], "5H8e1IbG": ["ZPX5krXX", "Zfeh04AW", "ld63qQe8"], "co7aqC4H": ["ww5YEtwh", "0PguG350", "BQAFfdCF"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'aYsv0OhM' \
    --namespace $AB_NAMESPACE \
    --seasonId 'JxsH8H5l' \
    --body '{"requiredExp": 27, "rewards": {"mMpr5QC4": ["DEw6DSlT", "gzRYitn1", "sIyHatJT"], "lCv8jrn4": ["jbf5jS4n", "JEKlpT2x", "klPLtUl6"], "x7GFgM9u": ["ZNs2Uhrb", "SQHoJlTE", "PNSxknaW"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'VmFEiD1S' \
    --namespace $AB_NAMESPACE \
    --seasonId '0J4iI1vL' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'BNrWGJko' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XMXAJkuD' \
    --body '{"newIndex": 57}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'A8k9qjvO' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'ZsAJxcbx' \
    --limit '10' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '35oES4wU' \
    --body '{"exp": 81, "source": "SWEAT", "tags": ["VqR06rri", "ye01diDX", "nAMivlfM"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'j3ynkAMZ' \
    --body '{"passCode": "duKeuUK1", "passItemId": "lBOhvjun"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'e9qd6i4L' \
    --passCodes '["k3oaVBlx", "qMnd3GCJ", "rYCvEhXd"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId '4FI0ANTI' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'jGnNkGjF' \
    --body '{"passItemId": "OkXicg3h", "tierItemCount": 62, "tierItemId": "r0JByl9b"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'UVsuKqlb' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'Q22cdnS1' \
    --body '{"count": 29, "source": "PAID_FOR", "tags": ["UaDqik6G", "6ngoedqx", "iC0kDihI"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Wy5qOWCn' \
    --from '4FVRYZn5' \
    --limit '86' \
    --offset '1' \
    --seasonId 'Di3AA6TN' \
    --source 'PAID_FOR' \
    --tags '["FdbtGDaM", "ZRzn1dEm", "POQb8IzI"]' \
    --to 'sQOIxAyF' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '2QO7s6xZ' \
    --seasonId '1Gcln9XT' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AzKGZOiJ' \
    --userId 'WB8iDCVK' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'JC2z769M' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '7TXCXsIA' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '1x6kkjFS' \
    --body '{"passCode": "p79ZJ3Ot", "rewardCode": "6NJQJ3P1", "tierIndex": 41}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'MZEV24oH' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CmbjN0h6' \
    --userId 'K7ATlfYr' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE