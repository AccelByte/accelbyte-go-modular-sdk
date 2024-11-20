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
    --limit '18' \
    --offset '90' \
    --status '["PUBLISHED", "PUBLISHED", "DRAFT"]' \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
samples/cli/sample-apps Seasonpass createSeason \
    --namespace $AB_NAMESPACE \
    --body '{"autoClaim": true, "defaultLanguage": "64o8XKdw", "defaultRequiredExp": 9, "draftStoreId": "aFGADf7y", "end": "1980-12-23T00:00:00Z", "excessStrategy": {"currency": "DI5yfL7n", "method": "CURRENCY", "percentPerExp": 44}, "images": [{"as": "TUOLHcaw", "caption": "xo17wTGL", "height": 85, "imageUrl": "OurySlpi", "smallImageUrl": "850ztv9N", "width": 48}, {"as": "CJvwcmdz", "caption": "fjT9bwuX", "height": 83, "imageUrl": "bd21KUCG", "smallImageUrl": "1ySdMRhB", "width": 60}, {"as": "XsJDQcSe", "caption": "XuAEpJp5", "height": 72, "imageUrl": "V02eiiaq", "smallImageUrl": "wBLujlpH", "width": 89}], "localizations": {"qFXqnJ4W": {"description": "JryPvbco", "title": "FOJrQRQE"}, "rykfHxqm": {"description": "N3GkTxzF", "title": "fpRwAJtG"}, "28SPgf56": {"description": "KE88dChQ", "title": "ihdYbg7Y"}}, "name": "c5mi6SHP", "start": "1976-04-28T00:00:00Z", "tierItemId": "4xX9ufeL"}' \
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
    --body '{"userIds": ["ATh66j2O", "Sqo3o07t", "GAxI876G"]}' \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
samples/cli/sample-apps Seasonpass getSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '9Gf8MjLs' \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
samples/cli/sample-apps Seasonpass deleteSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'ktdvrOln' \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
samples/cli/sample-apps Seasonpass updateSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'xQKJxJSm' \
    --body '{"autoClaim": false, "defaultLanguage": "lq95Cyhc", "defaultRequiredExp": 90, "draftStoreId": "fLZB64FY", "end": "1986-02-02T00:00:00Z", "excessStrategy": {"currency": "rclvZ4wH", "method": "CURRENCY", "percentPerExp": 31}, "images": [{"as": "jmxjpFwE", "caption": "qATZPraW", "height": 46, "imageUrl": "F0Sx2ONi", "smallImageUrl": "iuF7mlQh", "width": 21}, {"as": "1HEVLRkJ", "caption": "JzynbjTv", "height": 61, "imageUrl": "nOYuRlvR", "smallImageUrl": "ORGdFPfR", "width": 6}, {"as": "iNWZqDL0", "caption": "0g82Ooeh", "height": 97, "imageUrl": "YKoSt6kd", "smallImageUrl": "W5ER6Mpn", "width": 0}], "localizations": {"gQ95GV6U": {"description": "BNQTuZsv", "title": "hZwTAyY7"}, "k9rR17Ic": {"description": "4ZC0ctMU", "title": "OLNySVmp"}, "V2U09jEx": {"description": "ZcY0TZQw", "title": "6j2KOKZT"}}, "name": "CXXSMXAr", "start": "1990-01-08T00:00:00Z", "tierItemId": "bVTMO6OM"}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
samples/cli/sample-apps Seasonpass cloneSeason \
    --namespace $AB_NAMESPACE \
    --seasonId '4oJ8oapd' \
    --body '{"end": "1999-03-10T00:00:00Z", "name": "SET1LeHQ", "start": "1989-03-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
samples/cli/sample-apps Seasonpass getFullSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'd0GtBr0A' \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
samples/cli/sample-apps Seasonpass queryPasses \
    --namespace $AB_NAMESPACE \
    --seasonId '4XM360kn' \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
samples/cli/sample-apps Seasonpass createPass \
    --namespace $AB_NAMESPACE \
    --seasonId 'WtIqwjJi' \
    --body '{"autoEnroll": false, "code": "tN4ECkJa", "displayOrder": 74, "images": [{"as": "p0v6pcCU", "caption": "cZW8mu6Y", "height": 77, "imageUrl": "LClP6AHv", "smallImageUrl": "zfGSBQU4", "width": 10}, {"as": "L0YZSvIw", "caption": "LQMPkNqE", "height": 75, "imageUrl": "yFmhKSob", "smallImageUrl": "wH7H6hu6", "width": 37}, {"as": "jHJWSNcc", "caption": "Y6Et4I6I", "height": 47, "imageUrl": "ALCm0v9r", "smallImageUrl": "LenhXryh", "width": 42}], "localizations": {"1qSwizJk": {"description": "wtzWDm6E", "title": "nDNCIHNN"}, "gIt1Zf8J": {"description": "sLcwuEmq", "title": "aNaivpQP"}, "iADAnhw9": {"description": "y02uZNPd", "title": "6csjDRDz"}}, "passItemId": "c4Ub9y7h"}' \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
samples/cli/sample-apps Seasonpass getPass \
    --code 'aFfPXdG3' \
    --namespace $AB_NAMESPACE \
    --seasonId 'u9WOBOq8' \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
samples/cli/sample-apps Seasonpass deletePass \
    --code 'hQV1H4ff' \
    --namespace $AB_NAMESPACE \
    --seasonId 'UwOHkQhN' \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
samples/cli/sample-apps Seasonpass updatePass \
    --code 'MKA1U8Yr' \
    --namespace $AB_NAMESPACE \
    --seasonId 'E03SgWgz' \
    --body '{"autoEnroll": true, "displayOrder": 1, "images": [{"as": "yStrtwSo", "caption": "qLAGsfE6", "height": 7, "imageUrl": "PSwqTDLD", "smallImageUrl": "CYX3ExpS", "width": 62}, {"as": "dwYgA4nC", "caption": "09IJDbZE", "height": 82, "imageUrl": "8H57makU", "smallImageUrl": "yAu5KRql", "width": 25}, {"as": "SudMSiJm", "caption": "lV2SNJfI", "height": 48, "imageUrl": "MzFlX6bU", "smallImageUrl": "ieIVIExL", "width": 95}], "localizations": {"BuhYRie0": {"description": "SgyI2hnE", "title": "6nGoNhx8"}, "idEA1j5P": {"description": "tEB2vk2W", "title": "hPux1uBC"}, "5jy8w68w": {"description": "3yhDiNKZ", "title": "VdFrvI8r"}}, "passItemId": "0Voyz5g7"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
samples/cli/sample-apps Seasonpass publishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'cNMI2Y8K' \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
samples/cli/sample-apps Seasonpass retireSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'QKJxZLSM' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
samples/cli/sample-apps Seasonpass queryRewards \
    --namespace $AB_NAMESPACE \
    --seasonId 'jsPw6Kee' \
    --q '960VOfb8' \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
samples/cli/sample-apps Seasonpass createReward \
    --namespace $AB_NAMESPACE \
    --seasonId 'Yk6ydqSu' \
    --body '{"code": "m7cSYKuU", "currency": {"currencyCode": "N3IGBZWc", "namespace": "FjePCf5p"}, "image": {"as": "xSte2Dif", "caption": "45wf0HVM", "height": 20, "imageUrl": "1Eds2cYi", "smallImageUrl": "YKkHXEmk", "width": 74}, "itemId": "7Z0IFWU0", "quantity": 40, "type": "ITEM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
samples/cli/sample-apps Seasonpass getReward \
    --code '6NpN9sfi' \
    --namespace $AB_NAMESPACE \
    --seasonId 'rLfO5ICy' \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
samples/cli/sample-apps Seasonpass deleteReward \
    --code '84Pravfl' \
    --namespace $AB_NAMESPACE \
    --seasonId 'I4ccjrl3' \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
samples/cli/sample-apps Seasonpass updateReward \
    --code 'zgXBrm5U' \
    --namespace $AB_NAMESPACE \
    --seasonId '6tpCPw9v' \
    --body '{"currency": {"currencyCode": "2CRN1bdb", "namespace": "JImsv0qr"}, "image": {"as": "5WfZN5lM", "caption": "6xVS2aRD", "height": 2, "imageUrl": "OR7beqW2", "smallImageUrl": "5GRMXK3A", "width": 82}, "itemId": "hP68ZqCT", "nullFields": ["ku1C61vy", "dJUVkkEA", "U9cowwpf"], "quantity": 58, "type": "CURRENCY"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
samples/cli/sample-apps Seasonpass queryTiers \
    --namespace $AB_NAMESPACE \
    --seasonId 'Kal836g7' \
    --limit '72' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
samples/cli/sample-apps Seasonpass createTier \
    --namespace $AB_NAMESPACE \
    --seasonId '4Rzfeqmz' \
    --body '{"index": 10, "quantity": 8, "tier": {"requiredExp": 25, "rewards": {"W2OO5Mwz": ["upS7EkWw", "lJgRBodC", "JtFHFjbM"], "QNInF4dI": ["5YH5iLst", "dq0bXL2r", "QIsUIRqL"], "iPVQ5IXy": ["7uvh2VNA", "dBRTF3qw", "uUhqGkxq"]}}}' \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
samples/cli/sample-apps Seasonpass updateTier \
    --id 'O8WL2VTD' \
    --namespace $AB_NAMESPACE \
    --seasonId 'DqNPDn0V' \
    --body '{"requiredExp": 13, "rewards": {"S7211kjS": ["Y7dzIUHP", "BmFcJikj", "8Nzffj53"], "VKTcioBr": ["QbywPmhn", "dMWDrTN4", "VjubQIwJ"], "2jKuajko": ["6QBn6cv8", "rJHKi2Nb", "nnVN6drq"]}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
samples/cli/sample-apps Seasonpass deleteTier \
    --id 'r6veWvu2' \
    --namespace $AB_NAMESPACE \
    --seasonId 'm6aAbWbt' \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
samples/cli/sample-apps Seasonpass reorderTier \
    --id 'KfVU6fIP' \
    --namespace $AB_NAMESPACE \
    --seasonId '7NqQ5PHc' \
    --body '{"newIndex": 76}' \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
samples/cli/sample-apps Seasonpass unpublishSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'KHiOwIa9' \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
samples/cli/sample-apps Seasonpass getUserParticipatedSeasons \
    --namespace $AB_NAMESPACE \
    --userId 'ejX78hyk' \
    --limit '60' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
samples/cli/sample-apps Seasonpass grantUserExp \
    --namespace $AB_NAMESPACE \
    --userId 'XUu66JRI' \
    --body '{"exp": 89, "source": "PAID_FOR", "tags": ["ZW1ROfhM", "DvO0mRsD", "uWXrrFuu"]}' \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
samples/cli/sample-apps Seasonpass grantUserPass \
    --namespace $AB_NAMESPACE \
    --userId 'CP5PP3eT' \
    --body '{"passCode": "qlQp1U9P", "passItemId": "YmsdR6K9"}' \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
samples/cli/sample-apps Seasonpass existsAnyPassByPassCodes \
    --namespace $AB_NAMESPACE \
    --userId 'cLEjp130' \
    --passCodes '["V81ZtA4K", "tSVDDjoU", "6mq4qqvA"]' \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
samples/cli/sample-apps Seasonpass getCurrentUserSeasonProgression \
    --namespace $AB_NAMESPACE \
    --userId 'I7jj8jAi' \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
samples/cli/sample-apps Seasonpass checkSeasonPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'x2oLSX83' \
    --body '{"passItemId": "DQOQ6xuG", "tierItemCount": 14, "tierItemId": "Hx5KFr93"}' \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
samples/cli/sample-apps Seasonpass resetUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'M4ygzOiL' \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
samples/cli/sample-apps Seasonpass grantUserTier \
    --namespace $AB_NAMESPACE \
    --userId 'oJaeUnp1' \
    --body '{"count": 24, "source": "SWEAT", "tags": ["WsHlCgQo", "INStRdGe", "IbxfRx55"]}' \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
samples/cli/sample-apps Seasonpass queryUserExpGrantHistory \
    --namespace $AB_NAMESPACE \
    --userId '7HMUbfAu' \
    --from '9Ur6DFSn' \
    --limit '69' \
    --offset '18' \
    --seasonId 'JPwiy6kk' \
    --source 'SWEAT' \
    --tags '["LEw5hHAY", "ZffbgTGZ", "O7ENhlRY"]' \
    --to 'WY5OKrd9' \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
samples/cli/sample-apps Seasonpass queryUserExpGrantHistoryTag \
    --namespace $AB_NAMESPACE \
    --userId '4wSe5ytf' \
    --seasonId 'v31qoMoO' \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
samples/cli/sample-apps Seasonpass getUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'abLMwl5Z' \
    --userId 'eq7ZeHCL' \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
samples/cli/sample-apps Seasonpass publicGetCurrentSeason \
    --namespace $AB_NAMESPACE \
    --language 'PXDke7lj' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
samples/cli/sample-apps Seasonpass publicGetCurrentUserSeason \
    --namespace $AB_NAMESPACE \
    --userId 'Ve6DHXZP' \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
samples/cli/sample-apps Seasonpass publicClaimUserReward \
    --namespace $AB_NAMESPACE \
    --userId 'khtlrZGR' \
    --body '{"passCode": "hyi2VTFS", "rewardCode": "fdsN3Ff6", "tierIndex": 96}' \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
samples/cli/sample-apps Seasonpass publicBulkClaimUserRewards \
    --namespace $AB_NAMESPACE \
    --userId 'UWhH8ki3' \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
samples/cli/sample-apps Seasonpass publicGetUserSeason \
    --namespace $AB_NAMESPACE \
    --seasonId 'XowolLnY' \
    --userId 'BRRi7Zsg' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


rm -f "tmp.dat"

exit $EXIT_CODE