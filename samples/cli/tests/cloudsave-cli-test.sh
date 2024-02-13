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
echo "1..102"

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
    --limit '78' \
    --offset '24' \
    --query 'kFImRJQZ' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["9ovZuzmn", "7JKsFOGB", "PAZioSWE"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'Z8E3V5Kv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key '2x2uawM1' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'xk209H2g' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'fnZYSb1U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '14' \
    --query '6CzKo45O' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "xDop9BKa", "key": "p37wRumg", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1990-02-18T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'fV6abXvj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'xb37gQdU' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "itxayvrb", "file_location": "hM518YA8"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'WfnnrGCn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'e9yYjlWW' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1997-02-26T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'J4JdvsQv' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "LvzqGi9o"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'ABlKXI9G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'h9mD0qpt' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "iMEWvMyB", "value": {"5ZqBEF5D": {}, "zyMkVX77": {}, "G2zJlobJ": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key '2omFYknW' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1991-11-18T00:00:00Z"}, "updatedAt": "FUxEkB1T", "value": {"ulMLWReV": {}, "luz18Ydr": {}, "QS6g8Zaj": {}}}' \
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
    --body '{"appConfig": {"appName": "T7Rd3dLu"}, "customConfig": {"GRPCAddress": "BsR0WU1H"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "h7ts0Bev"}, "customConfig": {"GRPCAddress": "HCr5uJu0"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'X4ykrhrk' \
    --limit '42' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'MlJhRZYO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'sc2Y6Z1t' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '9WTDRFJ9' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'URdcfFNN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'bdTUsXYR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "i3vX09jz"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag '2MTCmuBa' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'Uc3Xtu2H' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["JQM6JwDe", "igVJbzmD", "E7AKjvRs"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["K1yzWsN3", "SAZH4oJU", "aLXhU70E"], "user_id": "uXviDEba"}, {"keys": ["CB2hG96Q", "h3EzYa1p", "sMXy2c55"], "user_id": "qPwZevWE"}, {"keys": ["LUe9iH5x", "8oukuqOn", "TezC3rvh"], "user_id": "CeVFQjLM"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ua01iFct' \
    --limit '82' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 34 'AdminListAdminUserRecordsV1' test.out

#- 35 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OzQYfY1I' \
    --body '{"keys": ["QIK1hNzn", "jsdVgEQ9", "65KyIDc8"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 36 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'fQpTQTZG' \
    --namespace $AB_NAMESPACE \
    --userId 'ycqtLHvf' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetAdminPlayerRecordV1' test.out

#- 37 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'Q6VOr6qk' \
    --namespace $AB_NAMESPACE \
    --userId '74qunX4m' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'AdminPutAdminPlayerRecordV1' test.out

#- 38 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'b7qPFUXF' \
    --namespace $AB_NAMESPACE \
    --userId 'XHOziFL9' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPostPlayerAdminRecordV1' test.out

#- 39 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'NCc2Xww5' \
    --namespace $AB_NAMESPACE \
    --userId '9B6ms8Sp' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAdminPlayerRecordV1' test.out

#- 40 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hH0rXIcP' \
    --limit '45' \
    --offset '38' \
    --query 'eCgOEIn9' \
    > test.out 2>&1
eval_tap $? 40 'AdminListPlayerBinaryRecordsV1' test.out

#- 41 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jyecptgd' \
    --body '{"file_type": "4DXXVlDK", "is_public": true, "key": "w3rlsMEI", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryRecordV1' test.out

#- 42 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'bvH6Nd7c' \
    --namespace $AB_NAMESPACE \
    --userId 'MCOLA0UE' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPlayerBinaryRecordV1' test.out

#- 43 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'slGbo6eP' \
    --namespace $AB_NAMESPACE \
    --userId 'qDbdxW8V' \
    --body '{"content_type": "h6GfmlMk", "file_location": "krvCViQG"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerBinaryRecordV1' test.out

#- 44 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'c2Em4ilE' \
    --namespace $AB_NAMESPACE \
    --userId 'UKtr3CWI' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeletePlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'pYiczVmv' \
    --namespace $AB_NAMESPACE \
    --userId 'VVTnEQvn' \
    --body '{"is_public": false, "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 46 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'L0mZLXoZ' \
    --namespace $AB_NAMESPACE \
    --userId 'gJ2vVHn8' \
    --body '{"file_type": "Lyb3n2Lx"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 47 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'BjdnyuEy' \
    --namespace $AB_NAMESPACE \
    --userId 'X8xPYP8I' \
    --responseBody 'true' \
    --body '{"updatedAt": "NhrY4pNt", "value": {"yMqPd5zY": {}, "lHu8j5x5": {}, "LluthCwL": {}}}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 48 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'LsB4P6dT' \
    --namespace $AB_NAMESPACE \
    --userId '0XeX7vRJ' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1974-03-25T00:00:00Z"}, "updatedAt": "Lhnh0efu", "value": {"DZWyzSH2": {}, "gjK3H8tB": {}, "obS4q2GA": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 49 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'k0d6zsAE' \
    --namespace $AB_NAMESPACE \
    --userId 'E6uHYxR1' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1975-12-22T00:00:00Z"}, "updatedAt": "NOVXCIvY", "value": {"ezqZhCJp": {}, "S4b3MF2R": {}, "pcNLLxvD": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 50 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'mabO6Gnn' \
    --limit '25' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 50 'AdminRetrievePlayerRecords' test.out

#- 51 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'f08pLiPv' \
    --body '{"data": [{"key": "pPxANpsz", "value": {"Vr9BBIwp": {}, "qxLThkvU": {}, "4EZymDfm": {}}}, {"key": "at7Vaa2k", "value": {"8va0yQXV": {}, "7kSkN3Rp": {}, "0RGb0GcU": {}}}, {"key": "2dKOAGcU", "value": {"ngey7Gh7": {}, "1mqCWbuh": {}, "cVJT9moq": {}}}]}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordsHandlerV1' test.out

#- 52 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zPsq49pc' \
    --body '{"keys": ["rOEYESa3", "PYestJww", "7E6hsLgT"]}' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerRecordsHandlerV1' test.out

#- 53 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'Q33LJK9g' \
    --namespace $AB_NAMESPACE \
    --userId 'C7KtFMFv' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerRecordHandlerV1' test.out

#- 54 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'kobnBm0k' \
    --namespace $AB_NAMESPACE \
    --userId 'k5HBHOeW' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordHandlerV1' test.out

#- 55 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'DIjsJSga' \
    --namespace $AB_NAMESPACE \
    --userId 'p06utS9g' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 55 'AdminPostPlayerRecordHandlerV1' test.out

#- 56 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key '6LcUkhSH' \
    --namespace $AB_NAMESPACE \
    --userId 'Kdbh8F3L' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeletePlayerRecordHandlerV1' test.out

#- 57 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '2ZCbj5w6' \
    --namespace $AB_NAMESPACE \
    --userId 'WZzKdgZi' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 58 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '32MlUH1u' \
    --namespace $AB_NAMESPACE \
    --userId '9lnmZuqu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 59 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '6L0BjxUU' \
    --namespace $AB_NAMESPACE \
    --userId 'jjxMh5Mi' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 59 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 60 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'mhd4DsBv' \
    --namespace $AB_NAMESPACE \
    --userId '6Pnelrzq' \
    > test.out 2>&1
eval_tap $? 60 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 61 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key '7SUNor1k' \
    --namespace $AB_NAMESPACE \
    --userId 'AU0hGiLi' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 62 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '100' \
    --query 'Y9MZ9J2S' \
    > test.out 2>&1
eval_tap $? 62 'ListGameBinaryRecordsV1' test.out

#- 63 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "ofkWNRYw", "key": "BuQKFuGQ"}' \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryRecordV1' test.out

#- 64 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["M89fqBAW", "QOQJSKlH", "yAapCwJz"]}' \
    > test.out 2>&1
eval_tap $? 64 'BulkGetGameBinaryRecordV1' test.out

#- 65 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'YR85aDem' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetGameBinaryRecordV1' test.out

#- 66 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'rlaLWOw1' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "Ta8HRZBx", "file_location": "BWNn8Phl"}' \
    > test.out 2>&1
eval_tap $? 66 'PutGameBinaryRecordV1' test.out

#- 67 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key '323PVLIc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameBinaryRecordV1' test.out

#- 68 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'k9LIryIO' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "qvEY28nt"}' \
    > test.out 2>&1
eval_tap $? 68 'PostGameBinaryPresignedURLV1' test.out

#- 69 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'WAiOSXV8' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "TZVOlVHM", "value": {"0ms7r5Qz": {}, "yO6tGWcQ": {}, "PE5k4Fc1": {}}}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameRecordConcurrentHandlerV1' test.out

#- 70 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["SRNXD1Ie", "bWhQDRjt", "th7mFqn5"]}' \
    > test.out 2>&1
eval_tap $? 70 'GetGameRecordsBulk' test.out

#- 71 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'cFtRIsOi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetGameRecordHandlerV1' test.out

#- 72 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'hwkh1qxy' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordHandlerV1' test.out

#- 73 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'BLqIEuxe' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 73 'PostGameRecordHandlerV1' test.out

#- 74 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '7YE2Sv3c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'DeleteGameRecordHandlerV1' test.out

#- 75 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'PublicListTagsHandlerV1' test.out

#- 76 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '7pJopCZH' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["wUw7PQEH", "1hSOr6kE", "tVTyXOp7"]}' \
    > test.out 2>&1
eval_tap $? 76 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '1Vq9PPZE' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ZVwh3TCB", "02I2wdA8", "knwDMoPU"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 78 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '53' \
    --query 'k9oRUAW7' \
    > test.out 2>&1
eval_tap $? 78 'ListMyBinaryRecordsV1' test.out

#- 79 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["FPKCyPwE", "uXUE6mA6", "AbI1DSpQ"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetMyBinaryRecordV1' test.out

#- 80 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 80 'RetrievePlayerRecords' test.out

#- 81 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["clVMg99C", "jWeOsM1s", "stJtIOvs"]}' \
    > test.out 2>&1
eval_tap $? 81 'GetPlayerRecordsBulkHandlerV1' test.out

#- 82 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'FrrQtbwv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 83 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'h5Uwax6o' \
    --body '{"file_type": "065m0ZV7", "is_public": true, "key": "x4y1FXPJ"}' \
    > test.out 2>&1
eval_tap $? 83 'PostPlayerBinaryRecordV1' test.out

#- 84 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MOfOE5BP' \
    --limit '10' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 84 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 85 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gz94aaYE' \
    --body '{"keys": ["XxZadZdn", "vLbJoAOG", "qNP0C8lL"]}' \
    > test.out 2>&1
eval_tap $? 85 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 86 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'MuhZk4QE' \
    --namespace $AB_NAMESPACE \
    --userId 'BQjGMFy5' \
    > test.out 2>&1
eval_tap $? 86 'GetPlayerBinaryRecordV1' test.out

#- 87 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'eaX9QhqO' \
    --namespace $AB_NAMESPACE \
    --userId 'Cbg0CVM8' \
    --body '{"content_type": "BChDQ87A", "file_location": "JWQKF0rc"}' \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerBinaryRecordV1' test.out

#- 88 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'eT06Z7aX' \
    --namespace $AB_NAMESPACE \
    --userId 'Dvo62Kcx' \
    > test.out 2>&1
eval_tap $? 88 'DeletePlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 's0k7ddyZ' \
    --namespace $AB_NAMESPACE \
    --userId '2h8enjMM' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecorMetadataV1' test.out

#- 90 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'O1FIo8Ic' \
    --namespace $AB_NAMESPACE \
    --userId 'jKrkY1tU' \
    --body '{"file_type": "Pd8TY6Kf"}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerBinaryPresignedURLV1' test.out

#- 91 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'G9ryuZcd' \
    --namespace $AB_NAMESPACE \
    --userId 'NkBUbHhq' \
    > test.out 2>&1
eval_tap $? 91 'GetPlayerPublicBinaryRecordsV1' test.out

#- 92 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'fZtK6EtK' \
    --namespace $AB_NAMESPACE \
    --userId 'yCz9z2V6' \
    --responseBody 'false' \
    --body '{"updatedAt": "NjzcqC0i", "value": {"u6QXY38T": {}, "ABTIFFUz": {}, "OvWqW3sz": {}}}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 93 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'EJmm73jX' \
    --namespace $AB_NAMESPACE \
    --userId 'BzymIkFf' \
    --responseBody 'true' \
    --body '{"updatedAt": "w8qHsZ7z", "value": {"UajdPkmD": {}, "82lbwomS": {}, "WfWCDCV4": {}}}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 94 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HgTqKsgS' \
    --limit '92' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 94 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 95 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ql3lz4s7' \
    --body '{"keys": ["h3Q68K3D", "zMn4Z6hb", "IuGedfw2"]}' \
    > test.out 2>&1
eval_tap $? 95 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 96 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'rYwCWOi9' \
    --namespace $AB_NAMESPACE \
    --userId 'cUiYn9ak' \
    > test.out 2>&1
eval_tap $? 96 'GetPlayerRecordHandlerV1' test.out

#- 97 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '4nJzS1IP' \
    --namespace $AB_NAMESPACE \
    --userId '1PHTwFFe' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 97 'PutPlayerRecordHandlerV1' test.out

#- 98 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'fLW1Qhq5' \
    --namespace $AB_NAMESPACE \
    --userId 'VUmBWxyE' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 98 'PostPlayerRecordHandlerV1' test.out

#- 99 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key '8Kjso79p' \
    --namespace $AB_NAMESPACE \
    --userId 'RFbz6rWw' \
    > test.out 2>&1
eval_tap $? 99 'DeletePlayerRecordHandlerV1' test.out

#- 100 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '5BLOymTX' \
    --namespace $AB_NAMESPACE \
    --userId 'bUUEtbPL' \
    > test.out 2>&1
eval_tap $? 100 'GetPlayerPublicRecordHandlerV1' test.out

#- 101 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'jXTHRWmU' \
    --namespace $AB_NAMESPACE \
    --userId '9qYOLJb6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PutPlayerPublicRecordHandlerV1' test.out

#- 102 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '9d4kxvcv' \
    --namespace $AB_NAMESPACE \
    --userId 'NFFPHnKc' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 102 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE