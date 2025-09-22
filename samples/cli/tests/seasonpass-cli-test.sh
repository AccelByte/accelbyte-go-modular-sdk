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
    --limit '84' \
    --offset '63' \
    --status '["RETIRED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "ZRJOroU6", "defaultRequiredExp": 95, "draftStoreId": "xUOufIrZ", "end": "1987-04-06T00:00:00Z", "excessStrategy": {"currency": "RlBgEacL", "method": "NONE", "percentPerExp": 7}, "images": [{"as": "SOXs349G", "caption": "H2AKcL63", "height": 97, "imageUrl": "V8CST1Wz", "smallImageUrl": "GScguKyF", "width": 30}, {"as": "u6bwF1ey", "caption": "vz67ojMm", "height": 68, "imageUrl": "yMLA7vND", "smallImageUrl": "p4OcJVjW", "width": 62}, {"as": "AdK4ia9n", "caption": "ic1WEVWY", "height": 5, "imageUrl": "LA5d09pH", "smallImageUrl": "ozn6sSdT", "width": 0}], "localizations": {"28jmE41w": {"description": "QM2IFJho", "title": "0FJG9Qsl"}, "3ctesDzH": {"description": "IB7LS0Jq", "title": "18ezMoME"}, "Wdbv7Gsb": {"description": "PLlVcGjj", "title": "NA1cVHj0"}}, "name": "WPg9Csbf", "start": "1973-03-09T00:00:00Z", "tierItemId": "NqrRMDL2"}' \
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
    --body '{"userIds": ["ZNf8IKXb", "SJpPijgx", "JOxAoXnS"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'ndTyDBQM' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pdfaNu7x' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'b57k43CP' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bxaXkBeB' \
    --body '{"autoClaim": false, "defaultLanguage": "Q2cP0WKj", "defaultRequiredExp": 22, "draftStoreId": "axbBy0HF", "end": "1974-11-13T00:00:00Z", "excessStrategy": {"currency": "ncJh7xAH", "method": "NONE", "percentPerExp": 73}, "images": [{"as": "fpkBGxMv", "caption": "X3XzlFtq", "height": 42, "imageUrl": "0EuOcnKc", "smallImageUrl": "2lGsXj0c", "width": 64}, {"as": "c7gNzzyb", "caption": "2dYT2N1L", "height": 97, "imageUrl": "SBWgHGQA", "smallImageUrl": "IimAl4G2", "width": 67}, {"as": "KzpIiu85", "caption": "JopX2WEs", "height": 90, "imageUrl": "4aAgNZov", "smallImageUrl": "056mMUuU", "width": 37}], "localizations": {"CqUXtTM5": {"description": "80A7NETX", "title": "6X9LNVOU"}, "zUsjK4sC": {"description": "hJFsVNjA", "title": "KRMjVNGQ"}, "jpIYGQol": {"description": "jtrYp3ZB", "title": "z5n2UqFD"}}, "name": "x9l6gPHe", "start": "1987-12-10T00:00:00Z", "tierItemId": "ndGsRaZG"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'GV0fusdK' \
    --body '{"end": "1980-09-23T00:00:00Z", "name": "TJL8WBTt", "start": "1992-11-05T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'A07xQ4fL' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'TbrQCokl' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'BiKySsvf' \
    --body '{"autoEnroll": true, "code": "Fn3bwVUN", "displayOrder": 41, "images": [{"as": "00KVANU2", "caption": "gXzCo6lV", "height": 31, "imageUrl": "aaT6jvJ6", "smallImageUrl": "dbzzSyA1", "width": 18}, {"as": "D6U0gS1k", "caption": "baJehpz3", "height": 81, "imageUrl": "tWIcKfqX", "smallImageUrl": "eeNtMkPk", "width": 14}, {"as": "IKVL0NMs", "caption": "F1O2DzeP", "height": 70, "imageUrl": "TVPF8kdc", "smallImageUrl": "QJ6qx0iq", "width": 71}], "localizations": {"dx8Q2mls": {"description": "5V9NHgp8", "title": "j90Z5RaH"}, "6uxt0tX3": {"description": "K4c3VhIZ", "title": "hrZLxuYR"}, "Ip3gJaH7": {"description": "YEvENFEz", "title": "10F5a7sU"}}, "passItemId": "Vlps8p5j"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'eawODMLS' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ocvCd4M8' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '0xotSC3i' \
    --namespace $AB_NAMESPACE \
    --seasonId '4E07n9to' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'tS6kXhdK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'os7EwyLl' \
    --body '{"autoEnroll": false, "displayOrder": 73, "images": [{"as": "fdHcB9oC", "caption": "5Sz3QfdV", "height": 87, "imageUrl": "N1Cz1hJ4", "smallImageUrl": "PX0frlbE", "width": 81}, {"as": "jCmsKdzX", "caption": "HgcKfcAJ", "height": 18, "imageUrl": "MPfBqMbz", "smallImageUrl": "IzkZlniF", "width": 55}, {"as": "Klo48AnV", "caption": "NG6eEXmT", "height": 68, "imageUrl": "I6vPoUov", "smallImageUrl": "NW7JdbA4", "width": 97}], "localizations": {"SOZ8SPgx": {"description": "w50S3IiG", "title": "RWYrV4NL"}, "6Kk0ua44": {"description": "lbyb89OH", "title": "dmdkGT5l"}, "58y4pvMJ": {"description": "g8Ut8A5N", "title": "4i7thp2x"}}, "passItemId": "h282HfRI"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'O7jzzoJu' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '89680fgA' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '0ESB3ur1' \
    --q 'xRFoMtwU' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'NBRYUEfb' \
    --body '{"code": "yaHIpGnu", "currency": {"currencyCode": "19heoyi6", "namespace": "7AeMi6VT"}, "image": {"as": "vSy2ZOvq", "caption": "8xV0yjGD", "height": 51, "imageUrl": "LL41t9pA", "smallImageUrl": "ddtF5nWd", "width": 32}, "itemId": "GWevXSGa", "quantity": 62, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'g6OEzyyz' \
    --namespace $AB_NAMESPACE \
    --seasonId 'juKcWVab' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'YFhChXn0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'beCD8fdv' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'cL1uM0tm' \
    --namespace $AB_NAMESPACE \
    --seasonId '40XLmn24' \
    --body '{"currency": {"currencyCode": "cJSloWRB", "namespace": "oa56YiqF"}, "image": {"as": "ABipTivq", "caption": "p57PIKSm", "height": 13, "imageUrl": "isYwJFwP", "smallImageUrl": "gdoeen0c", "width": 56}, "itemId": "jZl3wguG", "nullFields": ["WC5EB2Nn", "G15b3HoV", "WKCgbc56"], "quantity": 20, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'WY1xJFgH' \
    --limit '90' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'z1WftAD1' \
    --body '{"index": 36, "quantity": 20, "tier": {"requiredExp": 18, "rewards": {"pv8jqKb3": ["OConTiht", "F0bJushY", "zXgwGNbo"], "S9Wrk14i": ["IN5MTJKH", "W0JqaHIO", "Kw6SrR3M"], "oDuxnTQU": ["nQ0KA4Ln", "Evte2erl", "BNXp16mB"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'ZO4J0DSB' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Vp7MaQ2C' \
    --body '{"requiredExp": 69, "rewards": {"ylYIj2vH": ["0y9tmeix", "JOdd0XwQ", "NNPYEaVz"], "L2ySsipp": ["h8ab3ygs", "OUcRjqFA", "SOs5Yb9m"], "t4t8hCUq": ["hsqwdGii", "BhNWTGaV", "HmZTcdd3"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'RVxrTd46' \
    --namespace $AB_NAMESPACE \
    --seasonId '8gufwmct' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'yPlQA7X4' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XGiDRpKf' \
    --body '{"newIndex": 87}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fV5Kf3TO' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId '9zNRc1KI' \
    --limit '56' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'OZi86YLF' \
    --body '{"exp": 75, "source": "PAID_FOR", "tags": ["w2NkLRWM", "sim7hIVy", "RoYKJwHc"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'SY1kKXD8' \
    --body '{"passCode": "M58E2blo", "passItemId": "Dfk793YL"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'b76wHzZp' \
    --passCodes '["LSYoFwWi", "NHOpFMpW", "2QLLaIqm"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'tNSviZKS' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'qoZFzTmE' \
    --body '{"passItemId": "YtKMyhFt", "tierItemCount": 21, "tierItemId": "4Wwxp6B0"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'vOasAcGm' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'MHlFAkUQ' \
    --body '{"count": 10, "source": "SWEAT", "tags": ["rlQAlVgI", "cKn3NaoW", "VaLhOEcL"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'hWciMtge' \
    --from 'e8c3J8bx' \
    --limit '32' \
    --offset '73' \
    --seasonId 'wtYrnij0' \
    --source 'SWEAT' \
    --tags '["Soyk5tvU", "xLKR4UDH", "9uQqz9Z5"]' \
    --to 'tm5LGvUG' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'qytfVJqH' \
    --seasonId 'CMyHFDbj' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lCFGZmSf' \
    --userId 'sB2uRRac' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'Dwu1rltA' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'QeG8q7UR' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'SM6pxyII' \
    --body '{"passCode": "d6cNCouJ", "rewardCode": "O8BjpMUc", "tierIndex": 34}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'dDtBI4R3' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'N7lZ9ppu' \
    --userId 'a3gquRiN' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE