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
echo "1..104"

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
    --limit '84' \
    --offset '95' \
    --query 'emnx9rF3' \
    --tags '["HyXkpjUI", "L71XPEW3", "rIBwosD1"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["RIKJycfp", "L7haIjDP", "4HqD89Uh"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'DmfBbeIJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'IRLw029d' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'wY6GlFZX' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'oFDb10F1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '99' \
    --query 'LvSlfoPh' \
    --tags '["YEHFGOAx", "rbGGIeCP", "4PTdM7FB"]' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "Rpz1fANL", "key": "07xPYRUO", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1976-02-09T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'fs1nXPfx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key '40Ppsx63' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "k2oudaaB", "file_location": "z26W0QfX"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'iI79TmmW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '9dDKPYNV' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["UqAXS2wj", "XsjDIiDs", "gbqALm6z"], "ttl_config": {"action": "DELETE", "expires_at": "1985-06-03T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'XFAHQPPG' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "0L8D8rk0"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key '6TZE6Ilm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '4iibXzOX' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["Bz791bpA", "D2WWwXO1", "7BxtpOlP"], "updatedAt": "7nFHK2Tr", "value": {"xjuUzT4W": {}, "HCclWIQD": {}, "duHiZZ8S": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'NeMwDqzl' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["PE4f2zxb", "rNMfRn9U", "SI3SQKe9"], "ttl_config": {"action": "DELETE", "expires_at": "1987-11-01T00:00:00Z"}, "updatedAt": "WJ2o8NsN", "value": {"wE5oakPX": {}, "RscG25gs": {}, "y863zZHn": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 18 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetPluginConfig' test.out

#- 19 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "eAueyP6Z"}, "customConfig": {"GRPCAddress": "MNQ5lanX"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreatePluginConfig' test.out

#- 20 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeletePluginConfig' test.out

#- 21 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "jnJOOG7n"}, "customConfig": {"GRPCAddress": "aJzbfBZJ"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'QjPQo3EH' \
    --tags '["NCQohxtC", "qjSV6OCL", "N8tLPDk6"]' \
    --limit '1' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'IxhiwxgC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'cnYBCZqs' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'SLch8HoD' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'VZqgKw9P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'dnaUndIb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "LXlThn2A"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag '7pRam4h8' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'eZA4VHVx' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Nt6McF35", "b9OiUogS", "K8PnGzLW"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["MqQLzdZd", "wRppQDzO", "hxjXg4nj"], "user_id": "A5FKoD0I"}, {"keys": ["d7uPCcJO", "bqBpIME9", "vOcJmrgO"], "user_id": "XbS930Y8"}, {"keys": ["WDa8SygU", "dF7FErwE", "a0m5J0h6"], "user_id": "qoyY62eK"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'O2z7KnpH' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "AOozYq36", "value": {"FS5XP9wD": {}, "iKL5l7JG": {}, "Y8kgpI9y": {}}}, {"user_id": "GPumCZqu", "value": {"buq1aXOB": {}, "XOKoMoHy": {}, "ijP8MuAe": {}}}, {"user_id": "q1JSoQhF", "value": {"Q0oGxmtx": {}, "669nI1t9": {}, "Gu9C8Gfi": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'LHL4yoFQ' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["i8S83Fzz", "lFY8q5bA", "fkBpWCGK"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jlkWFYNj' \
    --limit '24' \
    --offset '48' \
    --query '0o3cUDlM' \
    --tags '["DQFmsYqc", "C01hrOj3", "Ja1p90bu"]' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MLbBFObY' \
    --body '{"keys": ["dKehMyAm", "b5yqRJJQ", "gi1qkk5p"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'mShrO65j' \
    --namespace $AB_NAMESPACE \
    --userId 's0Pxx8SJ' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'U8fnh3Xe' \
    --namespace $AB_NAMESPACE \
    --userId 'fUtod1kL' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'kUOXbI8P' \
    --namespace $AB_NAMESPACE \
    --userId 'tY9mBiIQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'B42F1va9' \
    --namespace $AB_NAMESPACE \
    --userId 'NxwffDJl' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Up2ib1iX' \
    --limit '6' \
    --offset '62' \
    --query 'kAK32EwK' \
    --tags '["2TKazcmI", "ztG8par0", "ulnXsLYa"]' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Xak4Dcua' \
    --body '{"file_type": "tbasZIaO", "is_public": false, "key": "ZyXlFGCR", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'jhQH4JSY' \
    --namespace $AB_NAMESPACE \
    --userId 'cgv0EkjC' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key '9U3DbPwp' \
    --namespace $AB_NAMESPACE \
    --userId 'GeSD6cCH' \
    --body '{"content_type": "jg8v7bVg", "file_location": "bZT2hTDR"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'haByFh27' \
    --namespace $AB_NAMESPACE \
    --userId 'BZhQKItx' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'HZ8X3GIb' \
    --namespace $AB_NAMESPACE \
    --userId 'KHdKH7Mk' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["alwv7DN2", "m4UrIggG", "SBIDQt8c"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'kHseeeNx' \
    --namespace $AB_NAMESPACE \
    --userId 'rlcKP9bk' \
    --body '{"file_type": "bRASkEQC"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'DqrvIXjP' \
    --namespace $AB_NAMESPACE \
    --userId 'HQ4FHQSf' \
    --responseBody 'false' \
    --body '{"tags": ["SA7KwzFt", "HaMHmCQQ", "0e1dhhn1"], "updatedAt": "BCzcqN6f", "value": {"0WdsBc8o": {}, "7L4MH9R0": {}, "eNpRijTF": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'PfHXXxa2' \
    --namespace $AB_NAMESPACE \
    --userId '7xlBrtvO' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["JwrHcVSZ", "UWNet0k8", "nE9LI96e"], "ttl_config": {"action": "DELETE", "expires_at": "1989-09-14T00:00:00Z"}, "updatedAt": "z854rNW0", "value": {"qb07UjGX": {}, "LXa2AWbD": {}, "hoSvpQzY": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'qfwwbxrF' \
    --namespace $AB_NAMESPACE \
    --userId 'ZV2wEWyw' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["EO0sxbtj", "WSnfM9Ag", "ovtFBJUa"], "ttl_config": {"action": "DELETE", "expires_at": "1997-02-28T00:00:00Z"}, "updatedAt": "YCONOLzM", "value": {"LrQfk6Fz": {}, "LWHoNJqK": {}, "2pxpHEcB": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'kpRGOfuq' \
    --limit '95' \
    --offset '46' \
    --query 'r7tYY1Em' \
    --tags '["MbI6eRMG", "tk5jY9sY", "Gsp9i5AA"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wUBBwv2B' \
    --body '{"data": [{"key": "gTaIc6Ei", "value": {"nmIyHsif": {}, "PRmNH7GL": {}, "kGTaZcPH": {}}}, {"key": "MOvZUNkH", "value": {"h1RDxGib": {}, "4BnXeGT8": {}, "Rzn4Sj3a": {}}}, {"key": "blxppwCG", "value": {"2WHk40iF": {}, "7RDQfXBo": {}, "UoTLMNoA": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Y3OffHUa' \
    --body '{"keys": ["wPlM7K3J", "PF45kRg5", "BG8jUaCB"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'BqPCEwpH' \
    --namespace $AB_NAMESPACE \
    --userId '6BMb5G1a' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'WVv8lSns' \
    --namespace $AB_NAMESPACE \
    --userId '7LRHQGe7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'e4sxGsys' \
    --namespace $AB_NAMESPACE \
    --userId 'ADDV5142' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'FiNRvuys' \
    --namespace $AB_NAMESPACE \
    --userId 'omzgQpin' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'xHIZczYy' \
    --namespace $AB_NAMESPACE \
    --userId 'gS6qXId4' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'jLuEFeMH' \
    --namespace $AB_NAMESPACE \
    --userId 'wGji4gm6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'M8bknR1w' \
    --namespace $AB_NAMESPACE \
    --userId '3zSsUNqU' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'GlfOqY2X' \
    --namespace $AB_NAMESPACE \
    --userId 'gmt7UKOv' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'PMrcaVZH' \
    --namespace $AB_NAMESPACE \
    --userId 'u8vHrx04' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '84' \
    --query 'TmqrssbP' \
    --tags '["Uf5fr7rL", "5iJ4xcXh", "mmdjSelg"]' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "lQocaMxu", "key": "eDWjxv8A"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ZyjxTFTY", "8x7mKlOM", "1k8v24K7"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'z0HLOW8y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'G7Tppnck' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "arnd72zl", "file_location": "HJDAxavg"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'kJA4friW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'fGASj7y4' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "716jXcOa"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'fDSsZKTU' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "fcWtDXIu", "value": {"tK3ZPzR6": {}, "gZAKIqi0": {}, "fYnHx6EN": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["z7r1CcYs", "dsKwvnk9", "QBP33xUZ"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '1cIb4Pwb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'MswDLYbh' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'k0CR1B22' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'oAPQNgzW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'ui4olQaA' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["VXAdUica", "3vRKn2vY", "UAg943zN"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'CiicLHtY' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["I1ATwUcD", "ubhkmtMj", "obTcwfTb"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '77' \
    --query '3XIEOlrr' \
    --tags '["0VDrPA4t", "MmlRVfSF", "FI6DY6z3"]' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["2k2s1nH5", "xTJGIoiB", "Exypgy1t"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '9' \
    --tags '["faftot7c", "TUG4X9QK", "xB86ea18"]' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["gcmBOmUG", "eek3mUrk", "LYXpoWyF"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'rbJbWNv7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qwKFLLLF' \
    --body '{"file_type": "wvrjWrn8", "is_public": false, "key": "n1KtXjPU"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AdYmvfYg' \
    --limit '6' \
    --offset '55' \
    --tags '["HUfFtpOI", "lI4GQQf6", "hdAmdHSk"]' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Y7uZP9FW' \
    --body '{"keys": ["bcgbjoHg", "GWzABpQp", "4sm3qmJf"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'RHTiRv1q' \
    --namespace $AB_NAMESPACE \
    --userId 'Nd91yS4p' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'oVWr0KeG' \
    --namespace $AB_NAMESPACE \
    --userId 'RWLSiqqD' \
    --body '{"content_type": "mpJPDklR", "file_location": "4znk1nYi"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'hlEljxBx' \
    --namespace $AB_NAMESPACE \
    --userId 'kkb9MCgX' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'YBsqh2PY' \
    --namespace $AB_NAMESPACE \
    --userId '8JMTsZ0u' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'bpTEwvmZ' \
    --namespace $AB_NAMESPACE \
    --userId 'MkdoIKmQ' \
    --body '{"file_type": "FrLrwyDw"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'EtjV3L5n' \
    --namespace $AB_NAMESPACE \
    --userId 'Iqs8Co9N' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'LSNphqdx' \
    --namespace $AB_NAMESPACE \
    --userId 'NxjWjfzz' \
    --responseBody 'true' \
    --body '{"updatedAt": "btvu4r7A", "value": {"GUGmulR9": {}, "A5OcOUk5": {}, "pZm4eC2E": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'TAX2Qcmr' \
    --namespace $AB_NAMESPACE \
    --userId 'pqyofyOa' \
    --responseBody 'false' \
    --body '{"updatedAt": "Ybsm5iqq", "value": {"2Ap2L8Zb": {}, "LGLcWtpn": {}, "OIQbPxZA": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zIWXmQZ1' \
    --limit '25' \
    --offset '21' \
    --tags '["kSilF1qA", "Hx2KiWZb", "sk8x11tm"]' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gWYJMORw' \
    --body '{"keys": ["q6M9vjRL", "Z01MjUHE", "E0Ivxvtb"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '2TKQTjwE' \
    --namespace $AB_NAMESPACE \
    --userId 'eCy1iUXD' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'Np4WNEkT' \
    --namespace $AB_NAMESPACE \
    --userId 'aZR7XNLo' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'yzxUi2pb' \
    --namespace $AB_NAMESPACE \
    --userId 'pwYvsyqK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'P46u1UBR' \
    --namespace $AB_NAMESPACE \
    --userId 'IA5MFvu9' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'Qs2YLH1T' \
    --namespace $AB_NAMESPACE \
    --userId '6hDv4H2e' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key '8IB0vyN0' \
    --namespace $AB_NAMESPACE \
    --userId 'FxXu8zJC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'ADbexidu' \
    --namespace $AB_NAMESPACE \
    --userId 'ejXfJXyc' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE