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
    --limit '52' \
    --offset '18' \
    --status '["PUBLISHED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "tcmxfZK7", "defaultRequiredExp": 32, "draftStoreId": "2vaCzRpV", "end": "1974-09-15T00:00:00Z", "excessStrategy": {"currency": "DrU6m9KZ", "method": "NONE", "percentPerExp": 37}, "images": [{"as": "711KUx1r", "caption": "R4DvJTc9", "height": 45, "imageUrl": "cDCQsXze", "smallImageUrl": "y55HZuDx", "width": 34}, {"as": "wKn2X57Q", "caption": "vdnsIwVl", "height": 6, "imageUrl": "50GLIjKQ", "smallImageUrl": "RuxJz15T", "width": 19}, {"as": "QDBA9cFi", "caption": "EMzoXLjg", "height": 66, "imageUrl": "0oJ0HQUW", "smallImageUrl": "8xRKrN5U", "width": 8}], "localizations": {"sjj7cDSi": {"description": "UZI2HDPj", "title": "EEiTYaKP"}, "e4ayIHlw": {"description": "FzjZyTpV", "title": "2x6MRXzL"}, "MZFl5Ar4": {"description": "Mh5Ce0l0", "title": "Ro93hVJx"}}, "name": "IiDhrpLE", "start": "1998-01-25T00:00:00Z", "tierItemId": "hTv0UWs0"}' \
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
    --body '{"userIds": ["dfMmvxgl", "d76AO5fu", "mTvGGdEa"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IGi0fttv' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '1S0pJipp' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XIkzGYNT' \
    --body '{"autoClaim": true, "defaultLanguage": "wGlXkUwa", "defaultRequiredExp": 23, "draftStoreId": "y5SbQW7d", "end": "1985-03-09T00:00:00Z", "excessStrategy": {"currency": "w137HuxI", "method": "NONE", "percentPerExp": 13}, "images": [{"as": "AMzEWUCF", "caption": "y5C9w6hu", "height": 71, "imageUrl": "uw2JcWlf", "smallImageUrl": "BXetRVxB", "width": 62}, {"as": "48F1NDYT", "caption": "7JsxiXH1", "height": 5, "imageUrl": "I1g88Szx", "smallImageUrl": "Fna3E7Jp", "width": 88}, {"as": "0cj6irf4", "caption": "jB23DlPw", "height": 46, "imageUrl": "DQxGzhRu", "smallImageUrl": "8ydKiBpP", "width": 89}], "localizations": {"TDrUuKym": {"description": "wkvw9H6Z", "title": "rd3YaMLJ"}, "8RCdKt17": {"description": "E0fn8cqw", "title": "JeFRky1f"}, "Z0HVRAfo": {"description": "vC0zhndL", "title": "yQi1xfXJ"}}, "name": "EjjknOIH", "start": "1978-07-25T00:00:00Z", "tierItemId": "dFG3vbNz"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '5KFMJDQr' \
    --body '{"end": "1984-07-28T00:00:00Z", "name": "db30yITS", "start": "1972-11-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'jejAvFAK' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'pKeyIkcu' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'N7ZheZBs' \
    --body '{"autoEnroll": false, "code": "LDLTlh8x", "displayOrder": 34, "images": [{"as": "9PvhnSd6", "caption": "Tm5GZ7cN", "height": 100, "imageUrl": "s6WWcmPw", "smallImageUrl": "TPsy3DcE", "width": 44}, {"as": "M1pbIPOQ", "caption": "K32LHUdM", "height": 23, "imageUrl": "krzZ5i1y", "smallImageUrl": "5oeXsjwW", "width": 55}, {"as": "0Angsg0s", "caption": "f9fp9MzK", "height": 19, "imageUrl": "suNQCOBX", "smallImageUrl": "j8BszI1l", "width": 11}], "localizations": {"R9Mq6OFC": {"description": "Zw9d3lD1", "title": "eTEc825F"}, "OsmCaXF2": {"description": "4d9HB3Ma", "title": "US0We8gD"}, "WsB1K6yG": {"description": "Eo317Qir", "title": "N7qGrzS4"}}, "passItemId": "NanTAI3u"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '7SRl3R9z' \
    --namespace $AB_NAMESPACE \
    --seasonId 'iD2z6Qdd' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'ULv7jK80' \
    --namespace $AB_NAMESPACE \
    --seasonId 'foymtjKr' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'UO4mZoae' \
    --namespace $AB_NAMESPACE \
    --seasonId '6xNqCxuK' \
    --body '{"autoEnroll": false, "displayOrder": 29, "images": [{"as": "IoJkaHHG", "caption": "FuiNINdQ", "height": 37, "imageUrl": "YT5psb6g", "smallImageUrl": "a7P65C9t", "width": 14}, {"as": "lmTViWay", "caption": "EHVeOgK3", "height": 41, "imageUrl": "QfiH1IFj", "smallImageUrl": "LLMsggSI", "width": 29}, {"as": "3nvxYUHc", "caption": "vfs9C6W9", "height": 75, "imageUrl": "GSQsNkUJ", "smallImageUrl": "x6zulBpE", "width": 12}], "localizations": {"Yfgz94b7": {"description": "cUGcjZAz", "title": "QJ9TTMmp"}, "bj0TVOqz": {"description": "0iZs4JCX", "title": "EwYCyyQH"}, "R4HIne58": {"description": "gWGAAOSm", "title": "d4kdo57o"}}, "passItemId": "GMs99UHE"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'vShwHEdC' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'LfVZzre9' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'ymkVuKnf' \
    --q 'AUVNFK83' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'uSJGp5RA' \
    --body '{"code": "EhfGFn8g", "currency": {"currencyCode": "Nn9dCQ4t", "namespace": "kwLRNI7d"}, "image": {"as": "hV8yacdp", "caption": "eX2YqX2r", "height": 47, "imageUrl": "pHeXZekp", "smallImageUrl": "QE7d91su", "width": 76}, "itemId": "OpOTjmOn", "quantity": 2, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '09aBPYHM' \
    --namespace $AB_NAMESPACE \
    --seasonId 'C7ht310z' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'ngHJENzu' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TV5HPXss' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'FQI4BcD6' \
    --namespace $AB_NAMESPACE \
    --seasonId 'h7F5YUtc' \
    --body '{"currency": {"currencyCode": "30kzsQzn", "namespace": "ZfDNBmo8"}, "image": {"as": "xfp8aiRS", "caption": "luJ86u2z", "height": 2, "imageUrl": "3pkgw9Fv", "smallImageUrl": "QtHYofIY", "width": 2}, "itemId": "nsumNR6z", "nullFields": ["bMAhsGqE", "mbyTOzPU", "zbPTIf9J"], "quantity": 79, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'dYzhJZXj' \
    --limit '43' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'fNqms0eg' \
    --body '{"index": 14, "quantity": 51, "tier": {"requiredExp": 1, "rewards": {"lWabv0Uz": ["5GIl8qPq", "xyDe9fRI", "2cGmVMGx"], "gSCnqU9x": ["PTbf5yAr", "S9Gv28C1", "AHTjjrku"], "OaYpcgC3": ["G6KykyZj", "hScivbMi", "vL2GEuND"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'XIE8lXs9' \
    --namespace $AB_NAMESPACE \
    --seasonId 'WhbnSNqw' \
    --body '{"requiredExp": 70, "rewards": {"GUinh6rl": ["UOPTk2iS", "AGpiNkRc", "f0DpeQYU"], "uIJGZ2ig": ["YrJSfF6d", "o4pguAsH", "cmxvQYqP"], "xZd6wLKe": ["NkOaFUIF", "IFDqSYnI", "cuIF5aax"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '3pibCIC7' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kWw1u5SO' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'xoYNO8VV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'CLu09iYP' \
    --body '{"newIndex": 100}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'OpCP3s7t' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'yc7gtFZ4' \
    --limit '37' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'YG8u8Qto' \
    --body '{"exp": 85, "source": "PAID_FOR", "tags": ["yg0qlbof", "SxWiZpH2", "Kbz1z8EW"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'g1XKSxU0' \
    --body '{"passCode": "NDc8u4t4", "passItemId": "mgCp90ma"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'r2Qm4wfb' \
    --passCodes '["tWBxcLfV", "urZ9K2qE", "UGjaTqeo"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'qMVy18n6' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '9zZ4ezJR' \
    --body '{"passItemId": "dq6j9ZAi", "tierItemCount": 75, "tierItemId": "sHvFuMXD"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'n6YsAdzw' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'CnaYQmTY' \
    --body '{"count": 87, "source": "PAID_FOR", "tags": ["D2MVTtEh", "iSQ9EsSq", "F95ccJoX"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'PTsnoXJd' \
    --from 'I17gmGOy' \
    --limit '27' \
    --offset '4' \
    --seasonId 'Hqy4wbFd' \
    --source 'PAID_FOR' \
    --tags '["euNq2p8G", "f0mRns4o", "5m3Kb22O"]' \
    --to 'mOkfUwhB' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'IIiSorhr' \
    --seasonId 'hSzeUMv1' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'aV2MAfH4' \
    --userId 'adySqYsX' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'cXvcA2Q4' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'e1iH9vGb' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'YLmsNird' \
    --body '{"passCode": "unkSbcqe", "rewardCode": "HtWKbg0n", "tierIndex": 69}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId '9yQ039vZ' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'CvQurIB2' \
    --userId '9IsA6ow6' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE