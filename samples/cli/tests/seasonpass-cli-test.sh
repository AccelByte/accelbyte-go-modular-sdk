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
    --limit '43' \
    --offset '8' \
    --status '["PUBLISHED", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "LiCFbwkK", "defaultRequiredExp": 86, "draftStoreId": "XscI3kML", "end": "1993-07-07T00:00:00Z", "excessStrategy": {"currency": "NychGqXE", "method": "CURRENCY", "percentPerExp": 91}, "images": [{"as": "jsTe2C9D", "caption": "wlBfrGJb", "height": 33, "imageUrl": "mMzSpF8J", "smallImageUrl": "5y4g8BCc", "width": 6}, {"as": "KNF5aTyW", "caption": "X0Im6464", "height": 97, "imageUrl": "5zblWRNd", "smallImageUrl": "coFyrhBc", "width": 83}, {"as": "Uis8l8gw", "caption": "YAXXWn2G", "height": 100, "imageUrl": "dOAR3G8U", "smallImageUrl": "bhLiz4NG", "width": 68}], "localizations": {"nIqewKNd": {"description": "km0YGzHt", "title": "U6RT5N5m"}, "9eIDwA3u": {"description": "1PwyHF18", "title": "r6ZbiS07"}, "vLYDLuja": {"description": "7fvNqaeh", "title": "WVzZimV7"}}, "name": "AzQ5Xirg", "start": "1982-02-26T00:00:00Z", "tierItemId": "uUwMeAjk"}' \
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
    --body '{"userIds": ["Y8jAVjPr", "fyOWmV8g", "AHpK4BYF"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'WJTS9sUo' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zl24sXry' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'guOhMrwN' \
    --body '{"autoClaim": true, "defaultLanguage": "ez8OiK9N", "defaultRequiredExp": 92, "draftStoreId": "MYPHgvaZ", "end": "1989-06-10T00:00:00Z", "excessStrategy": {"currency": "3LtdE6Iv", "method": "CURRENCY", "percentPerExp": 2}, "images": [{"as": "7NDFZ9kV", "caption": "0KHFbL0J", "height": 70, "imageUrl": "4GQ8FFnB", "smallImageUrl": "uACIDy2g", "width": 85}, {"as": "8Ac0584o", "caption": "90NJoDSC", "height": 6, "imageUrl": "GBaN1ASY", "smallImageUrl": "J1UN8kGb", "width": 73}, {"as": "fsE8tEMR", "caption": "NDeMKUMj", "height": 51, "imageUrl": "hkryvgoB", "smallImageUrl": "BNaiFRqY", "width": 35}], "localizations": {"ZkZWahYu": {"description": "TXShTaLT", "title": "PDFzI32X"}, "1gOjjXJz": {"description": "5hHts4Ic", "title": "d26iAYhD"}, "fBkKJ8O0": {"description": "7bP9pIRO", "title": "5HFMVv1e"}}, "name": "QRTWkv64", "start": "1983-03-02T00:00:00Z", "tierItemId": "miDLjsBK"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2kTzhBsc' \
    --body '{"end": "1987-01-03T00:00:00Z", "name": "a0Or3jKV", "start": "1974-04-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'L67FpCKW' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'CgtnPVmO' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId '8tcomJxV' \
    --body '{"autoEnroll": true, "code": "BESXhNLf", "displayOrder": 94, "images": [{"as": "IeecFOat", "caption": "0Rc84imh", "height": 17, "imageUrl": "dtyvreBj", "smallImageUrl": "bSkU4LnF", "width": 99}, {"as": "0AwQMRhS", "caption": "EZTCJA3a", "height": 98, "imageUrl": "e33nryo0", "smallImageUrl": "sLXMPUjW", "width": 33}, {"as": "ozk0PNI4", "caption": "PIO1CrAm", "height": 33, "imageUrl": "9iKEp36R", "smallImageUrl": "2mRd2TGw", "width": 98}], "localizations": {"3uU5TW8M": {"description": "vyKBJagh", "title": "HgZX8WEz"}, "n63giKQo": {"description": "q08w6fdu", "title": "yhxKC9Qz"}, "g9bpDHIr": {"description": "HDB1uVgV", "title": "dZDMlraU"}}, "passItemId": "OzDajkbN"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'ahkds1Mj' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Muzp9vRX' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'NlqO8pDY' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VqTqyLCG' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'RFpDeLlv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'UJbvxP9V' \
    --body '{"autoEnroll": true, "displayOrder": 76, "images": [{"as": "bMDOSJsq", "caption": "Twt0DFAF", "height": 53, "imageUrl": "UFYh0Ncu", "smallImageUrl": "yo2lw7uL", "width": 29}, {"as": "F6fAJhip", "caption": "gG3NNmhz", "height": 57, "imageUrl": "blHfJiqw", "smallImageUrl": "i98PzJhY", "width": 77}, {"as": "uGTrOlOG", "caption": "A8jxWFjv", "height": 14, "imageUrl": "JNM7WdJn", "smallImageUrl": "HAMCO5bJ", "width": 57}], "localizations": {"kc81fkiL": {"description": "vCujnbdm", "title": "1izanAFT"}, "WFsJ6SkF": {"description": "xDvHJvfQ", "title": "nRqjdHBS"}, "Nwnj6mfK": {"description": "MCgRZ2VS", "title": "GCTtt0wS"}}, "passItemId": "YyzqnBiU"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '70z14adG' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'iqiyWpT3' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'oS8S3heo' \
    --q 'p1GKlCdb' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'JvXxCReQ' \
    --body '{"code": "FwzITStt", "currency": {"currencyCode": "o0fEIYaD", "namespace": "KK82v8e2"}, "image": {"as": "8CrGp00H", "caption": "TDihvuGc", "height": 51, "imageUrl": "goU3U7sC", "smallImageUrl": "JnqNGvGQ", "width": 91}, "itemId": "390RXr51", "quantity": 57, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'a8ybmq9n' \
    --namespace $AB_NAMESPACE \
    --seasonId 'MJGfAlVA' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'zCgEIvXO' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XoULodua' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'oDUhXwhU' \
    --namespace $AB_NAMESPACE \
    --seasonId 'GfLmop3M' \
    --body '{"currency": {"currencyCode": "K3hSvbCS", "namespace": "GhTU8BeP"}, "image": {"as": "MOl1yC2S", "caption": "bUUwJyFB", "height": 76, "imageUrl": "H0zPQhdV", "smallImageUrl": "RTHFrei5", "width": 42}, "itemId": "UckmuY7m", "nullFields": ["h4TnxO5l", "N3tRk1Z4", "WT7n5a8G"], "quantity": 61, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'rFYYoLLy' \
    --limit '37' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'jELHRFfU' \
    --body '{"index": 90, "quantity": 61, "tier": {"requiredExp": 96, "rewards": {"0mWZYI2A": ["kor07O07", "jufqUy4k", "5d8puqBc"], "nBwTmjky": ["aLXtozeZ", "Hr7Cwfrx", "BcALVXkF"], "PiKjuVtJ": ["aHGFOCMs", "tIo8Ye08", "sjR1BFUY"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'Ta9jBmxR' \
    --namespace $AB_NAMESPACE \
    --seasonId 'zWKxfk6l' \
    --body '{"requiredExp": 50, "rewards": {"GHb6weNn": ["bchHwZia", "Z9vZQJCf", "W6VBHNvr"], "fsWKiOIg": ["vbBDd92f", "RZQziaiV", "ILPi0MQa"], "I8E5z6sW": ["6tG04C9q", "3alplcWi", "txRRJCxT"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'x5nxg6Au' \
    --namespace $AB_NAMESPACE \
    --seasonId 'dlKsyQHC' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'KrdhGoVG' \
    --namespace $AB_NAMESPACE \
    --seasonId '4vbvWLuF' \
    --body '{"newIndex": 54}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'UhLPwwtT' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Mu850m6l' \
    --limit '28' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'kBR2HLLx' \
    --body '{"exp": 24, "source": "PAID_FOR", "tags": ["KW8rMN0L", "yi7RCIZZ", "TJ6HBAC5"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'OGcUE44Q' \
    --body '{"passCode": "0YNIfxET", "passItemId": "papdpP7k"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId '6W276LeX' \
    --passCodes '["h1N8KNe6", "XZaachJm", "kPzlYs24"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'H88EQwkJ' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'hkuJIhV0' \
    --body '{"passItemId": "upO6VK38", "tierItemCount": 71, "tierItemId": "3oDENqmv"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'jrtGBlJe' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'S3xKzhIV' \
    --body '{"count": 49, "source": "SWEAT", "tags": ["lD2RCsD1", "C0HubQv7", "GWGi9iFq"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'rL25nHp8' \
    --from '413jC8nz' \
    --limit '100' \
    --offset '81' \
    --seasonId 'D0oa7gTG' \
    --source 'PAID_FOR' \
    --tags '["pxN4EXar", "F2pUP6mY", "XF5CIflC"]' \
    --to '3JmTPWyF' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'gpSHEPez' \
    --seasonId 'TYPehkNu' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KlD0YxS7' \
    --userId '8roKdQfw' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'FRZEBJ8P' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '0TrqzRc9' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'ljPrgxbc' \
    --body '{"passCode": "8quHct6g", "rewardCode": "bk8vwmNo", "tierIndex": 7}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'adjZEzfy' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rTX8JToZ' \
    --userId 'C4FbyUYy' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE