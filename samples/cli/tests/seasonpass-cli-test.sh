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
    --limit '82' \
    --offset '69' \
    --status '["PUBLISHED", "PUBLISHED", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "iVC6sZtD", "defaultRequiredExp": 22, "draftStoreId": "mlQ7jfbX", "end": "1983-02-11T00:00:00Z", "excessStrategy": {"currency": "XhUnZvQe", "method": "CURRENCY", "percentPerExp": 33}, "images": [{"as": "oKOGME9Z", "caption": "iUIYe19V", "height": 35, "imageUrl": "1cMvoIoJ", "smallImageUrl": "0TYmUhLJ", "width": 32}, {"as": "qx3pggTF", "caption": "hmudN79x", "height": 81, "imageUrl": "RJFs1dD1", "smallImageUrl": "JSSKpImZ", "width": 47}, {"as": "LNX0Dn9T", "caption": "HUK17Qzb", "height": 32, "imageUrl": "j933Db05", "smallImageUrl": "YBhM2LzJ", "width": 70}], "localizations": {"m05ObPVe": {"description": "JH0SE5X9", "title": "5IDXc6aS"}, "SYlWyvpJ": {"description": "wbKw1D5d", "title": "TwV19r92"}, "QKG9ZKJJ": {"description": "IP9MB8V3", "title": "dlfHXGZy"}}, "name": "bWJqka8b", "start": "1978-08-25T00:00:00Z", "tierItemId": "4bwLPAmo"}' \
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
    --body '{"userIds": ["XQb3jJIP", "VqMiPRHm", "LbQt93NZ"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hAo8Mi6I' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'srbBdcs6' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PNLBT1Sf' \
    --body '{"autoClaim": false, "defaultLanguage": "NNBLbJFD", "defaultRequiredExp": 18, "draftStoreId": "qUzwmXMc", "end": "1982-02-20T00:00:00Z", "excessStrategy": {"currency": "dLoiohvG", "method": "CURRENCY", "percentPerExp": 6}, "images": [{"as": "AsEDGLml", "caption": "NENawArI", "height": 5, "imageUrl": "EvDMUaYA", "smallImageUrl": "p1YQkqHn", "width": 63}, {"as": "sBGxTCf7", "caption": "QOYKGfVv", "height": 96, "imageUrl": "EyoYRReC", "smallImageUrl": "fKksaLov", "width": 44}, {"as": "6kmW0P8p", "caption": "qtx2NKPx", "height": 42, "imageUrl": "N4Vg4bWs", "smallImageUrl": "s8YlEcbP", "width": 17}], "localizations": {"HUhteHGb": {"description": "FyXTFfs3", "title": "53afUg4f"}, "ttuDHDZC": {"description": "pmAtz9XS", "title": "hrID9R1F"}, "IuJhfpRd": {"description": "glmh8OLV", "title": "36ophpAF"}}, "name": "LkcxIY5x", "start": "1977-06-17T00:00:00Z", "tierItemId": "wVQCq5cp"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2w7Vyu13' \
    --body '{"end": "1978-03-14T00:00:00Z", "name": "NiMrPVqU", "start": "1974-06-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'AtxZjJ1M' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'A7WfFLzh' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'd4MVCl8q' \
    --body '{"autoEnroll": true, "code": "Kq06Apfl", "displayOrder": 52, "images": [{"as": "VOH9Sio3", "caption": "MUssEM4h", "height": 37, "imageUrl": "Do8ZlkBS", "smallImageUrl": "s1EJBplb", "width": 43}, {"as": "JdTvbF7f", "caption": "H150lEKc", "height": 84, "imageUrl": "cLi0UnUW", "smallImageUrl": "SneUXkoB", "width": 62}, {"as": "SdPkLLNm", "caption": "b0RP4RTD", "height": 78, "imageUrl": "WMMKrz6R", "smallImageUrl": "xMq1Kl6J", "width": 86}], "localizations": {"wPUm3mQE": {"description": "duCQMlgM", "title": "U5FhSYWc"}, "UJmwVFhP": {"description": "IkENf6NF", "title": "z5BweaDj"}, "eWHYgPfT": {"description": "T5ZSnFqi", "title": "12IHHXut"}}, "passItemId": "CehlNzIB"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'gXp9ykLn' \
    --namespace $AB_NAMESPACE \
    --seasonId 'kCNyuob9' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'oEam3HX3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ecEMV1vC' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'VDtunwvs' \
    --namespace $AB_NAMESPACE \
    --seasonId 'hRBdmki4' \
    --body '{"autoEnroll": true, "displayOrder": 59, "images": [{"as": "ou1XwOsw", "caption": "Q03sYu07", "height": 93, "imageUrl": "nzFRH0rf", "smallImageUrl": "Cezin4D0", "width": 24}, {"as": "z2dzAQBR", "caption": "C7N7DYyb", "height": 18, "imageUrl": "i44uILlY", "smallImageUrl": "Y4zVLW9J", "width": 40}, {"as": "WL4xG1iU", "caption": "6VT76RZJ", "height": 25, "imageUrl": "DbZZx6TH", "smallImageUrl": "ClJdwhfp", "width": 64}], "localizations": {"2AgKX3fa": {"description": "Kch1IL8r", "title": "BLtSf2jd"}, "scQrhzcd": {"description": "sNTxvJPT", "title": "Y816LBeg"}, "lSmDQVv0": {"description": "mMYXyFCG", "title": "XH0sNsnw"}}, "passItemId": "EbvuE8Pi"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ovO9CV6b' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '0S9gR4Xt' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '8dyeuHXW' \
    --q '9rC24WP1' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'W9pGo8R0' \
    --body '{"code": "SfmhwwuO", "currency": {"currencyCode": "eFnDwG8D", "namespace": "u3BgJMU9"}, "image": {"as": "XAs0xb7W", "caption": "4O8dqkb5", "height": 39, "imageUrl": "UAFnzmO1", "smallImageUrl": "3RW82cpX", "width": 44}, "itemId": "83An63nN", "quantity": 81, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'mF4QDuTd' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EBP3k7dK' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'l64YFz4t' \
    --namespace $AB_NAMESPACE \
    --seasonId '9lE2QSTS' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code '9ywuzg6c' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Nu76Zzof' \
    --body '{"currency": {"currencyCode": "vtgOQsjs", "namespace": "C9e8tOg3"}, "image": {"as": "j1m2Ac6V", "caption": "DA7HLFI6", "height": 58, "imageUrl": "nuQxjurb", "smallImageUrl": "QlwFgAnq", "width": 47}, "itemId": "dqBktjc0", "nullFields": ["Nw1G0YGC", "9PMtJevL", "buJRgcBZ"], "quantity": 57, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'pU55DUPW' \
    --limit '95' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'PoPb5nq0' \
    --body '{"index": 25, "quantity": 56, "tier": {"requiredExp": 99, "rewards": {"nVozCXpH": ["Osga70fx", "uMHimO6s", "pmC4s6FA"], "I8U1dPVi": ["l3vKCdL3", "hlvmVVMI", "eWK0neNg"], "HkMosQ66": ["A4ISe0ps", "Vf14qTcY", "hEpygTDG"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'whJ8Wkhq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'gdHMNitM' \
    --body '{"requiredExp": 28, "rewards": {"PRiaQpjr": ["oZ9lqlti", "bonVOEzQ", "OFbDEqam"], "OFxXsOqR": ["pFC9sqRm", "OiaQPRaL", "rwTftNlP"], "Z25eNvw5": ["HnWW34SE", "DMVDXb0g", "MEB2sEVP"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'xGklgdrm' \
    --namespace $AB_NAMESPACE \
    --seasonId '7VdNzekd' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'Gdb5Zfc1' \
    --namespace $AB_NAMESPACE \
    --seasonId 'hPuYpiCp' \
    --body '{"newIndex": 70}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'RiSeGALB' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'kFpcfJjO' \
    --limit '82' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'OsCJfcHY' \
    --body '{"exp": 100, "source": "SWEAT", "tags": ["ox6X3iUL", "OpKX9K5m", "wQrGvMHf"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId '7NQXi1Fw' \
    --body '{"passCode": "0YjW8WrF", "passItemId": "k1HlI0Hj"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'DntLk6my' \
    --passCodes '["keDgeDzJ", "3c0Bunwx", "XDTGnHYd"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'froN3vmw' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'hWxBDDCu' \
    --body '{"passItemId": "ma0G4DUK", "tierItemCount": 46, "tierItemId": "1GcL34ob"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'TWLYlwCB' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'NyNhT5C0' \
    --body '{"count": 51, "source": "SWEAT", "tags": ["zOhtf1I0", "blQVQZ7K", "McMiTNv3"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'SI7GPz7X' \
    --from '9hwgNayf' \
    --limit '58' \
    --offset '45' \
    --seasonId 'yEKPF1dC' \
    --source 'SWEAT' \
    --tags '["6Lz8HBDc", "1zZbSC9F", "926UZ8oA"]' \
    --to 'Yf9RYorO' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Y3h2nFLU' \
    --seasonId 'MEiGkPxA' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'oVv00DPe' \
    --userId 'ywzdeo5l' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'P5eIM07U' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'gAQxruco' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'a55jENRq' \
    --body '{"passCode": "Wr0cyO5e", "rewardCode": "A6S1leAY", "tierIndex": 2}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'YxZuXERG' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'IvPHytoa' \
    --userId 'qrY2R3rf' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE