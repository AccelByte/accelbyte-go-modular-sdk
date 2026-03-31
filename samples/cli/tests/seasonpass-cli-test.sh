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
    --limit '67' \
    --offset '72' \
    --status '["DRAFT", "RETIRED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "mP2r5SBe", "defaultRequiredExp": 95, "draftStoreId": "fuCvU0hh", "end": "1981-01-03T00:00:00Z", "excessStrategy": {"currency": "jSMacdIY", "method": "CURRENCY", "percentPerExp": 27}, "images": [{"as": "Uzcdu4tn", "caption": "U68LVqBC", "height": 45, "imageUrl": "8Rm8X8oY", "smallImageUrl": "DtWipznT", "width": 11}, {"as": "GriyVPol", "caption": "A1fsH8Y8", "height": 66, "imageUrl": "QXMks9cT", "smallImageUrl": "ZLTgfrmw", "width": 93}, {"as": "rpoGBd1h", "caption": "bYzrtTOA", "height": 22, "imageUrl": "iaGoibCV", "smallImageUrl": "sdkSgMe9", "width": 45}], "localizations": {"Z2kNYoBN": {"description": "IHjUiGYL", "title": "gEuAbBLy"}, "VcX43Czm": {"description": "WiDQtik1", "title": "vYrevu5J"}, "PEIonMXe": {"description": "0j3z2a1E", "title": "wy7nDQhY"}}, "name": "bmeh0vTo", "start": "1987-06-05T00:00:00Z", "tierItemId": "EHzCCaLE"}' \
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
    --body '{"userIds": ["ZKMdAkIj", "lrThp1Jl", "LBOCY27R"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'GRVPW3de' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'rtoK97Hm' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'laIBxfv2' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Qienk4CE' \
    --body '{"autoClaim": true, "defaultLanguage": "mG6qSBhB", "defaultRequiredExp": 46, "draftStoreId": "aey3umls", "end": "1983-11-09T00:00:00Z", "excessStrategy": {"currency": "O7t1f19o", "method": "NONE", "percentPerExp": 68}, "images": [{"as": "O5WFUNvF", "caption": "NqwbizAb", "height": 10, "imageUrl": "aIHXleKO", "smallImageUrl": "8TjSA9Ay", "width": 55}, {"as": "XV8NwKmL", "caption": "7UdCG6iE", "height": 52, "imageUrl": "3jZCfhxh", "smallImageUrl": "KcnoM9Sp", "width": 78}, {"as": "8F22Pouw", "caption": "FKvsmqHq", "height": 73, "imageUrl": "3V0Ms0t7", "smallImageUrl": "FSywUgij", "width": 40}], "localizations": {"cD6InaQI": {"description": "zSBrh6GI", "title": "54fRpjZs"}, "fCy5GMKv": {"description": "hSjqwxlJ", "title": "i1qPJvG8"}, "ComoCQMw": {"description": "ti4TRSpX", "title": "zUGinE9e"}}, "name": "Iqdga8UO", "start": "1972-09-23T00:00:00Z", "tierItemId": "Tc10kcLt"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'tUkgnp70' \
    --body '{"end": "1988-06-06T00:00:00Z", "name": "6IxjnEFX", "start": "1973-04-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'iVQQBUaZ' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'Yp0TxPA8' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'b9L44noi' \
    --body '{"autoEnroll": true, "code": "6MDqvBi1", "displayOrder": 79, "images": [{"as": "OVbGTgRS", "caption": "WUz1kWxo", "height": 24, "imageUrl": "67GsYbma", "smallImageUrl": "ShDYULY2", "width": 4}, {"as": "5LHbqBhS", "caption": "MMVQ07MD", "height": 56, "imageUrl": "gC7Lyzco", "smallImageUrl": "nkFM0uH0", "width": 36}, {"as": "uLNkjdTg", "caption": "uWEtjoNQ", "height": 69, "imageUrl": "KAbsLiii", "smallImageUrl": "VuWYRtKL", "width": 41}], "localizations": {"iQd1XQoI": {"description": "GFQUa559", "title": "mY46cgfm"}, "X5zRSu9P": {"description": "hdjlMZ88", "title": "Yw5oGcP4"}, "cR25jCa7": {"description": "xmGCVcSI", "title": "iOPRJVgy"}}, "passItemId": "y2JZtpNa"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'TWZ8LwZF' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wie57Q5r' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '2LDWUz8q' \
    --namespace $AB_NAMESPACE \
    --seasonId 'cXAjbin9' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '8sb66ldZ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Fse3fzCM' \
    --body '{"autoEnroll": true, "displayOrder": 91, "images": [{"as": "q0phHpGE", "caption": "CmTQ58TH", "height": 31, "imageUrl": "WmDQtQhJ", "smallImageUrl": "DtgDx2pE", "width": 68}, {"as": "8NZN59on", "caption": "Y2IvC0Xe", "height": 22, "imageUrl": "tKH2pBJQ", "smallImageUrl": "CC6ry6aO", "width": 36}, {"as": "5WTeIidh", "caption": "fNlq3wOX", "height": 96, "imageUrl": "jrdfpjlH", "smallImageUrl": "VlTVaNB3", "width": 20}], "localizations": {"q97x6SO9": {"description": "usokwA5z", "title": "iJZ4vweJ"}, "YkGkbQno": {"description": "vjWJ4lTI", "title": "KPPwr745"}, "KDMkMbn8": {"description": "S0lAwibD", "title": "DLEiA5iJ"}}, "passItemId": "teMtpPAi"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'bkQ9dAnq' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'HDjIeh3b' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'ULG3hARK' \
    --q 'gzUkR4mX' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'RixmHCgd' \
    --body '{"code": "4lV7BIJi", "currency": {"currencyCode": "7WNRizUs", "namespace": "T1UQsSj3"}, "image": {"as": "20qmqWsH", "caption": "1FhBPqxH", "height": 15, "imageUrl": "brI6GBO5", "smallImageUrl": "nCqdiAmE", "width": 74}, "itemId": "FFBWhF6S", "quantity": 1, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'jQnBG8LD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xtciMlbX' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'TvIkKCRq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'exPJfA0u' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'vOWxQdBh' \
    --namespace $AB_NAMESPACE \
    --seasonId 'fcFviJE4' \
    --body '{"currency": {"currencyCode": "sFBXOjqS", "namespace": "0HkdsXwr"}, "image": {"as": "clQNoD65", "caption": "rHwcRvMH", "height": 98, "imageUrl": "qiDfndfq", "smallImageUrl": "j75OgApH", "width": 49}, "itemId": "PtyUgt5R", "nullFields": ["7MT3OO39", "nXdr6S4j", "yhIvySVF"], "quantity": 32, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'nyo9ENvP' \
    --limit '1' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'lmqGgfVG' \
    --body '{"index": 4, "quantity": 96, "tier": {"requiredExp": 8, "rewards": {"IgcTyUOA": ["0btv3Lwm", "MC0WudIj", "Sp4s7aEi"], "B40rM7PG": ["1G67iZ0s", "596aAV6j", "syvWCSTD"], "pOj4xxfy": ["Zqq5KeMG", "g00gamJh", "clnf2F1t"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '1lueZDpe' \
    --namespace $AB_NAMESPACE \
    --seasonId 'E6aXlobT' \
    --body '{"requiredExp": 76, "rewards": {"ADZbgqbY": ["Mn7MG9Oj", "QH3jVFVL", "9b5TWlKV"], "tdSqkW9l": ["4mhyYJYn", "j6ZaYP1w", "RH4LBA0L"], "86o7DIcB": ["TTNAcVMg", "3MWoQqN1", "4RbiA7HD"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'LjxDW66p' \
    --namespace $AB_NAMESPACE \
    --seasonId 'XqzpcHFe' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'wPNAdwy6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HQqDFRZX' \
    --body '{"newIndex": 100}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XNPkJJbi' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'FSQm4nON' \
    --limit '51' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'b3N0GRC2' \
    --body '{"exp": 74, "source": "SWEAT", "tags": ["XfkZ5VQA", "mEDSireW", "UnraXJLq"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'yhYLeOqy' \
    --body '{"passCode": "wznlP4PZ", "passItemId": "qAQEsZYh"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'FU12A6rL' \
    --passCodes '["kN4u5J1C", "w7kZ5JOh", "t78GcAmo"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'cIcDLCg0' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'bNft5Ovn' \
    --body '{"passItemId": "hpHNUnNY", "tierItemCount": 2, "tierItemId": "kbjByxf8"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'yflSY8hr' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'rVbl4V6x' \
    --body '{"count": 87, "source": "SWEAT", "tags": ["2kfOK7NA", "8f9PHoDi", "gR5la1iS"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'QTUgk2LU' \
    --from 'ISnNp7b2' \
    --limit '5' \
    --offset '4' \
    --seasonId 'SX5gVWba' \
    --source 'SWEAT' \
    --tags '["ZscksKMS", "beyZiHGe", "etnObuo3"]' \
    --to 'IqNGUfD1' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'ZUsCP17A' \
    --seasonId 'IiHI4Xt4' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'RUcZDS7J' \
    --userId 'vSUoG4Gs' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'bzhD0wSF' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'nmh1nhNT' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId '1EP3YNTu' \
    --body '{"passCode": "ip69MSSA", "rewardCode": "W3kYT5KW", "tierIndex": 12}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '4ybD5A12' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'qCRuxre7' \
    --userId '216F3TVc' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE