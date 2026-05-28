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
    --limit '65' \
    --offset '75' \
    --status '["RETIRED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "X3lcjwcd", "defaultRequiredExp": 15, "draftStoreId": "Mc9ojUIU", "end": "1972-10-10T00:00:00Z", "excessStrategy": {"currency": "kHQxhRbK", "method": "NONE", "percentPerExp": 39}, "images": [{"as": "hRvFZVj2", "caption": "tvTYdgEC", "height": 21, "imageUrl": "qlF2zuP7", "smallImageUrl": "bKPDPrrk", "width": 57}, {"as": "rtCWYvpN", "caption": "bFEAlbmZ", "height": 5, "imageUrl": "22u2Xf5R", "smallImageUrl": "45JLs4uf", "width": 92}, {"as": "qImYM5BD", "caption": "4IqZC7CF", "height": 18, "imageUrl": "DFqGqxLD", "smallImageUrl": "WEfk9tkc", "width": 82}], "localizations": {"Ad2oAzvl": {"description": "faHd183x", "title": "WkjJf0P6"}, "bkDS3REc": {"description": "nUE2iZDq", "title": "RCWM3YCs"}, "jZoIquxI": {"description": "hv5rXZwd", "title": "U1lFL9KE"}}, "name": "uX4V4q5g", "start": "1976-02-12T00:00:00Z", "tierItemId": "8frnFlXj"}' \
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
    --body '{"userIds": ["MXD6P87l", "7VJ53fe0", "qFGbXIDP"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'lb97PRiq' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 's26BRKOt' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'TMaWMi7A' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ePvR91dq' \
    --body '{"autoClaim": true, "defaultLanguage": "yGfrhHJd", "defaultRequiredExp": 38, "draftStoreId": "yTGdybxL", "end": "1991-03-23T00:00:00Z", "excessStrategy": {"currency": "XWvls0ZQ", "method": "CURRENCY", "percentPerExp": 47}, "images": [{"as": "KE0kx1vh", "caption": "0qCmtm1z", "height": 97, "imageUrl": "V3IVKQ0S", "smallImageUrl": "blxeL3Sr", "width": 65}, {"as": "rH5Ci7zX", "caption": "31PClNNr", "height": 6, "imageUrl": "M05LCnpi", "smallImageUrl": "U19IeRgZ", "width": 45}, {"as": "u21ZqJJw", "caption": "20Pugw4R", "height": 7, "imageUrl": "Ocp6Va8Y", "smallImageUrl": "ZZF3rxFn", "width": 73}], "localizations": {"ambfErgb": {"description": "pB4t1iCt", "title": "PD1RslZD"}, "sj6eApC0": {"description": "iOmwaizN", "title": "UBL5ErsP"}, "0XUVw49U": {"description": "rAUWaG8n", "title": "2tPgBOEZ"}}, "name": "Twgmqv6a", "start": "1972-10-22T00:00:00Z", "tierItemId": "r6xLieQO"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ld0LWZx9' \
    --body '{"end": "1990-04-16T00:00:00Z", "name": "pntDziOL", "start": "1972-05-31T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '3Erwzwi5' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'UXljONFR' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'zRNaPGYq' \
    --body '{"autoEnroll": false, "code": "F08ycEeI", "displayOrder": 94, "images": [{"as": "zpfIaBPC", "caption": "lFxdKtdy", "height": 74, "imageUrl": "HVUQ1xCC", "smallImageUrl": "oNhBHLkU", "width": 30}, {"as": "PULyJEmE", "caption": "hu8tCGbV", "height": 86, "imageUrl": "QKo9E005", "smallImageUrl": "dQbdWJwx", "width": 7}, {"as": "VlVbdEhq", "caption": "xRifzHZl", "height": 99, "imageUrl": "DVOTJtuX", "smallImageUrl": "OTuuiXjG", "width": 99}], "localizations": {"3j0vZ8BX": {"description": "Gn1QLcwt", "title": "ppEGfdA5"}, "769ZuaYG": {"description": "4OcKj6CZ", "title": "4VCBWHrt"}, "2GrQwOhA": {"description": "kaRSKnrO", "title": "3vDJM6XA"}}, "passItemId": "o1GOIST3"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'okPUO7Qf' \
    --namespace $AB_NAMESPACE \
    --seasonId 'B4gDLZAh' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'ZxBzRmj3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DweflyvX' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 's0oyQceW' \
    --namespace $AB_NAMESPACE \
    --seasonId '8dapPjJV' \
    --body '{"autoEnroll": false, "displayOrder": 75, "images": [{"as": "WEuj9TTw", "caption": "VuhnT2Gr", "height": 89, "imageUrl": "w4Cc5xTT", "smallImageUrl": "39qzYcvG", "width": 1}, {"as": "75nhFvxJ", "caption": "kIikZJXR", "height": 34, "imageUrl": "5lFDRGQ4", "smallImageUrl": "0hgtgTok", "width": 82}, {"as": "BZ6jmQEJ", "caption": "gWhqg1Br", "height": 27, "imageUrl": "1A04NSwH", "smallImageUrl": "EDCdiQhd", "width": 86}], "localizations": {"TJUKuoEp": {"description": "ziynrqt1", "title": "ke7rbzNr"}, "46GX1oEr": {"description": "dzeYu0P1", "title": "L7JmylA0"}, "OYPbLq06": {"description": "Ppj0YtYp", "title": "8yOGStUR"}}, "passItemId": "GYa8jVY3"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JNpg2NaW' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'gaPLZRuK' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'UnKOH4Rc' \
    --q 'r0gNty9L' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'UzYjaRPW' \
    --body '{"code": "TbVYY52N", "currency": {"currencyCode": "TqpHUbFM", "namespace": "m3yIS0fJ"}, "image": {"as": "S2zF6Cfi", "caption": "v1BjuVOB", "height": 73, "imageUrl": "ZryukQKD", "smallImageUrl": "Cpvp7Ooy", "width": 43}, "itemId": "QHZhaaE0", "quantity": 65, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'iXdra6Up' \
    --namespace $AB_NAMESPACE \
    --seasonId 'H87KQSNK' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'wtHnQp4U' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Mr59tY7I' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'IBsEQSXe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wrtYQn45' \
    --body '{"currency": {"currencyCode": "bDqhPApx", "namespace": "Fxs4WEYf"}, "image": {"as": "ZVSNfU8I", "caption": "xxWjUnp3", "height": 15, "imageUrl": "7nqY8MIc", "smallImageUrl": "en9uYvpp", "width": 73}, "itemId": "8EMfTA10", "nullFields": ["FdVr3MgO", "UWh2tRWB", "iOQy18My"], "quantity": 44, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '6ljyA508' \
    --limit '59' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'Gl7fVWbs' \
    --body '{"index": 2, "quantity": 77, "tier": {"requiredExp": 91, "rewards": {"Hmdd3Gnx": ["JuSotaln", "PvvVItfd", "YqX14eij"], "xX9ziY9j": ["qewInVUD", "HqTVb9nW", "g2SARjOe"], "3BwZzxg8": ["2cDnUSbK", "cVy18mda", "DEh4J2Xu"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'DnqyBIfZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'r12Dr5C1' \
    --body '{"requiredExp": 34, "rewards": {"6WXU8a8u": ["WZ9VTdlF", "uqTDR6U0", "EtJvV4D5"], "8bhayQOU": ["UBxGnlvj", "29jsE3H8", "tozA46PP"], "B1QpgA1E": ["MtmEAxVt", "EZSgYEli", "bGnzlovM"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'fP9YZAw0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'M6CztQGg' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'lSigj9pj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ETeCQK0W' \
    --body '{"newIndex": 16}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CRTLxwzI' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'UvlWB0Bo' \
    --limit '35' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'dw20U2AB' \
    --body '{"exp": 78, "source": "PAID_FOR", "tags": ["24faYBlh", "Gv75IpJL", "5x53qyyM"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '5bSQGJPL' \
    --body '{"passCode": "Id0vHxoD", "passItemId": "sqzB0qrR"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'IXl7eBEu' \
    --passCodes '["0YsCqjP0", "g013fPAk", "5K0GzpXT"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'gZ9q92OU' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '7z3tf5cm' \
    --body '{"passItemId": "NNPWHGka", "tierItemCount": 41, "tierItemId": "LsxQWYE6"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'wjs0bAsc' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'LJNSdScl' \
    --body '{"count": 57, "source": "SWEAT", "tags": ["ofgBKS6Z", "Q6aMY6Fh", "gUN4Xyb7"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'Rtt8OcAt' \
    --from 'fqv2qfyQ' \
    --limit '46' \
    --offset '47' \
    --seasonId 'rJFRbfW4' \
    --source 'SWEAT' \
    --tags '["gBQHBwnl", "1NQHqrnA", "vh3z9pjn"]' \
    --to 'GjNc3qJb' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'VVnCEIZN' \
    --seasonId 'NIDCrpYz' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0L7HiQfq' \
    --userId 'oypRRrbr' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'dfhf5K2F' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'xZEOzBBM' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'LBPBJMWi' \
    --body '{"passCode": "MMIBcXfF", "rewardCode": "TiR3914P", "tierIndex": 48}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'iYf4jgLM' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'yrObFdPI' \
    --userId 'qfyLlCds' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE