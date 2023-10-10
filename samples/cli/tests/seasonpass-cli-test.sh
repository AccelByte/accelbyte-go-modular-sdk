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
    --limit '68' \
    --offset '80' \
    --status '["PUBLISHED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "VweknHF4", "defaultRequiredExp": 42, "draftStoreId": "QKq97BUf", "end": "1993-07-15T00:00:00Z", "excessStrategy": {"currency": "stmxjWZf", "method": "CURRENCY", "percentPerExp": 54}, "images": [{"as": "VL2BOWsX", "caption": "4c0EPDnr", "height": 50, "imageUrl": "0jqQ5ji8", "smallImageUrl": "euvg0K05", "width": 59}, {"as": "p3kN5Wv4", "caption": "rNaoJQa3", "height": 38, "imageUrl": "NNR2iPJK", "smallImageUrl": "X2hieOJH", "width": 18}, {"as": "3VSLQChM", "caption": "TaRpUYGF", "height": 87, "imageUrl": "wPjKo9SE", "smallImageUrl": "I3YGqmCB", "width": 92}], "localizations": {"PJ5EJbfR": {"description": "fZ5pmKcR", "title": "WieIzLnN"}, "BDDgdnJj": {"description": "yRKaaHWL", "title": "i6a2CIWe"}, "u4sVhJvG": {"description": "SOv6CyLl", "title": "1f2LiPuI"}}, "name": "Nl8SASPN", "start": "1992-02-29T00:00:00Z", "tierItemId": "LFR4oa9R"}' \
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
    --body '{"userIds": ["0NZ9oLCg", "03v143P7", "4MFUreLF"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'U9rRw2Fa' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QSrFzawK' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'iPVbNn3r' \
    --body '{"autoClaim": false, "defaultLanguage": "hJPdSbH2", "defaultRequiredExp": 87, "draftStoreId": "OpuJNrRA", "end": "1989-09-25T00:00:00Z", "excessStrategy": {"currency": "JuDaYUjY", "method": "CURRENCY", "percentPerExp": 23}, "images": [{"as": "yaVDtyJT", "caption": "iOxbMhEG", "height": 67, "imageUrl": "5vDlIbqG", "smallImageUrl": "kngP0JGE", "width": 45}, {"as": "rRc5WWka", "caption": "JxZlwlhb", "height": 61, "imageUrl": "SN9ZFM0M", "smallImageUrl": "8jUw3bbL", "width": 76}, {"as": "1KgSXu8K", "caption": "vV78f1bN", "height": 39, "imageUrl": "uAuc9Zml", "smallImageUrl": "Skin7O7w", "width": 57}], "localizations": {"aYWO3cv9": {"description": "Q50HrClP", "title": "advopnIB"}, "BBksn0YK": {"description": "x7qwHMN3", "title": "WEnXE1qj"}, "I2lQBVPa": {"description": "XuqzKn77", "title": "QRGb5B8a"}}, "name": "O70H3F0b", "start": "1974-08-29T00:00:00Z", "tierItemId": "dGjT8XJU"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DiP4IaTf' \
    --body '{"end": "1972-02-14T00:00:00Z", "name": "4alKjzLl", "start": "1995-03-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8zeirK6l' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'GhBK0lPT' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'NW8msNap' \
    --body '{"autoEnroll": true, "code": "Ye0Yi5Ri", "displayOrder": 84, "images": [{"as": "viLk6m07", "caption": "Fwy86ys6", "height": 89, "imageUrl": "fREu5unq", "smallImageUrl": "GZc9DNr4", "width": 34}, {"as": "iFy6wQzE", "caption": "Jrak0zbQ", "height": 81, "imageUrl": "0YDzsGR3", "smallImageUrl": "u3sy5MLa", "width": 50}, {"as": "aYYpakV8", "caption": "mDJAzGh6", "height": 82, "imageUrl": "z7MDkb8N", "smallImageUrl": "3MKW4ghE", "width": 28}], "localizations": {"6GSnsgi3": {"description": "pRTeB68j", "title": "IDxuCTyS"}, "8RDFcOpZ": {"description": "zkmp6hGi", "title": "9JRGlYDb"}, "ANYzoHKy": {"description": "iwu9C1U2", "title": "OPDw6BpO"}}, "passItemId": "nrZ5vMlQ"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'TQ4HRVR9' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xKVAJCFX' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'vDgmbRhq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xwB5WURd' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'sR9NwLYW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'p39EKM9I' \
    --body '{"autoEnroll": true, "displayOrder": 82, "images": [{"as": "AX1jIdhR", "caption": "tcSRykKx", "height": 57, "imageUrl": "Ym2OZPYQ", "smallImageUrl": "0kB5h7WX", "width": 71}, {"as": "UlgKLkAN", "caption": "W51ka6B0", "height": 98, "imageUrl": "NdykUI0K", "smallImageUrl": "l4l6vOzV", "width": 93}, {"as": "kJpRGRcU", "caption": "xHsbHwSJ", "height": 7, "imageUrl": "POowN9gw", "smallImageUrl": "7ZUq05vh", "width": 75}], "localizations": {"5BP0caIV": {"description": "RgjGBMZw", "title": "L9ear8CS"}, "IrNiaP3t": {"description": "5Pw2o4MD", "title": "sn3Xnaph"}, "30YULYOx": {"description": "35BPk5vA", "title": "9j7Acl0D"}}, "passItemId": "HjpjA6AF"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ntjFboaF' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LaSvEpyK' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'D1CWuVM2' \
    --q 'ELK6GhIh' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'KZyIVUiR' \
    --body '{"code": "pQRuylEe", "currency": {"currencyCode": "b88GS512", "namespace": "UjkBvke4"}, "image": {"as": "kExnuQ1q", "caption": "Uz8b84MY", "height": 74, "imageUrl": "XBZnsi8l", "smallImageUrl": "iaGKOmC6", "width": 17}, "itemId": "m6g4at8h", "quantity": 75, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'dfTYg6yf' \
    --namespace $AB_NAMESPACE \
    --seasonId '1ui1GrNV' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '8s7uu8sc' \
    --namespace $AB_NAMESPACE \
    --seasonId 'haAiTWuT' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'ByBwdunH' \
    --namespace $AB_NAMESPACE \
    --seasonId '6tVSrzkU' \
    --body '{"currency": {"currencyCode": "1LPvcIyz", "namespace": "hVRE5vQd"}, "image": {"as": "W9g1aIEh", "caption": "E8RGBZS7", "height": 36, "imageUrl": "uF2dQnqq", "smallImageUrl": "YXwqgS4e", "width": 84}, "itemId": "D93CNyfE", "nullFields": ["VFiIjtkQ", "ayFScqIS", "EOMys7dk"], "quantity": 53, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'PWtg0eQ1' \
    --limit '63' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'aw0eRBXN' \
    --body '{"index": 88, "quantity": 65, "tier": {"requiredExp": 49, "rewards": {"Ft9bzEyJ": ["LAJBt0ep", "fUUJlax7", "ALYZ1YH9"], "SX4zv9n5": ["J0KRSdQL", "xLqxovoi", "0EPksSUG"], "5J0L9beq": ["j43GmdrU", "OuvwAjCH", "059pnMWI"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'NhAgD6OS' \
    --namespace $AB_NAMESPACE \
    --seasonId 'd7V8JAUt' \
    --body '{"requiredExp": 77, "rewards": {"UELwCeQ2": ["CYbOiSiU", "An4LdYMJ", "MGuThBTT"], "CVhVGaRe": ["Kcl953Lx", "X06sGU38", "PD4Qdbu6"], "Ge1HMGAL": ["WVVbCYa5", "oe3KhzvG", "OOQg51Ju"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'THLgMIFp' \
    --namespace $AB_NAMESPACE \
    --seasonId '5FkTKmYZ' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'rRcTIQxv' \
    --namespace $AB_NAMESPACE \
    --seasonId 'vuXoHiqt' \
    --body '{"newIndex": 17}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'zhy5QZ4o' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'y59DvFWr' \
    --limit '18' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'W1Aa8DVE' \
    --body '{"exp": 24, "source": "PAID_FOR", "tags": ["4ONQc94Y", "hiXvzJCI", "rU4A5yaY"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'I1SFBAXC' \
    --body '{"passCode": "7UWCMcHt", "passItemId": "9t2HaFQc"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'LGBm1V4K' \
    --passCodes '["WoQ1w2JZ", "Samg6vzj", "hZE9lXae"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'VohJZAK3' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'wzH3e7xA' \
    --body '{"passItemId": "2LUjlPeI", "tierItemCount": 48, "tierItemId": "1JqMQL1A"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'cCYOyAhr' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'EOLV8JHM' \
    --body '{"count": 53, "source": "SWEAT", "tags": ["efl9iisb", "mqBZDI2q", "vP9jjk0Y"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'SjsZwjxS' \
    --from '3hug8hDd' \
    --limit '16' \
    --offset '0' \
    --seasonId 'C2x3TQeu' \
    --source 'SWEAT' \
    --tags '["VKwY0rax", "ZbR6ytcc", "9YJNZjj9"]' \
    --to 'ArYuVMkC' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'mofyMABR' \
    --seasonId 'ZPlKDXWK' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YBkDaZZ4' \
    --userId 'sgfLMUu5' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'YEzOKUxe' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '0gRdFx9s' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'jBiFEHqY' \
    --body '{"passCode": "cpmoA0OF", "rewardCode": "gqBs4rBj", "tierIndex": 23}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'XBCQWSmO' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AsDBwDDW' \
    --userId 'KOhuGQ3m' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE