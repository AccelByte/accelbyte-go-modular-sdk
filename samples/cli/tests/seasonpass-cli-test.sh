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
    --limit '15' \
    --offset '42' \
    --status '["PUBLISHED", "DRAFT", "PUBLISHED"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": false, "defaultLanguage": "SEtnMCUp", "defaultRequiredExp": 29, "draftStoreId": "ustrRVIe", "end": "1997-07-08T00:00:00Z", "excessStrategy": {"currency": "5WWxSiLa", "method": "CURRENCY", "percentPerExp": 80}, "images": [{"as": "JmEIfkss", "caption": "Ek5iJmei", "height": 100, "imageUrl": "Nk1TMrnD", "smallImageUrl": "3JFdVllc", "width": 74}, {"as": "YFMGeM8J", "caption": "M7rhPK24", "height": 8, "imageUrl": "9YEfsEqc", "smallImageUrl": "uEzw6oHr", "width": 60}, {"as": "SdNH4rF8", "caption": "2h9MrBIr", "height": 100, "imageUrl": "0kmwRmYv", "smallImageUrl": "NPpxW14j", "width": 14}], "localizations": {"txceqh5N": {"description": "FwvlMVVP", "title": "OS0pahSM"}, "tbzuWzwm": {"description": "0mYRM5B9", "title": "ZFZVsENB"}, "jEEwPel9": {"description": "yJ1VwkF5", "title": "UdN8uwBp"}}, "name": "Twxktsui", "start": "1981-07-03T00:00:00Z", "tierItemId": "5FDRbfKu"}' \
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
    --body '{"userIds": ["776kfdNv", "yoLluGIi", "i1DJJx3u"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
samples/cli/sample-apps Seasonpass getItemReferences \
    --namespace $AB_NAMESPACE \
    --itemId 'O3p5wVre' \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'TjHrrbel' \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'fwIgtCnJ' \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'z7YyFEci' \
    --body '{"autoClaim": false, "defaultLanguage": "gm8Kon1L", "defaultRequiredExp": 41, "draftStoreId": "3Gbiux8F", "end": "1983-10-16T00:00:00Z", "excessStrategy": {"currency": "FgsADWqX", "method": "CURRENCY", "percentPerExp": 12}, "images": [{"as": "7NP6wWQl", "caption": "3Nv2zk0c", "height": 71, "imageUrl": "yeuIANyT", "smallImageUrl": "a3w2YCb5", "width": 94}, {"as": "hXJ1rDJS", "caption": "ecTLcTwq", "height": 40, "imageUrl": "G5bTXgzC", "smallImageUrl": "stIrYpoG", "width": 79}, {"as": "JPhPjEgr", "caption": "1M5z9K1C", "height": 17, "imageUrl": "DZw84vPS", "smallImageUrl": "pvpdFaiw", "width": 35}], "localizations": {"HqVV5jwX": {"description": "ofb6NkcJ", "title": "YHUnAenH"}, "2rHYx6Yp": {"description": "H9MKSRCx", "title": "JdMjU0op"}, "nqtZdfxP": {"description": "VaKBQmeh", "title": "nn1t54k6"}}, "name": "lt9pUj5Z", "start": "1996-09-14T00:00:00Z", "tierItemId": "DAHx78sj"}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'kaf7Q4yv' \
    --body '{"end": "1976-02-02T00:00:00Z", "name": "TxbF14KO", "start": "1997-12-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'NyAssXmu' \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId 'wvE09b3S' \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'euHjaMmz' \
    --body '{"autoEnroll": true, "code": "BZn7VS9i", "displayOrder": 80, "images": [{"as": "02dFVZyy", "caption": "tGS630Hc", "height": 96, "imageUrl": "pAUMtZON", "smallImageUrl": "nzvZLeux", "width": 8}, {"as": "rgztZDoK", "caption": "4AvHsbq7", "height": 77, "imageUrl": "GcNA9nsy", "smallImageUrl": "NHGEl9co", "width": 91}, {"as": "vjTA6H9e", "caption": "hAVh0Uhm", "height": 53, "imageUrl": "PD0FAqXM", "smallImageUrl": "AVA5Mswy", "width": 12}], "localizations": {"EOPVGZ8x": {"description": "FxMMekAW", "title": "AfpuNg0G"}, "bR2uy05Q": {"description": "9rvtQmql", "title": "sokHn2lk"}, "9mUnvDuj": {"description": "7ErQ2Xiz", "title": "mCUNdwZj"}}, "passItemId": "GK2nlj6l"}' \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code '75QlyMcu' \
    --namespace $AB_NAMESPACE \
    --seasonId 'v8ehKgWt' \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'oK25FtWX' \
    --namespace $AB_NAMESPACE \
    --seasonId 'YNv7Voe9' \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'USNRy3Hg' \
    --namespace $AB_NAMESPACE \
    --seasonId 'X1NawElx' \
    --body '{"autoEnroll": true, "displayOrder": 36, "images": [{"as": "7g7hVVSc", "caption": "B9NoJUwY", "height": 19, "imageUrl": "cgG41Eeo", "smallImageUrl": "b2rjIsx5", "width": 59}, {"as": "XqSRfPQk", "caption": "huzdQHMg", "height": 45, "imageUrl": "UDsLKW9a", "smallImageUrl": "eexN3EN8", "width": 9}, {"as": "M4Mlf3lg", "caption": "yeaJcSRi", "height": 39, "imageUrl": "r1kD615B", "smallImageUrl": "DkB7qGJj", "width": 43}], "localizations": {"VUKzr4f1": {"description": "3WjSTMTI", "title": "R6G8HHc2"}, "dM21HXNE": {"description": "5LpsZcca", "title": "GwLfAB4c"}, "nfXUXOJm": {"description": "yLbQOq7u", "title": "UtMYrvFS"}}, "passItemId": "GtTBWA6N"}' \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'F4fj5ovs' \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'EwUq97ZF' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId '93hhwrUH' \
    --q 'E8FASz9G' \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'g041hkwR' \
    --body '{"code": "8StcEYUn", "currency": {"currencyCode": "KYRpgakQ", "namespace": "SSc8L9lP"}, "image": {"as": "9KexxH5W", "caption": "FmFbxmDa", "height": 51, "imageUrl": "yz9yEtm7", "smallImageUrl": "w2wcaAXD", "width": 57}, "itemId": "QDaaSzIt", "quantity": 0, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code 'oKrwzzg8' \
    --namespace $AB_NAMESPACE \
    --seasonId 'ClElgMgT' \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code 'QVbjZLlp' \
    --namespace $AB_NAMESPACE \
    --seasonId 'xSBTmPGS' \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'hvY9sTGP' \
    --namespace $AB_NAMESPACE \
    --seasonId 'TQxPys3W' \
    --body '{"currency": {"currencyCode": "p5ngtAT0", "namespace": "hA1ILGb4"}, "image": {"as": "WfpEd0zO", "caption": "9Tsj1q2O", "height": 28, "imageUrl": "jSfbsaiE", "smallImageUrl": "6GOPzkyb", "width": 32}, "itemId": "z8m2YF6c", "nullFields": ["CgZbxCv8", "lU0ejSVc", "hftGOmSU"], "quantity": 81, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 't8w0lzVQ' \
    --limit '15' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId 'xZPGYwkD' \
    --body '{"index": 87, "quantity": 17, "tier": {"requiredExp": 67, "rewards": {"hCRW0Wvp": ["GR40znwD", "y94kWp9j", "vfILNQHB"], "FRTpE5Es": ["R4uwpcqX", "cIn8z0Je", "DicQOFKf"], "LOfr5bTG": ["v6TGstGt", "E4bgWmwT", "e0iCvX2y"]}}}' \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'tEYhaYi3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'wYyD4uw3' \
    --body '{"requiredExp": 57, "rewards": {"0PyNi57e": ["SFGcD66v", "qUo9u4hx", "OCpFrhWg"], "ksNHFz4T": ["mdGkTr0a", "0cJtgGZ9", "6mD7Vcfy"], "fHI9ws6E": ["RH2lYGw0", "ZX2PCLz3", "sEI55kya"]}}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'wca9VX3i' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rN6PLjYy' \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'KrswKkVQ' \
    --namespace $AB_NAMESPACE \
    --seasonId 'zTeXHRS0' \
    --body '{"newIndex": 97}' \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '8cXlmdWk' \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'CV3uCcPz' \
    --limit '5' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'IcZfaBO4' \
    --body '{"exp": 86, "source": "PAID_FOR", "tags": ["95ZdNP55", "vSjoMEc0", "IOjEopQW"]}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'Jb7qav6g' \
    --body '{"passCode": "HmgeIRU2", "passItemId": "LgzkUp4S"}' \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'lxtr0Z1t' \
    --passCodes '["4tHs17Wg", "ZeJ9QRAL", "UVU9Mamh"]' \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'kMfquEDm' \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'HvTPuALY' \
    --body '{"passItemId": "5LK1XWEy", "tierItemCount": 3, "tierItemId": "wJpvl5m6"}' \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'WYy0lPip' \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId '8UrcArxo' \
    --body '{"count": 69, "source": "PAID_FOR", "tags": ["0XKzR2nD", "b1GBn058", "qGWrGoCM"]}' \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId 'tMDJAUEV' \
    --from 'TeMR7rUM' \
    --limit '22' \
    --offset '98' \
    --seasonId '7A38wpUL' \
    --source 'SWEAT' \
    --tags '["stVScisq", "e1sEIBgE", "uaagEJMx"]' \
    --to 'IdMQy15s' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId 'NnvcMr3s' \
    --seasonId 'Ca8s8M2B' \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'cACf5vdL' \
    --userId 'dwES71Iq' \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'nxQjucOI' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'EZO9sFg5' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'CLiOcpu8' \
    --body '{"passCode": "QUSFbaHF", "rewardCode": "35BfxPLM", "tierIndex": 38}' \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'ZUyfVs44' \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'l2W1Wu2m' \
    --userId 'eoqECg9l' \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE