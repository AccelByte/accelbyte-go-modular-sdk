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
    --limit '14' \
    --offset '63' \
    --status '["RETIRED", "DRAFT", "RETIRED"]' \
    > test.out 2>&1
eval_tap $? 2 'QuerySeasons' test.out

#- 3 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "FlDLsvCDJdelOZYZ", "defaultRequiredExp": 24, "draftStoreId": "yOUXr2WePVPqaEq5", "end": "1997-04-07T00:00:00Z", "excessStrategy": {"currency": "H2ga0c14YACncTgt", "method": "NONE", "percentPerExp": 8}, "images": [{"as": "sB7zJNtX5Wi4eNji", "caption": "5vLwqm0h414ymLHn", "height": 95, "imageUrl": "mzLFLcnt0Sep6wif", "smallImageUrl": "B75lFNslkleEGLXN", "width": 87}, {"as": "uFYsVWL8VBW3XoNf", "caption": "etudX8ZlAgbiyid7", "height": 31, "imageUrl": "VM1zaqADNC6zTnCg", "smallImageUrl": "vUr4cqmjkuT7nDA3", "width": 74}, {"as": "eUbgvJ1DY4dGdyVZ", "caption": "PuNPtyewvauRMLio", "height": 94, "imageUrl": "7wMCyNXHjoBCeCCT", "smallImageUrl": "TeYQ4yuLF1x5AJJy", "width": 0}], "localizations": {"HprrNlmqQCg3cLi5": {"description": "Q2t7WoLZ310I84VD", "title": "KGkv3I3lMTPI9bKO"}, "9hlS71TuEwxCOwCs": {"description": "SpG6cRZCoiwwxr6d", "title": "MznE4pyOPqrfXMGS"}, "8AhZtv1OCdr6A2aB": {"description": "Q0IZp4PLcbmjUi2f", "title": "wl3jblGhbDa9gQMP"}}, "name": "eNb63RHQBFCnZ3ld", "start": "1983-08-29T00:00:00Z", "tierItemId": "wgDR9gaaGH5J1cbo"}' \
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
    --body '{"userIds": ["czZnJPRIZ3k2wQuI", "K9aROZ5doasQK72r", "X8JUsDiKhlHYzgLJ"]}' \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'YeEirdARpsfOG16T' \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'JPiwuOIHgOrkaOse' \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'f2ssXCRAi9HaTIHO' \
    --body '{"autoClaim": true, "defaultLanguage": "UAnjufBhfvDWmv58", "defaultRequiredExp": 69, "draftStoreId": "VO3UsbdTskxG4zvY", "end": "1985-08-14T00:00:00Z", "excessStrategy": {"currency": "zZaP9b10CJFc8dAV", "method": "CURRENCY", "percentPerExp": 90}, "images": [{"as": "XZRNC9XtSgVAAmZK", "caption": "pI8Af1Cm7hTUf6kj", "height": 12, "imageUrl": "V5bqpI6YRnNyIAQ2", "smallImageUrl": "qYP1ndbjA4vqWYNz", "width": 34}, {"as": "xA94PGrK44JspiQt", "caption": "ro3XFFn69DinrZMi", "height": 79, "imageUrl": "tufvGR5OnkO3zEYn", "smallImageUrl": "ds54tLAE0cIz3DS1", "width": 56}, {"as": "8UFciBHoXAPK8ypS", "caption": "PCOSeNxWQJIsDV0q", "height": 48, "imageUrl": "oSVw2N3ICzImWZVS", "smallImageUrl": "SLpzK5QmB5M4WfA3", "width": 66}], "localizations": {"vb6BZnpKZCLwvaYK": {"description": "PMEdRrjyxMphkI2X", "title": "x6yrHCIdSgCJDwvc"}, "8AQ4VGoMDDfz2fnn": {"description": "GNa0NaRPxIaHgp2q", "title": "GCzLb3fLmZLyIHhS"}, "JeDVSONSiIO2I9e2": {"description": "35TwMMphsA2dhSc0", "title": "bN6ycD2BUfPsqiDp"}}, "name": "LaLj28c2cyf7YkA9", "start": "1977-07-03T00:00:00Z", "tierItemId": "ifXhrkE1SqRYUdZm"}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ShwBsAy7JSn11ake' \
    --body '{"end": "1977-05-03T00:00:00Z", "name": "X8GK5Aldv5vv1qPv", "start": "1985-09-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'uP2FTx2Bsqx9NJp4' \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'hKLA5nit7mlabVrr' \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'fdQYhu6UalErAih0' \
    --body '{"autoEnroll": false, "code": "T9RM7y0QuviY5OUC", "displayOrder": 98, "images": [{"as": "o1j5Lraa2v7kSuGr", "caption": "ftqSeMtljx4PuYhK", "height": 27, "imageUrl": "wVd0fX5oTCbv9vlg", "smallImageUrl": "ZN5IP0lFT5RBGSpJ", "width": 4}, {"as": "jhp6RvY8oNAD3JQS", "caption": "MC2CFjNDvV7Izm99", "height": 31, "imageUrl": "JrrQGIDfyv8BdtNm", "smallImageUrl": "Mclsz1j29C0XXowd", "width": 80}, {"as": "6YTu40P7jyiBsliC", "caption": "KxdYUIsSzjMmps4X", "height": 7, "imageUrl": "gXGDE0hNPTG7konJ", "smallImageUrl": "w4uMa5sp1AAT5UFT", "width": 18}], "localizations": {"xXKUOGHevkuPQBGJ": {"description": "HF9GGLmbBqviyQaa", "title": "FKF5dEw11EOnjibK"}, "er9kAYKzbVD1qfOD": {"description": "WfrQJCbeelRxJD9d", "title": "LGciwffcjZygTYFs"}, "wAZuxnKmkAfWDw5A": {"description": "xZMQYi9QzDPBOwUM", "title": "nO2CNTWslvprF1sL"}}, "passItemId": "ghOZUwB4m7NauYLC"}' \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'O23sOmYSJdowEi3g' \
    --namespace $AB_NAMESPACE \
    --seasonId 'lversXBdosSu12xz' \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'mjHZG91r0gBEJLRr' \
    --namespace $AB_NAMESPACE \
    --seasonId 'SbIQ8K35woCWMj6m' \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'V5oNnotT5xiU9uO0' \
    --namespace $AB_NAMESPACE \
    --seasonId 'A3yf3HYJFzYVq3iF' \
    --body '{"autoEnroll": false, "displayOrder": 16, "images": [{"as": "5Mknj89vm95hS7ge", "caption": "yr5On19S0W6Wq7wx", "height": 55, "imageUrl": "zQ4nssRlqssfYRAV", "smallImageUrl": "3EF4wKWuYs788moQ", "width": 60}, {"as": "syiDxcveMKrImg2g", "caption": "lS7ezXk2EPWhWbkP", "height": 10, "imageUrl": "7AOKQmUzEWoC9uKs", "smallImageUrl": "nQKpPMKsJ99PI1os", "width": 81}, {"as": "wrw9r2ShxCZ5m6fx", "caption": "E4Kpsne6MpWnkJuV", "height": 77, "imageUrl": "gEMDl3vAeJifVK0o", "smallImageUrl": "6sojV6jkeDT0lvlt", "width": 98}], "localizations": {"BKtdkvcjcTL8f2fO": {"description": "06ohy1hFqvJXrlPa", "title": "A8F25PDoQyJYhgiz"}, "MIMvCYE1Sd8K1CQj": {"description": "2E1LxOt08zQRwZJ1", "title": "fYud1nfhxmKFnfEy"}, "zENktpn2ZLDiKw0J": {"description": "86D8pNr7fnM0oNJ2", "title": "IaChBBVvNpe631sQ"}}, "passItemId": "fiu0sULamyXCWmF9"}' \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'sJqSQoYXmSilTmUQ' \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'X0ZDeAh3ZEhlLD4A' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'n7WiVy2yHaEpsQcY' \
    --q 'uFm4cV76XOeCrU7V' \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'obc78XXDZcitABH1' \
    --body '{"code": "mmIt5hhv52XNjUxr", "currency": {"currencyCode": "al6w5Epu23ba6OD2", "namespace": "6UHTEf7A1gF2gC8K"}, "image": {"as": "dgEmAQ96zHrYz9Ca", "caption": "WQH7ts1LwczFYnAz", "height": 79, "imageUrl": "SHolb5tuQmHQF3Us", "smallImageUrl": "AUIojFtBJ6sijctR", "width": 70}, "itemId": "P4NPYRO7lB8cG0KA", "quantity": 10, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'OUqx1rwFOKHWzxAK' \
    --namespace $AB_NAMESPACE \
    --seasonId 'UcOQEgnbJ0uCltBF' \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '00U7v0uu6dNsQ9Ht' \
    --namespace $AB_NAMESPACE \
    --seasonId 'VQrnKVL9xJmwnVLT' \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'Q7stoftwg5kGDi3a' \
    --namespace $AB_NAMESPACE \
    --seasonId 'I2q7iDllBgwVmKy6' \
    --body '{"currency": {"currencyCode": "eRlMTIEsOEk7swyo", "namespace": "d7NOLcBTz5E0by41"}, "image": {"as": "XlfKiuMSkHaFiAuq", "caption": "HZu2tnpTZYMK7vea", "height": 75, "imageUrl": "mYUpMuB66gIHMuWs", "smallImageUrl": "sXbAfr6YxySOTK6F", "width": 45}, "itemId": "jpCOuZ4OEhQcGO2z", "nullFields": ["oCtL54VvXeY3nr2V", "1x1H7cehmlJVuAbb", "ZVFzf54duSGOvOzs"], "quantity": 10, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId '0cnynPv0USKzxkiF' \
    --limit '96' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'U2UeSph9yQQZdbTW' \
    --body '{"index": 81, "quantity": 99, "tier": {"requiredExp": 93, "rewards": {"h20vH8qpT6mPaHZc": ["amWAsjFgJ7RoXr3z", "MSK7lX3J4acDBJU2", "dXI313IiUHoFEVwi"], "q7bwgZTiJgPxQARC": ["rdNquIywrLeBFd4X", "rGCVxH4diCZJaWkQ", "IiWP08HbyJ6lasZD"], "TrmeuKEMQ78hgBfg": ["UC4Yb8hYd3kHHa97", "Tzw0GCWYNFpe94ah", "0dkFHBpmNT4wO2ft"]}}}' \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'v3CtvmQB2YHctYNq' \
    --namespace $AB_NAMESPACE \
    --seasonId 'drKUZ6ecigd41gtK' \
    --body '{"requiredExp": 3, "rewards": {"UD6Af4VNWkmvplQc": ["lNUEQkXeeOpIBmqG", "MaNsnLSuQGiHNpgD", "USoOas8UvzIzhdud"], "xd6TlD9vLYoZQw0K": ["zD7J6BYfH5OJAtVF", "PpdHzcXilQRZtccV", "khxZ8StfAzWRm9n2"], "8r5gGpcO6Z5ULUK5": ["dNILdsAhQl53fgig", "XpwgTUaW3SiClFui", "bM03ebUmygLgSixI"]}}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'u8F29NDVDG8s6cvV' \
    --namespace $AB_NAMESPACE \
    --seasonId 'RLor9Zof9MglSZKK' \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id '6bcHIhwZEhGIIZXC' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pLlBQCzn23uoXWgl' \
    --body '{"newIndex": 31}' \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ob7MRXVTMJvUdscR' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Rwrlaq1PUNsw7bXm' \
    --limit '44' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'n7SikmLFj9KvoNBI' \
    --body '{"exp": 41, "source": "SWEAT", "tags": ["Gem60aqZ5lARHilR", "xaZOA8Mgs3ESRQ3E", "kGHzCN91cWrafdGN"]}' \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'naqmjxFxYMmq626j' \
    --body '{"passCode": "dr2PBWDlTu0sAzja", "passItemId": "nLKggjGxRlIvaLvi"}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'RVOmZV3c4cn40tRA' \
    --passCodes '["bXuPxpFRNG0fTxlJ", "0M4a9u1ujy69t5ZI", "Qo6KjamRMZIxPWnu"]' \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Bq87iHFUTOCIF4iw' \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '5Hqo7RmqK02yb8zd' \
    --body '{"passItemId": "nrV7L3TwrHkMwxUt", "tierItemCount": 65, "tierItemId": "pEDEPK2fwqTStnIB"}' \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '4NK5cpbgEIHNFTcF' \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'TmElzvLWzZQhSBas' \
    --body '{"count": 34, "source": "PAID_FOR", "tags": ["UqbaRvxmIY5UfwMn", "dvgWTtCrLD9jZR13", "lhHWJRaWZSTyoAoc"]}' \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '7WitMKqc2C03tOFs' \
    --from 'zUNc3R7sjqS6rKf7' \
    --limit '57' \
    --offset '87' \
    --seasonId 'plQU4xAHF6nWqVIW' \
    --source 'PAID_FOR' \
    --tags '["MyjKurfMJtgTU5M2", "dQeKzjqI1xIShPcZ", "2QkFmsCLoUoYtszI"]' \
    --to 'Rpnn2eHhBt9iySyR' \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'YjzV1n3fU5clQufL' \
    --seasonId 'wtLdaRcFFjBpRbp4' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'od3KB1ttRrfdT1Mp' \
    --userId 'QRiMhDTKGvVA6ve2' \
    > test.out 2>&1
eval_tap $? 39 'GetUserSeason' test.out

#- 40 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'J4NyLwbf7FqM885j' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetCurrentSeason' test.out

#- 41 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'kqwxSaUukrQD0JU3' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'lVrxo6GlsH3GqjtM' \
    --body '{"passCode": "Z3NBaupiNbKk9ecZ", "rewardCode": "oHDvFvGGU5qvGdU9", "tierIndex": 88}' \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'kRMGlrbDBiucmzvR' \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'DZCITcMgT19XPLLk' \
    --userId 'JJoH58r4WVtaRynD' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE