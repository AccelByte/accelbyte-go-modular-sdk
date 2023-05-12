#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
    --offset '42' \
    --status '["PUBLISHED", "DRAFT", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "obD5VYOc6KBXzpAM", "defaultRequiredExp": 29, "draftStoreId": "wnOvhzqRouGaipaA", "end": "1992-08-19T00:00:00Z", "excessStrategy": {"currency": "524R5bCSVGuAqqWS", "method": "CURRENCY", "percentPerExp": 62}, "images": [{"as": "REDnlX0F6SGxIacV", "caption": "jftZownGhn5zXC7N", "height": 77, "imageUrl": "bOPycyVCjcRfqOz2", "smallImageUrl": "r2WHp873PulbRpH9", "width": 83}, {"as": "blFS34L2wtkfQVp8", "caption": "Bvg4xJJ7q7tMJ0N7", "height": 60, "imageUrl": "IktdmYlj92S6FN5g", "smallImageUrl": "bZFctXMKZ5SEN3js", "width": 14}, {"as": "jzfBZUtwvXCXI376", "caption": "GnArl7XrAdB5bcbr", "height": 53, "imageUrl": "lSZxyWUqWLKMqRwT", "smallImageUrl": "gVA35BSbFDV6mjfA", "width": 72}], "localizations": {"al0zOO4xCsmwB2YV": {"description": "2DN7MDFfE4qGnNq1", "title": "3EKC9k8ZpP8Lh6oq"}, "XqdIYUapAcNo6F0j": {"description": "3JUZ5lGLCiCESJym", "title": "nwSMYlSx0AqqocF2"}, "ji65yRvkq1gcwiqF": {"description": "aTSunfcBN9wyXpQm", "title": "aYgiWPQ05F4ooiAx"}}, "name": "nw0IPlLa4Cwc3jKe", "start": "1986-06-04T00:00:00Z", "tierItemId": "ioeVqTnqQXKjbGk9"}' \
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
    --body '{"userIds": ["fdbjk4FtA4vs5HZR", "moYPloz9PaUADMn5", "1Dtht14tASHba7lv"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'g5H4Tta61WcDYOFE' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kxxMyeomH38U9q5O' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qyx1lYdX2r1yX7BV' \
    --body '{"autoClaim": true, "defaultLanguage": "fsMaC2Kkne5jZfNm", "defaultRequiredExp": 8, "draftStoreId": "IboUpBnCdHzoeQw0", "end": "1993-12-15T00:00:00Z", "excessStrategy": {"currency": "fie3Jso3yjblOdr5", "method": "NONE", "percentPerExp": 41}, "images": [{"as": "TePmhZMk5XnkJRWd", "caption": "rBw9BKiKK7OWRvzI", "height": 76, "imageUrl": "DAHziseByTH2HCCr", "smallImageUrl": "8sAEiNwvdv8qOGKo", "width": 32}, {"as": "2EGFcNFZxx2LrXoJ", "caption": "4otlc3LkewVWGIFA", "height": 97, "imageUrl": "tXOoWHLATTaK0prk", "smallImageUrl": "w0NcDSpY5z2DAc1B", "width": 97}, {"as": "qkELv7dpV6arrx1S", "caption": "iv4U5oN8vTPohhek", "height": 86, "imageUrl": "LXpoLKPYq4prNaJ9", "smallImageUrl": "Pf3VwTEY4UFAFnb6", "width": 41}], "localizations": {"gC9fw5mX9x4nnh8P": {"description": "gBupF7taV87CVUir", "title": "0xwGqGb1IYbawmnQ"}, "IIFbmt3L1muwGAv7": {"description": "L5vQSFJKJ1s80ke7", "title": "sYJ4eBasULd93DnR"}, "H69GUJFbJNMPbn3P": {"description": "Lcfef49P71k0Btd5", "title": "zr22YxgEy0wh6Hnz"}}, "name": "oTfIJlROKzdcZtfk", "start": "1977-11-30T00:00:00Z", "tierItemId": "JQlD7lclQ6mfxj0e"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'm8O7yAomDWCd4BzX' \
    --body '{"end": "1992-08-01T00:00:00Z", "name": "0PHbtryv5N4B0MfA", "start": "1971-11-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'VlgWuCwFOGwKGcNX' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZXKGl9u3QfifUhUu' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'PVp2slkeuTxBfBZK' \
    --body '{"autoEnroll": true, "code": "khNhnN4nmCQU2Wof", "displayOrder": 20, "images": [{"as": "niYfXShCZFloSHHG", "caption": "Cb3L5AyiOwsMp8sz", "height": 96, "imageUrl": "rxr3zch8rycwfR2A", "smallImageUrl": "CyQ3MEug7v3Rsew6", "width": 53}, {"as": "iLiVa2PbswXX1Ko7", "caption": "jOjmGRQxpCHuBZjv", "height": 42, "imageUrl": "LfR0micIf59UcGMQ", "smallImageUrl": "6gtPcGxEf3x9u0YZ", "width": 73}, {"as": "DpQEcQnggC8GU6vB", "caption": "EqZaNxq5RalZT75j", "height": 9, "imageUrl": "xXPTNM06SXI1nJHg", "smallImageUrl": "QC8zt1G7oHVMpfPY", "width": 98}], "localizations": {"TZn2BOz2kpeaUael": {"description": "X4i8BbPlFu407R7a", "title": "hwyxHDgrWcKClXoa"}, "VNnnKnN75fuGG4s9": {"description": "zaw4sJZv3TxboEyQ", "title": "CVYLhbcHj3HMlSMB"}, "dC4ly0FOMtMTUB49": {"description": "0EsVUrZcwa0ysjHX", "title": "jRHyIU2zBkBzBRtF"}}, "passItemId": "lSDBnXGz2lJJd34o"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'iOAxJvSiw1A7hgiv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'cKs5mWAeEmcpcdwK' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'G97pjMNTb4YtyffN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'RuMhM6PfDIEB7fGC' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'sD6y4sx1TAYpTaAn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'cubQlesMowS2AbV9' \
    --body '{"autoEnroll": true, "displayOrder": 5, "images": [{"as": "UpnVpsFoLRoPk9nH", "caption": "HPtNJYRXg1bidhCk", "height": 97, "imageUrl": "vKIwEAVZpeB7ojsz", "smallImageUrl": "12LZ6SfGatVLH9vZ", "width": 45}, {"as": "Fifh03rRBCmdZgjE", "caption": "p6t5dcAOgwEqdpfE", "height": 49, "imageUrl": "9MBHQ1lz598yWGeG", "smallImageUrl": "Tg6j8VoLvqvaUnrM", "width": 41}, {"as": "LN28RkZuTjymuj9F", "caption": "D0stFh3JmmJDKDbf", "height": 10, "imageUrl": "GDTCARO2ZwG9rMWo", "smallImageUrl": "SETH4COp6u7CN5v6", "width": 5}], "localizations": {"RQeVXgG8Vc5NfSzZ": {"description": "ZSimjqDeiE2rlMMC", "title": "qNg37F53brB0aJGj"}, "Hx09qZteOdbLKxau": {"description": "tDOpR2CgN054qTWk", "title": "WSLpFOykLdpvzNX5"}, "8IUXvqUqbNnStxag": {"description": "4c7IXGuTO9uFFirx", "title": "hPFliz8sgW1NQaBE"}}, "passItemId": "nAEqXK4EhRrR97la"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OuxWtn2WEIMdYxMC' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'nYdSMylHz6KuIfmY' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'VL5CkG1ZkXuXZFEY' \
    --q 'LsO9qdDGGqvShrva' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Eyh6CETlMnz2iCS2' \
    --body '{"code": "jSTy11UJPaJ4c1Xt", "currency": {"currencyCode": "mK6OExHLq0u4ULhF", "namespace": "wiv9plGDlpaMluIG"}, "image": {"as": "PzrEvGGueep0t1sQ", "caption": "4tWkP4QRnrkzJifZ", "height": 73, "imageUrl": "yuzDCZRVCgRg6KKt", "smallImageUrl": "StYVburzZOGDA8DK", "width": 45}, "itemId": "1Vsbo4KPHZ3qHCL3", "quantity": 49, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'tP8qAgxR6c709AgD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SlKefBzORbe0f0ok' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'pQ8O7PytbhbC5Fwg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TQ5CEaExGhA36igC' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'w9BvEYlkTT0rZGgG' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kNu3ylZTU5a0Z8Ip' \
    --body '{"currency": {"currencyCode": "MZ24q65ciEbapVZT", "namespace": "RuknMM3vzhTrhMOa"}, "image": {"as": "30Inkn3VLfYDP82j", "caption": "FMbjccWcf9eKDcyH", "height": 67, "imageUrl": "N5AucllgzXu2VsS0", "smallImageUrl": "N5mMpVystEGuYq6P", "width": 51}, "itemId": "WoR8dIpS3NoRomUr", "nullFields": ["jVXTVXqMsXV1Txc4", "8DSNXae9f3U90IEs", "3xXtqAqoOy2tzSdE"], "quantity": 55, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'Nge36MFRdmANAdsk' \
    --limit '70' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'NwyUawx6KUUAMJTb' \
    --body '{"index": 46, "quantity": 31, "tier": {"requiredExp": 94, "rewards": {"cKIXdyn2W02FhIUV": ["nU3Py7ewIQTiiJzv", "X52YDK7eBt9sAtZG", "poucthdCFjm8paCE"], "5dn0V7yueSxl5oPa": ["7ojvso7r7iz5cgjQ", "WkgMNMF5xGfdblb4", "VxgFMvh7Cf5CwGyH"], "XeAKItxISX07i6ld": ["37nAiapk8gwf7NqW", "ovuiBi9ocMmtN9kW", "ULXoS35DHX6zNwqX"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'pEisnd2UFJ5DMHxK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'P8uIQtonoC0nsweK' \
    --body '{"requiredExp": 37, "rewards": {"eygN2lPHm1T7s6GR": ["5i55ZNIFsJQEmzUm", "AqhOBa2RsLHQRjqU", "XlO1gAKr4qJmjhFa"], "R3rg4P7B0YyL7NWb": ["Ity2cXgQw0PIBb5B", "0dkBdhapMRVBBrc5", "mgeAHrNWxhWb1Chq"], "xR0ssx7jlanA5ozd": ["eOtFHBFeAPs7ZVdj", "zLiNZVXoGfXIL8CL", "t6MN8d4nTrzTvfQT"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'eTtW7qk83r7yx1Bc' \
    --namespace $AB_NAMESPACE \
    --seasonId 'm6paFZdJizJ7kFIU' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'DeSkVzzwaeKFSooF' \
    --namespace $AB_NAMESPACE \
    --seasonId 'zv5svKA4by93so4s' \
    --body '{"newIndex": 26}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PcCAafEfcQ1lKcot' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'w8ItNMd7o2qQP7DC' \
    --limit '80' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'unpkTPaXtQaXbILa' \
    --body '{"exp": 48, "source": "SWEAT", "tags": ["GyMSQps2w7XoBfF6", "7wm2TZvzzwBe8XTB", "F20DUsoa8nHu7Od6"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'UJ24MImLZJ5T0Knk' \
    --body '{"passCode": "QiA9rieMJc5nl58O", "passItemId": "fF78qTzAc93L82gx"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'ZNO2qo9ZIHJN9hVa' \
    --passCodes '["gyNQGcw7Zicp1Jbc", "mRqUDTAuggKGh4yw", "U418iuoFrTDe4G5i"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'LC1KTEUTiQfcw0v0' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'mCbYNn02ExFEQ32H' \
    --body '{"passItemId": "4ViUfyMKjXszir6N", "tierItemCount": 27, "tierItemId": "6jUJTAPcaU3BqSrx"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '2pn29a8Se2b0WN7B' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'yXk5Jqhn5HNmZmQN' \
    --body '{"count": 90, "source": "SWEAT", "tags": ["oewX7uhWVahbKjBu", "9NQmCWEXtEtHwqkF", "iNx2Rx24kGDpH8Gt"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 't8Q9JZO854tfmjsh' \
    --from 'i8Hk8sM1QCgx7vvl' \
    --limit '27' \
    --offset '63' \
    --seasonId 'yZYqdgyYVRfkTyCl' \
    --source 'PAID_FOR' \
    --tags '["25wrZioCISPRHQsg", "c4NJtl0oO2t50qm8", "viZFNVrkW3DAuiPf"]' \
    --to '3wkLzDjFPTdU0VvE' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'z4612XxfH5IuDtio' \
    --seasonId 'Q4Ni3cDU6uBuTkCA' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sdLUA0erf4UOYSIm' \
    --userId 'n27z9pDrgzOhxMet' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'mzcCz8NQs1u5wTTo' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'mGUwYLcq9c2eSUHM' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ssHhxHWZ2qavAIJT' \
    --body '{"passCode": "3pQUNRss2cM6P4f8", "rewardCode": "rr4Hep1DlrAvLGLy", "tierIndex": 56}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'J7aEPOPVhsACdBZM' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vko8KM3ojaDBVeFd' \
    --userId 'QGAycDTbiXPgqz3Z' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE