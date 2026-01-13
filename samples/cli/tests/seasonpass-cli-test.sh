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
    --limit '43' \
    --offset '37' \
    --status '["DRAFT", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "unLmziif", "defaultRequiredExp": 45, "draftStoreId": "CczSYehn", "end": "1974-05-17T00:00:00Z", "excessStrategy": {"currency": "RpG1B376", "method": "NONE", "percentPerExp": 56}, "images": [{"as": "UH3iBK0P", "caption": "imS1JVho", "height": 13, "imageUrl": "ubf6mmMU", "smallImageUrl": "9pXRadkl", "width": 100}, {"as": "IyoUqPd8", "caption": "9E4UzYCZ", "height": 8, "imageUrl": "2J20NqQB", "smallImageUrl": "ooGbIKe5", "width": 41}, {"as": "0h34JkNJ", "caption": "QCZVgZCy", "height": 60, "imageUrl": "LBK6GGiV", "smallImageUrl": "pf4E03qR", "width": 63}], "localizations": {"d8QQVLDM": {"description": "WCpYKmMP", "title": "k6dpxI6X"}, "zrmHh81Z": {"description": "xEPP6heG", "title": "t14yptKJ"}, "dK5aeNII": {"description": "SLd3RjML", "title": "1cXVN1Jc"}}, "name": "j0pgJUmg", "start": "1987-09-21T00:00:00Z", "tierItemId": "KrJrRT8u"}' \
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
    --body '{"userIds": ["mIzSs6g7", "XLNcM6J1", "e0PoZvg4"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'EaebkcZt' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KCla8BCU' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Q4YDK9zt' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'mbrqq8DX' \
    --body '{"autoClaim": true, "defaultLanguage": "ncnaBhy7", "defaultRequiredExp": 35, "draftStoreId": "ltjahBCL", "end": "1990-11-23T00:00:00Z", "excessStrategy": {"currency": "j2i2GHvx", "method": "NONE", "percentPerExp": 7}, "images": [{"as": "13QpWUm1", "caption": "3vgSHrk1", "height": 91, "imageUrl": "NDfK9E9J", "smallImageUrl": "ccU1nS2w", "width": 50}, {"as": "nkQz8Nlz", "caption": "CSL50UkI", "height": 18, "imageUrl": "IQVVMVpE", "smallImageUrl": "DGiBOmkq", "width": 45}, {"as": "ZkyZaFZi", "caption": "VXqhsYWM", "height": 32, "imageUrl": "iKtomrzf", "smallImageUrl": "n2bQzSWh", "width": 84}], "localizations": {"k0xozVhb": {"description": "ZJoNRrS7", "title": "loLgDfy5"}, "IkdwMfsc": {"description": "H8lZzUJ5", "title": "BomWwq06"}, "y8hpg905": {"description": "C3kBBeim", "title": "m00uxMga"}}, "name": "S4H4SHQd", "start": "1996-11-08T00:00:00Z", "tierItemId": "R6pY3Fly"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'utttaGys' \
    --body '{"end": "1996-04-07T00:00:00Z", "name": "2LoQ5Kfl", "start": "1986-08-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'etm6jOph' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '4NoIHCfy' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'YfcECZLZ' \
    --body '{"autoEnroll": true, "code": "kNZnlbHG", "displayOrder": 50, "images": [{"as": "eXxffltd", "caption": "rcBS7kNG", "height": 8, "imageUrl": "LcLkICn1", "smallImageUrl": "IVvFvzXX", "width": 56}, {"as": "Vpt7ZmOG", "caption": "FCDumf2H", "height": 11, "imageUrl": "eXX3G6SS", "smallImageUrl": "0zUBuUMy", "width": 16}, {"as": "niakqAZf", "caption": "b3tCIEoK", "height": 36, "imageUrl": "hqhRQ3ce", "smallImageUrl": "XT0AjOvx", "width": 1}], "localizations": {"01pjlgTW": {"description": "89tEyV05", "title": "4VBISTHN"}, "M3pt5cpl": {"description": "tPCrkCKM", "title": "2iyqRzlq"}, "83j1Dcww": {"description": "4oKA5zte", "title": "89x97kQ4"}}, "passItemId": "8FXm51dq"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'oZoUZH3I' \
    --namespace $AB_NAMESPACE \
    --seasonId 'z64pkG8E' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '95XG81CN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ght5Unpk' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code '5Ca0GqVr' \
    --namespace $AB_NAMESPACE \
    --seasonId '7qXIeGIR' \
    --body '{"autoEnroll": true, "displayOrder": 63, "images": [{"as": "pcPIBEFO", "caption": "Fgrc5Lca", "height": 11, "imageUrl": "zJxIdLF3", "smallImageUrl": "lmYmia83", "width": 95}, {"as": "8XnOF4in", "caption": "D6mLQ39S", "height": 14, "imageUrl": "4DEX5vL1", "smallImageUrl": "AIYb8Ig1", "width": 54}, {"as": "sfRDc4td", "caption": "79jTk8vN", "height": 10, "imageUrl": "N8EvTqDI", "smallImageUrl": "bgOsDG2Q", "width": 78}], "localizations": {"ofWyXFtV": {"description": "fVns5RNt", "title": "AdROj699"}, "8FKY8BK1": {"description": "qPT5XNTB", "title": "THYWveYc"}, "bDS9Q8z4": {"description": "RzsiedeB", "title": "4ehN69xi"}}, "passItemId": "zusA6QGi"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'BemrN66r' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sG9wPInS' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'lhItqUQv' \
    --q 'if8uPfD5' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'RNJeI1nk' \
    --body '{"code": "aH8Wsw3q", "currency": {"currencyCode": "Rr2Eh0IQ", "namespace": "F4PW4Lbx"}, "image": {"as": "lkqSPq9D", "caption": "t7Q5E4VZ", "height": 96, "imageUrl": "G0xQMpzv", "smallImageUrl": "suK9dNXo", "width": 85}, "itemId": "dJr640p5", "quantity": 71, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'attQyv4v' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SUcCvptm' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'ZcNAATTN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ekIaY74K' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'TJz4R8yD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ziEpqUrO' \
    --body '{"currency": {"currencyCode": "1NSXGBox", "namespace": "qaiioNNw"}, "image": {"as": "wzUf5HqE", "caption": "Tz3gVZY7", "height": 84, "imageUrl": "ZhmRv3g0", "smallImageUrl": "cFi2FjHM", "width": 66}, "itemId": "ePqUivPe", "nullFields": ["u49lhZrI", "HhpIyB6h", "ULYRKwEU"], "quantity": 39, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'XEPSG8Gw' \
    --limit '13' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'N21jMKEb' \
    --body '{"index": 100, "quantity": 8, "tier": {"requiredExp": 83, "rewards": {"ZeTtnSAZ": ["MWyb4X9I", "xggOe3iW", "QEnNCRND"], "vOgq32c9": ["BbOW1FWN", "IIPR7jPM", "rWUEzolT"], "6ZpPuTWI": ["JwZ7f0d5", "w49x3www", "Au8q3cmp"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'FIbwZCin' \
    --namespace $AB_NAMESPACE \
    --seasonId 'HGR7WPix' \
    --body '{"requiredExp": 7, "rewards": {"wjDBfOqg": ["Uy06NaDx", "GMmYD8RY", "22TIi0lI"], "KG9Xctqy": ["SgZWJqqM", "MoDQyhyh", "Xc4fuF6U"], "BgjWjydA": ["hLvQGbh0", "HJoSGLSI", "xxIUmrIQ"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id '6d7oxTrr' \
    --namespace $AB_NAMESPACE \
    --seasonId 'erJ3Xaw3' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'kXSFLE8d' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ckoXAEUF' \
    --body '{"newIndex": 17}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JgOuLVmZ' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'KyKCyjMm' \
    --limit '27' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'fGTWJao2' \
    --body '{"exp": 41, "source": "PAID_FOR", "tags": ["22letjtp", "NOlatP7Y", "toYlRTkR"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'D3rxNLSb' \
    --body '{"passCode": "EviAvOi1", "passItemId": "RPeqtJmD"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'Hv74Jdyg' \
    --passCodes '["MNLz1jvW", "GfrNWzSU", "LFI7AvKw"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'u4zShHyo' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'jmk1MQTh' \
    --body '{"passItemId": "ZPMrUuHw", "tierItemCount": 33, "tierItemId": "3uWGH8xZ"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 's8aKLALx' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'xmE8rdfL' \
    --body '{"count": 46, "source": "SWEAT", "tags": ["uEgx9KPe", "JajdCn7I", "cu7nu7cK"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'AaSIMzg9' \
    --from '9wsFy6E9' \
    --limit '63' \
    --offset '8' \
    --seasonId 'PC3Kp9lc' \
    --source 'PAID_FOR' \
    --tags '["lmqjbQ9P", "eLSisEhx", "GkN6GrJ5"]' \
    --to 'LUVskxC5' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'MLIflxZt' \
    --seasonId 'uV9nHuUU' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0x6Ok2GL' \
    --userId '7zBFFI7Y' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'iKRP6mAJ' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'UvioTmLX' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'Xc8QhgM8' \
    --body '{"passCode": "MYbh2WdM", "rewardCode": "utnDWibC", "tierIndex": 73}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'Gxvq3pqo' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'dITBIupy' \
    --userId '1DviHXdS' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE