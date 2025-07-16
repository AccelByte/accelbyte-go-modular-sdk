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
    --limit '47' \
    --offset '51' \
    --status '["RETIRED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "NC5e7P1A", "defaultRequiredExp": 73, "draftStoreId": "9TlCYq9a", "end": "1979-01-29T00:00:00Z", "excessStrategy": {"currency": "erzpNOLf", "method": "CURRENCY", "percentPerExp": 12}, "images": [{"as": "8ZdZeeXj", "caption": "1iTOPgUF", "height": 32, "imageUrl": "JHJ9pUEP", "smallImageUrl": "4uxdk6ej", "width": 56}, {"as": "SGDmcHX1", "caption": "JLYUgIag", "height": 30, "imageUrl": "WQkKDIlx", "smallImageUrl": "9yfoXboY", "width": 23}, {"as": "C2Pr58GO", "caption": "2ZyHvOIC", "height": 97, "imageUrl": "RyH8Hcs6", "smallImageUrl": "4lzAlJ66", "width": 81}], "localizations": {"bmWFfqzp": {"description": "8D4wqNKc", "title": "zAU6FnVP"}, "NU64qEtE": {"description": "zRzrokjw", "title": "FKaooq3l"}, "QS4sP0aN": {"description": "KjqZL3Rv", "title": "WLBDjPNE"}}, "name": "yxLRIFk2", "start": "1972-10-15T00:00:00Z", "tierItemId": "bcp5u1eF"}' \
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
    --body '{"userIds": ["obv3RKXa", "D0UylOml", "M3AKRE0o"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'A5POAgcn' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'anyYbU1b' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'snTiCmEI' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DE0SKoEX' \
    --body '{"autoClaim": true, "defaultLanguage": "m76hoOGY", "defaultRequiredExp": 92, "draftStoreId": "Xsk5z3Jk", "end": "1976-04-14T00:00:00Z", "excessStrategy": {"currency": "psCwqHlB", "method": "CURRENCY", "percentPerExp": 69}, "images": [{"as": "6sBSov1h", "caption": "YDWqpYTZ", "height": 49, "imageUrl": "Mf6joW04", "smallImageUrl": "QhbppaDR", "width": 8}, {"as": "osB8Hmlh", "caption": "Jdj2IGfP", "height": 21, "imageUrl": "HbVNNnGJ", "smallImageUrl": "WOiZllU9", "width": 14}, {"as": "KQ4ZkzEB", "caption": "uTrooe1O", "height": 97, "imageUrl": "gYbmgCFk", "smallImageUrl": "J2RDB6cu", "width": 58}], "localizations": {"L5kYeFdn": {"description": "ct1x6WbL", "title": "VUAioBR8"}, "AAKwEWjI": {"description": "MrARx1yY", "title": "8wW9wioP"}, "kaAjeyLl": {"description": "TsIWrGX4", "title": "vBfrhxMc"}}, "name": "p8veZt0f", "start": "1990-11-01T00:00:00Z", "tierItemId": "bjqd9oMo"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MmQvKVhw' \
    --body '{"end": "1997-01-20T00:00:00Z", "name": "cu2y7CTp", "start": "1995-05-13T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '7VlQhIoJ' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'gDYjslP8' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'JRQ1gmIS' \
    --body '{"autoEnroll": true, "code": "yyiXcVB1", "displayOrder": 29, "images": [{"as": "F1tF3DMn", "caption": "AVwACHYz", "height": 19, "imageUrl": "CzPOLQxp", "smallImageUrl": "94L401fI", "width": 86}, {"as": "o7QOAoQX", "caption": "3YHZ8Hfk", "height": 33, "imageUrl": "RmoolIKS", "smallImageUrl": "eN3CUrZE", "width": 76}, {"as": "cs3PHaZj", "caption": "DTMW7GHh", "height": 64, "imageUrl": "FEgYIALC", "smallImageUrl": "tFXP8u3r", "width": 75}], "localizations": {"X2rYW8V4": {"description": "RZGSAuaH", "title": "H16oSMCT"}, "pZiHv0vM": {"description": "y7TEf3Ne", "title": "2rTBxT6i"}, "BEFSnOXD": {"description": "rqJjnPN0", "title": "QRBKQQTk"}}, "passItemId": "qb5vsxTN"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'gODEblaJ' \
    --namespace $AB_NAMESPACE \
    --seasonId '1YRRcKOp' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'ayDwx3VE' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gNk0kqoV' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '5naOCCcx' \
    --namespace $AB_NAMESPACE \
    --seasonId 'hAO2k6zI' \
    --body '{"autoEnroll": true, "displayOrder": 7, "images": [{"as": "OABh8Y7g", "caption": "OkGuyOJF", "height": 2, "imageUrl": "Bz2Ei9oq", "smallImageUrl": "rWk1fvQO", "width": 17}, {"as": "fW2oal8O", "caption": "1u1JgPA2", "height": 67, "imageUrl": "uH71J7xh", "smallImageUrl": "oQFOx6Xc", "width": 29}, {"as": "WJf0quDc", "caption": "fvLrXTxa", "height": 6, "imageUrl": "eVcKRFEL", "smallImageUrl": "IQTMbk5h", "width": 93}], "localizations": {"p7qZy8ru": {"description": "WDaOmYlF", "title": "qdKSeV9K"}, "V76ZvcrA": {"description": "IJKR6ITV", "title": "kvhDZe4p"}, "4KYeBojI": {"description": "Vgy8H0XR", "title": "0Z9e3RTy"}}, "passItemId": "0Qj0E2Bj"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 't08898Bd' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'e8zSrtSc' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'w1O6xbWw' \
    --q 'K6OplV4Z' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'wWVqzJxl' \
    --body '{"code": "OogGm4v6", "currency": {"currencyCode": "fbPv8qWr", "namespace": "Wjnld2Nu"}, "image": {"as": "ADHnV6hl", "caption": "KjJl05DQ", "height": 4, "imageUrl": "H3vE7nfP", "smallImageUrl": "gZQcG0DQ", "width": 21}, "itemId": "wBzDHqSN", "quantity": 63, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'lHSs5q3A' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gHUdX0Wn' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'gM0b8IjX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ZqVBiPhW' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'n9nbbicW' \
    --namespace $AB_NAMESPACE \
    --seasonId 'bEiC7oo0' \
    --body '{"currency": {"currencyCode": "27XPPgVw", "namespace": "TpS1KTyb"}, "image": {"as": "0a5lOjoE", "caption": "NtrtgBEI", "height": 25, "imageUrl": "OoMgDlrG", "smallImageUrl": "i3TQZhHi", "width": 66}, "itemId": "ACGU7Kmw", "nullFields": ["TX62S3xi", "7SJJg8eF", "M3L3WYen"], "quantity": 56, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '1fSGTUeg' \
    --limit '88' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'Flsw7pSt' \
    --body '{"index": 83, "quantity": 75, "tier": {"requiredExp": 11, "rewards": {"l387oJl9": ["vLXUKwB3", "Qyv9sB4e", "NSwjkGN0"], "wPFL4G2M": ["tLy4FMaI", "ModKEIGk", "dWkoWGIo"], "UlR4kuNQ": ["6FpGQ6ac", "PpfnJoE3", "qJAqg7FY"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id '7GRqGs1G' \
    --namespace $AB_NAMESPACE \
    --seasonId 'e6gzBtLb' \
    --body '{"requiredExp": 3, "rewards": {"JuU7RHAe": ["OYNiZlo2", "OHtVZVDk", "ovQChhES"], "lHft1Zlh": ["M94dC3Is", "l14Za3Ec", "WKKrDFr1"], "Z2rHolKO": ["sR3Odb6g", "Ancs8RjW", "nv2FWpDn"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '5LSvdCaV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'KXCecfbY' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'l8oP6h0T' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Y9iKptFl' \
    --body '{"newIndex": 10}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XR4SctnL' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'UFvzzxyz' \
    --limit '64' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId '59idkhJM' \
    --body '{"exp": 66, "source": "PAID_FOR", "tags": ["0n3zooV5", "5W43kssb", "qwQ2vAkJ"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'hw35q8xe' \
    --body '{"passCode": "R2YEw40X", "passItemId": "1Xz3F1lx"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'bVHgkKik' \
    --passCodes '["AoYqGR3g", "Iuj3uslv", "TyayVPd6"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Uk5YZBlf' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'u5nIxmU7' \
    --body '{"passItemId": "JubrOWJm", "tierItemCount": 67, "tierItemId": "GPpMhusL"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'IqlaFv0p' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'MLgHpaBk' \
    --body '{"count": 96, "source": "PAID_FOR", "tags": ["YKbFGFfX", "YSdCG3gh", "CfFu1FTN"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'gIwRejfN' \
    --from 'VtfqoFoO' \
    --limit '59' \
    --offset '22' \
    --seasonId 'wLZeZeKn' \
    --source 'SWEAT' \
    --tags '["VP2tf8Pu", "Sw5kv6P7", "FDCL4qT6"]' \
    --to 'cvfEvmrF' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'q5Q4swI3' \
    --seasonId 'WCWE8dRT' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'oxsYVPpN' \
    --userId 'jiXri6xb' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'gM9fpFQU' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'GwjC680W' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'HMvdZpLR' \
    --body '{"passCode": "RDPXE1dV", "rewardCode": "oOxlNJVA", "tierIndex": 7}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'DvtPVUP8' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ex5krtRZ' \
    --userId '12Bt3Hti' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE