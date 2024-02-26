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
    --limit '3' \
    --offset '94' \
    --status '["PUBLISHED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "zdOgZq4N", "defaultRequiredExp": 48, "draftStoreId": "rKAMuXwN", "end": "1981-01-25T00:00:00Z", "excessStrategy": {"currency": "OcWNYMsz", "method": "CURRENCY", "percentPerExp": 49}, "images": [{"as": "lQ8NLlxr", "caption": "goe9PE7Q", "height": 83, "imageUrl": "oK1bi48S", "smallImageUrl": "Nja5ax8l", "width": 47}, {"as": "6PAZbrsq", "caption": "Tz3RnkaE", "height": 32, "imageUrl": "TnDX3MFR", "smallImageUrl": "JKLRiVjD", "width": 48}, {"as": "WwydacF1", "caption": "4nDBMP2L", "height": 18, "imageUrl": "lpp0wjYw", "smallImageUrl": "Z6g5242A", "width": 87}], "localizations": {"XX96PeaX": {"description": "jNl7F6y0", "title": "VqWpDwho"}, "jIKR27xt": {"description": "JgV3YXxO", "title": "o2hDQgaY"}, "jWmKIXeI": {"description": "mLCGyTSG", "title": "wLCNr3C2"}}, "name": "j2g8XsrT", "start": "1988-09-13T00:00:00Z", "tierItemId": "MGe6k7LU"}' \
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
    --body '{"userIds": ["rxKqJsct", "GpwQuGCe", "ALsdUY1H"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'hZQjBkSP' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'eSPRFLJU' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'lfdbx8u8' \
    --body '{"autoClaim": true, "defaultLanguage": "zo9qaPNt", "defaultRequiredExp": 95, "draftStoreId": "rpHdyaRB", "end": "1976-04-05T00:00:00Z", "excessStrategy": {"currency": "dwu5X8xQ", "method": "CURRENCY", "percentPerExp": 41}, "images": [{"as": "IyXxeCmR", "caption": "VcENhM6Q", "height": 6, "imageUrl": "gsvwsJjc", "smallImageUrl": "IM7Kc0ut", "width": 59}, {"as": "4xSFtfWI", "caption": "NQrC15OG", "height": 16, "imageUrl": "TPIdGFyg", "smallImageUrl": "7dr2w13G", "width": 39}, {"as": "EAugPSxu", "caption": "qd2YRBCQ", "height": 35, "imageUrl": "VFhyvMsx", "smallImageUrl": "RhkcbSdJ", "width": 8}], "localizations": {"nBr4VlpF": {"description": "nUgEnnd3", "title": "2lzeH8Ww"}, "OeBoVrfd": {"description": "GMBxDaIM", "title": "TULasInD"}, "wjEUL22Q": {"description": "tnUyZpyP", "title": "3aY2y135"}}, "name": "iJEINuNU", "start": "1971-09-15T00:00:00Z", "tierItemId": "sF3T5bqp"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'pJXblPqM' \
    --body '{"end": "1979-01-23T00:00:00Z", "name": "8sKzK3oc", "start": "1982-11-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '2QU2Mwly' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'HB9feR3l' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'hhMolwtb' \
    --body '{"autoEnroll": false, "code": "NAn0FL8V", "displayOrder": 21, "images": [{"as": "mS5MdNaR", "caption": "GeyVTgQA", "height": 97, "imageUrl": "VSsbbjvd", "smallImageUrl": "32bKcIiq", "width": 79}, {"as": "XfLspyn8", "caption": "Ox8GoFhr", "height": 8, "imageUrl": "VGRu7a1M", "smallImageUrl": "GfHjAwnv", "width": 68}, {"as": "qcRuadjI", "caption": "DUJ8MKKm", "height": 72, "imageUrl": "F2UuQZbm", "smallImageUrl": "00TdBqDo", "width": 79}], "localizations": {"49m7Dxbz": {"description": "YWUn38ep", "title": "FLIfEDhy"}, "uDy5tmNQ": {"description": "DJbHQo7H", "title": "uyxmXZUV"}, "p3KWipo8": {"description": "0n5t9bf4", "title": "7NhrJSLq"}}, "passItemId": "jm2SN82l"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '8NR8EB78' \
    --namespace $AB_NAMESPACE \
    --seasonId 'mlaFAjos' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code '6uFVeUTF' \
    --namespace $AB_NAMESPACE \
    --seasonId 'z0m5ycOk' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'h0efL9FN' \
    --namespace $AB_NAMESPACE \
    --seasonId 'jurQkMjZ' \
    --body '{"autoEnroll": false, "displayOrder": 53, "images": [{"as": "sqWwDdbz", "caption": "xX1xUpoc", "height": 75, "imageUrl": "jJAAa28G", "smallImageUrl": "C21CXIIM", "width": 88}, {"as": "DPdT8YlF", "caption": "H3Ik8Gdh", "height": 36, "imageUrl": "vywe0SPl", "smallImageUrl": "A2R5vNI1", "width": 52}, {"as": "bOExsDWW", "caption": "ptyKKXgJ", "height": 20, "imageUrl": "a0JI0D8P", "smallImageUrl": "Jp9Eo0DD", "width": 99}], "localizations": {"SY3SIePd": {"description": "51zfISdy", "title": "qw118QqY"}, "Ze9ATBoz": {"description": "fU70D82q", "title": "bvJp63XR"}, "77r5EIFC": {"description": "1LuMYFes", "title": "mAW7BDnO"}}, "passItemId": "5U7WXBm5"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '95IfEpJa' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'PtrFy2Pb' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'BjbDOAJA' \
    --q '3BJD7wOK' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'HyNmxUAK' \
    --body '{"code": "2JErX53C", "currency": {"currencyCode": "sO12whyx", "namespace": "fuKK9PJI"}, "image": {"as": "SNZYKamP", "caption": "eSBzPR3b", "height": 48, "imageUrl": "CSiqKysh", "smallImageUrl": "wCExYeh7", "width": 91}, "itemId": "AstYEzeX", "quantity": 50, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '3VrVSgS8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'A7t9NlTu' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'cQXO5e0P' \
    --namespace $AB_NAMESPACE \
    --seasonId 'f7MfMv37' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'Cp2waUPk' \
    --namespace $AB_NAMESPACE \
    --seasonId 'tDyWQQ26' \
    --body '{"currency": {"currencyCode": "HhnW79av", "namespace": "SjX0OTaP"}, "image": {"as": "QJn2i8HL", "caption": "jn8agRJP", "height": 75, "imageUrl": "1W8jFKYF", "smallImageUrl": "Rom4i86r", "width": 100}, "itemId": "ygaWAliC", "nullFields": ["93xtRb0M", "OqIKO564", "5RmSYVqp"], "quantity": 52, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'gcujYXSY' \
    --limit '7' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'sLzzzKE1' \
    --body '{"index": 47, "quantity": 36, "tier": {"requiredExp": 78, "rewards": {"fxvuMohh": ["Ad6MSYKa", "5ASiJ2Y4", "eFiQZDT7"], "FfJTF67v": ["G3mPytAk", "XFFeRaaT", "paPrCL0D"], "Sb0fyGWd": ["KxFpjUAy", "43cjVRnN", "pzCnfh28"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'DNTVniWh' \
    --namespace $AB_NAMESPACE \
    --seasonId 'pF1yzEkF' \
    --body '{"requiredExp": 76, "rewards": {"uVjsa7eE": ["mna00EFI", "CNbMvfMk", "SW9kH4gg"], "gILhfDgJ": ["7BsG8enz", "JjWwOKYA", "6pWiOEBW"], "8V7bV1f9": ["rH8YIH8a", "2PIfR22d", "6sQZ5qpn"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'QOi0sqTT' \
    --namespace $AB_NAMESPACE \
    --seasonId 'Ok61MBa7' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'WhK2rY77' \
    --namespace $AB_NAMESPACE \
    --seasonId 'EwcRnSnq' \
    --body '{"newIndex": 26}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ew3O74td' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'Mpt7hmTM' \
    --limit '76' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'AXpNL2rt' \
    --body '{"exp": 64, "source": "SWEAT", "tags": ["L2J5M8s6", "2zvthmNR", "a5V8g2lT"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'D9MEEn3l' \
    --body '{"passCode": "C27CSyfv", "passItemId": "6Soci1lc"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'ES7vlFj7' \
    --passCodes '["StYSiND3", "Xp3xSi6q", "qBP73ydk"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'YxMpBe2p' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'I4eBTCJU' \
    --body '{"passItemId": "I02eqLGS", "tierItemCount": 14, "tierItemId": "yt9NDpji"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId '16awGgzj' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'vDx1Ttnt' \
    --body '{"count": 48, "source": "PAID_FOR", "tags": ["OTRENVWF", "q8MXiEjy", "6a9s654F"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'DsuroasO' \
    --from 'jmQ08t3g' \
    --limit '71' \
    --offset '76' \
    --seasonId 'PnbeEmWe' \
    --source 'SWEAT' \
    --tags '["ziUaS9sy", "Qsoob5fg", "wVp65LvW"]' \
    --to 'DP7EZTNF' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'Hc5A0L8j' \
    --seasonId 'xKn7pYH2' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'Tuoa5iG8' \
    --userId 'R8niy2ao' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'ha64zz6T' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'mUlIhOEQ' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'X2ZmhNAP' \
    --body '{"passCode": "xNVJCvxq", "rewardCode": "WEt8tMaU", "tierIndex": 76}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'pKBcF3FV' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'MfxoSpiZ' \
    --userId 'IxZtsuck' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE