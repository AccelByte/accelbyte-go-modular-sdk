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
echo "1..105"

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

#- 2 AdminListAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminListAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '62' \
    --query 'aBjD4GnD' \
    --tags '["YAG41y8y", "gzeUyy8h", "AHLurjqB"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["tqjoxDy5", "AJNfxHDm", "rUFF9RkH"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'b6ecb5cu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key '6trFzW0a' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'oUsktQrJ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'bLA9GObq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'Fah4Ggzm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '64' \
    --query 'nV1qLEXW' \
    --tags '["1Okgqvw2", "XK7ZHObI", "iwROoTWv"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "s4lSYbf7", "key": "13SmG1pz", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1975-12-24T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'JrGkQyht' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'PTgwwQBw' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "i1K9shLC", "file_location": "v2cGg24E"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'eOmyXfSS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '1B1L8bmQ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["Zi5n3C66", "rCukOeKK", "JyvldjEn"], "ttl_config": {"action": "DELETE", "expires_at": "1984-05-16T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'j2ft7rmS' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "PkbEsMPf"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'O8j1g2Tz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'n9ZXz0co' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["YDuz5I7d", "g7nGBuuh", "sQxKYbmR"], "ttl_config": {"action": "DELETE", "expires_at": "1987-01-29T00:00:00Z"}, "updatedAt": "1975-12-31T00:00:00Z", "value": {"hzp8EIFr": {}, "aW0BsRhW": {}, "uCtuBgJD": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key '10bkRLBJ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["CM0FKMOs", "xmviOXzs", "I65quZIP"], "ttl_config": {"action": "DELETE", "expires_at": "1998-07-04T00:00:00Z"}, "updatedAt": "1989-07-26T00:00:00Z", "value": {"3PWhQwKn": {}, "NuU6p9WC": {}, "vZQdicCs": {}}}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 19 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetPluginConfig' test.out

#- 20 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "wQmuFvJv"}, "customConfig": {"GRPCAddress": "qrzcgV8Y"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePluginConfig' test.out

#- 21 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'DeletePluginConfig' test.out

#- 22 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "NnA9rjuT"}, "customConfig": {"GRPCAddress": "peKw49R0"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'vI1Oasj5' \
    --tags '["5hg9FshZ", "kH9Xu7eu", "lwRRON3F"]' \
    --limit '7' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'zVnhcmuz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'BcfLMkQQ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'b08qzOsQ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'U6RzRKVW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key '3pTbt3HU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "yxYqbWiW"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'J8xuIGQX' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key '2k98Bnxq' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["M2TdRRsj", "2FCHXwpA", "k4pol20a"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["EcDCO8Rh", "wUxnBjx4", "rulqjpIC"], "user_id": "3fL62OBN"}, {"keys": ["311KSHre", "VgbaUVqg", "LEbUuHnW"], "user_id": "6mwvkRcD"}, {"keys": ["zLuq31eH", "Rluj5dZo", "LaGkCmlP"], "user_id": "Cs9n09eG"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key '6pH7gXI6' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "c5kuqtSS", "value": {"Ajj1Lhhe": {}, "OCX17hZo": {}, "A6mV50Jm": {}}}, {"user_id": "bhB1Vfc4", "value": {"jPuLpk86": {}, "poptH5b1": {}, "oz3uViZk": {}}}, {"user_id": "cOygRwVs", "value": {"4DuNXzus": {}, "5HF5vvfG": {}, "F5ZMCaGZ": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'Ikaetn7a' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xC5fQ6DC", "JlVe3B0L", "cjwrUxy0"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TweCsRDe' \
    --limit '47' \
    --offset '48' \
    --query 'oHE4R5TR' \
    --tags '["gLhpnPth", "1vr4Do6S", "BO6fBLnU"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'I2GQMvBI' \
    --body '{"keys": ["9taVezMb", "ijeEO3ar", "nAKicYtd"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'qN4Dx8RW' \
    --namespace $AB_NAMESPACE \
    --userId '3wb6bxWw' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'gxEO5T7D' \
    --namespace $AB_NAMESPACE \
    --userId 'k8tZip4u' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'tnKuRAiP' \
    --namespace $AB_NAMESPACE \
    --userId 'w703Bcbz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key '0Nx2k0yf' \
    --namespace $AB_NAMESPACE \
    --userId 'KFG2pA4u' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'juhqCMSw' \
    --limit '91' \
    --offset '63' \
    --query 'JSW74nHA' \
    --tags '["YgYA3A1Q", "FLTUVsDy", "cTYiWeY7"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'x88sokzu' \
    --body '{"file_type": "bI3Ba337", "is_public": true, "key": "hjdOoano", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'soIUesyy' \
    --namespace $AB_NAMESPACE \
    --userId 'g9XrmpDp' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'PWkhFPdH' \
    --namespace $AB_NAMESPACE \
    --userId 'McQxdNuB' \
    --body '{"content_type": "UANBuh4E", "file_location": "BF8oS0bH"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'Y0Ubk2oh' \
    --namespace $AB_NAMESPACE \
    --userId 'L1xSRt0N' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'I5070KXA' \
    --namespace $AB_NAMESPACE \
    --userId '8ine87zP' \
    --body '{"is_public": false, "set_by": "SERVER", "tags": ["iaRlFgJp", "K3LRoPhu", "t48qSqme"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '26SCLsxN' \
    --namespace $AB_NAMESPACE \
    --userId 'iyG6pwYR' \
    --body '{"file_type": "iYydjMN7"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'APUn7H66' \
    --namespace $AB_NAMESPACE \
    --userId 'DBXIyMjO' \
    --responseBody 'true' \
    --body '{"tags": ["bqcU1pRW", "CSf4orst", "oUpXkPRc"], "updatedAt": "1993-04-30T00:00:00Z", "value": {"0tSlJGpg": {}, "wyuLdbab": {}, "DMV92tI3": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'EqP6twra' \
    --namespace $AB_NAMESPACE \
    --userId 'q4i7Pkxw' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["blUgC6Ww", "xV8BmkdH", "9gWWrZkg"], "ttl_config": {"action": "DELETE", "expires_at": "1979-08-21T00:00:00Z"}, "updatedAt": "1976-05-13T00:00:00Z", "value": {"jGxQiDqG": {}, "guR25EBw": {}, "NL4vgeyW": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '5l1o0We4' \
    --namespace $AB_NAMESPACE \
    --userId 'MkzuqZV9' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["0SgwRpyU", "oSGsFRqG", "6tMEG9nz"], "ttl_config": {"action": "DELETE", "expires_at": "1975-10-06T00:00:00Z"}, "updatedAt": "1985-01-07T00:00:00Z", "value": {"rVkzzKIi": {}, "Qo9GezJs": {}, "2hqenuZ8": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'nncDUBYl' \
    --limit '3' \
    --offset '18' \
    --query 'PQWfiHIN' \
    --tags '["X0erFa1L", "MuLtpJUe", "o27CxFr3"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PvxuDyky' \
    --body '{"data": [{"key": "rn2lMVfb", "value": {"uQPoTNR5": {}, "mge7Ngdv": {}, "ASQubmUs": {}}}, {"key": "qfR6uGD7", "value": {"oFWhjCOf": {}, "gU4TOEU6": {}, "xmsNl5SY": {}}}, {"key": "PV2GaWmE", "value": {"UEPfpp6z": {}, "CE0awhHl": {}, "qu6sqj91": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tx8HkB8Q' \
    --body '{"keys": ["RJaeikYV", "RLpAV7Ln", "duWHE7CT"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'E2PlEU13' \
    --namespace $AB_NAMESPACE \
    --userId 'Ys8D1YL0' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'PaGi4OvG' \
    --namespace $AB_NAMESPACE \
    --userId '2zxMvB5d' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'M5jYglvn' \
    --namespace $AB_NAMESPACE \
    --userId 'N0IwjI5E' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'eKgg9hUR' \
    --namespace $AB_NAMESPACE \
    --userId '5Ab5JBSl' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'LUCgUqsr' \
    --namespace $AB_NAMESPACE \
    --userId 'FhNI1ffz' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'L43ifNbp' \
    --namespace $AB_NAMESPACE \
    --userId 'Lt5BpUSc' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'CJLpeQFf' \
    --namespace $AB_NAMESPACE \
    --userId 'jvcBREOt' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'TCa0Xogq' \
    --namespace $AB_NAMESPACE \
    --userId 'W3gfyMue' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'W8LkMmVG' \
    --namespace $AB_NAMESPACE \
    --userId 'TCkMookf' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '82' \
    --query 'iX5pUmWF' \
    --tags '["yvYhiMjx", "WttSA2dZ", "NTPRMXkK"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "ImPk3o67", "key": "u1qeU51R"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["RlZ8G4Z4", "i0IYaNDf", "w5BzTg5G"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'bHZUGwKH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'sXhlvkiW' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "aSGkjzuH", "file_location": "vLq2GQV7"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'YJZ31Yfj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'IBMuwvaG' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "ZKTw5upv"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'WK1yjr9A' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1986-12-17T00:00:00Z", "value": {"c5dp1f1a": {}, "KJGVGPAh": {}, "YGLo57QF": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["y23I1cdc", "5RHtkJPU", "iplkRyHL"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '9TSINqZ3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'XEijF4vY' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'j1pvdY80' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'Q03qN4PI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'GKVEqNZ0' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nwmwtl7L", "Rd2pqQuU", "C7aB8goM"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'cFeKVnsw' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["YLOzn25m", "Va8vWg74", "6eXX7JUk"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '75' \
    --query 'o39kQ1Tt' \
    --tags '["VgkPdCPx", "iQvhFLsb", "6iwhM3dm"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["tMZhuTO9", "vkxDYbYV", "KJJJ5WRq"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '50' \
    --tags '["Uo2GHdGB", "KHnNzmSF", "cMNuAy3w"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["TX4ynn4A", "QX3HTfbs", "HmJV9OYg"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'F84rocnb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '4QhKPfFR' \
    --body '{"file_type": "LEyXEZBP", "is_public": true, "key": "xpLC8HzK"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'lgRxcdAp' \
    --limit '17' \
    --offset '99' \
    --tags '["m9Bb7wyi", "8LYC6j5b", "7x4rEiyh"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 's9uDgW0L' \
    --body '{"keys": ["Acr7sLj6", "N1RUZtmi", "5mhjnanK"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'fIhz1ngP' \
    --namespace $AB_NAMESPACE \
    --userId 'RzTiLNcX' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'jYhE3UR8' \
    --namespace $AB_NAMESPACE \
    --userId 'CXggftu6' \
    --body '{"content_type": "wU5URc9O", "file_location": "M7ehTTbq"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key '3hWrk6Ca' \
    --namespace $AB_NAMESPACE \
    --userId 'xyJoeTHg' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'D6F79qir' \
    --namespace $AB_NAMESPACE \
    --userId 'tYn6YIsF' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'UfP2ihpr' \
    --namespace $AB_NAMESPACE \
    --userId 'MW1RfYBC' \
    --body '{"file_type": "M3O0wvws"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'U6pMX3MP' \
    --namespace $AB_NAMESPACE \
    --userId 'xCqIW4E9' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'dFSPmIhZ' \
    --namespace $AB_NAMESPACE \
    --userId 'hk48QkCB' \
    --responseBody 'true' \
    --body '{"updatedAt": "1991-07-20T00:00:00Z", "value": {"QU7QLpVi": {}, "SFObmQUJ": {}, "ln1CvTEE": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 't3JtJ6dG' \
    --namespace $AB_NAMESPACE \
    --userId 'XfXqYXmg' \
    --responseBody 'true' \
    --body '{"updatedAt": "1989-11-23T00:00:00Z", "value": {"3ugHSMvq": {}, "g9RNPbmV": {}, "6DK1Kbu9": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'O6kcAdxn' \
    --limit '30' \
    --offset '12' \
    --tags '["L7Mwqv8Z", "baAfoowD", "pQOuUuxl"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hXJZoCWl' \
    --body '{"keys": ["VdqFJO3y", "KukjgjVS", "LFR4CH5a"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'W6fJ5y0b' \
    --namespace $AB_NAMESPACE \
    --userId '1dTO4NQG' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'qGFfLsId' \
    --namespace $AB_NAMESPACE \
    --userId 'BcQdbk45' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'oIBKSXTn' \
    --namespace $AB_NAMESPACE \
    --userId 'QBFritn7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'fm7SIjjs' \
    --namespace $AB_NAMESPACE \
    --userId 'J7mFyrQC' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'faw90z38' \
    --namespace $AB_NAMESPACE \
    --userId 'Le6n94kE' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'rWuND9AW' \
    --namespace $AB_NAMESPACE \
    --userId 'Kxj94T3W' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'pdZ9I0Ch' \
    --namespace $AB_NAMESPACE \
    --userId 'JCjwctY7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE