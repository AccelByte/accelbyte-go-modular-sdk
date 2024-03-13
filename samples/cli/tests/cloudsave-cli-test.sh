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
    --limit '51' \
    --offset '19' \
    --query 'SZeWLiQN' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["TK6i4Jd7", "rP1Xy1Pj", "2ENxDodh"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'emmb8sdB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'SrQHnXE9' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'hJ1bNTcx' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key '5WqMjdo6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '74' \
    --query 'oJHSYIii' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "nSFjw3TR", "key": "tH7POiQ1", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1978-04-11T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'K5bQHORW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'yKKiscsg' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "Cijb4GhG", "file_location": "8a3oLIUI"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'DBUPMQnk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'SRhUjuNQ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["jkktitJQ", "rOmuY9CN", "GjgdG4fX"], "ttl_config": {"action": "DELETE", "expires_at": "1991-08-07T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'V7pKHz2D' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "poKaTntI"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'f9lmjhQI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'z942NRMM' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["sbaIawpX", "wSAAvDZo", "4XNwv0N9"], "updatedAt": "HgWgPtoq", "value": {"8uU6We3S": {}, "lKF9fo85": {}, "5Nlyvci5": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'VB52LRJP' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["fiSBs0hw", "c8Vp0lcA", "7hDulWHR"], "ttl_config": {"action": "DELETE", "expires_at": "1993-07-19T00:00:00Z"}, "updatedAt": "dUFKa1Qr", "value": {"3LLgrA9E": {}, "fRSEX6ns": {}, "dfJoKW9I": {}}}' \
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
    --body '{"appConfig": {"appName": "OQppUSWk"}, "customConfig": {"GRPCAddress": "6aik06Zo"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "9Uyg2TYe"}, "customConfig": {"GRPCAddress": "BWFaTarJ"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'kMSaeFe4' \
    --limit '20' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'JW9iIqIr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'Gz43SCqF' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'MQgEmG6N' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '4VUyK7Lw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'gcIe0C7X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "EjHn5Mp4"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'XwAjprNd' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'bPbDuqqW' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nT9ybLKL", "nyV34UDz", "AY2Bv2Md"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["FjQIj4xs", "LDObEozK", "IBn7H50J"], "user_id": "jAG4E6LW"}, {"keys": ["nZP1sXG7", "sXW2dtua", "hktFh4o3"], "user_id": "iCQTT6wy"}, {"keys": ["2kp4crMK", "aY7EuG1K", "54VkwgGw"], "user_id": "FoipGmL6"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'maT21IiM' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "2uK4iUi7", "value": {"kHB7BLFg": {}, "lmx7Co8m": {}, "6WGJeFuo": {}}}, {"user_id": "W04Uqfjc", "value": {"74bN7B8e": {}, "7kyH1s2A": {}, "bcG3wPxF": {}}}, {"user_id": "6agyMUZZ", "value": {"hNggbspU": {}, "B0S8vQXL": {}, "T4dNsph6": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'T9wEZF63' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6O5Dq8LN", "uVuQPxsw", "NrgB6Joj"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eBABXTd2' \
    --limit '94' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OuqHSQUT' \
    --body '{"keys": ["Mh5ouiw7", "vkAjmfS7", "UaK5FvlY"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'JhfNkALR' \
    --namespace $AB_NAMESPACE \
    --userId 'Ym4LtAzv' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'tytoN8rE' \
    --namespace $AB_NAMESPACE \
    --userId 'tP1tC8iC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'hor9zpYE' \
    --namespace $AB_NAMESPACE \
    --userId 'd0BMEyMl' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'AxJV26hZ' \
    --namespace $AB_NAMESPACE \
    --userId 'yPKRmvuD' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KLiULrZq' \
    --limit '85' \
    --offset '7' \
    --query 'y9CwdRBz' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'I4gBhh7h' \
    --body '{"file_type": "ns9yJFKr", "is_public": true, "key": "Lg476h33", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'JjkS5D9f' \
    --namespace $AB_NAMESPACE \
    --userId 'xFLIpD9v' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'RPMt6Sej' \
    --namespace $AB_NAMESPACE \
    --userId 'S5gm7Etf' \
    --body '{"content_type": "C5A8IhAu", "file_location": "r6wIgsAA"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '8DzMnx2c' \
    --namespace $AB_NAMESPACE \
    --userId 'xSsHEV5Z' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'tGiqaNfh' \
    --namespace $AB_NAMESPACE \
    --userId '7z6BhsmF' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["kHyiHTLi", "wyS4eGvZ", "yvhPGD2d"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'RrLDpHSU' \
    --namespace $AB_NAMESPACE \
    --userId 'mVALCqDa' \
    --body '{"file_type": "1g7tRjUU"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '34GkCBrZ' \
    --namespace $AB_NAMESPACE \
    --userId 'KWC20AQV' \
    --responseBody 'false' \
    --body '{"tags": ["FKWjC5Oi", "9bG3O04c", "JtqXktjw"], "updatedAt": "1m8bdl3s", "value": {"JCtrirWU": {}, "8q5xr3qU": {}, "OIG1SxbM": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'tGC2Fnf4' \
    --namespace $AB_NAMESPACE \
    --userId 'qtkfijD2' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["RcXV6xxF", "jvN9IjdC", "JgnHdVtb"], "ttl_config": {"action": "DELETE", "expires_at": "1981-02-18T00:00:00Z"}, "updatedAt": "c5gt0kob", "value": {"nJb7EyCy": {}, "ypHagKY8": {}, "ebrsWfl6": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'fovwdSrF' \
    --namespace $AB_NAMESPACE \
    --userId 'F99a4aGv' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["3JfXmHD0", "1cdCbpM8", "7trD6Hmi"], "ttl_config": {"action": "DELETE", "expires_at": "1994-02-09T00:00:00Z"}, "updatedAt": "3jYX6ZLk", "value": {"r3bAdgus": {}, "QSFPwHuh": {}, "EENHVDi8": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'mAjXkhFB' \
    --limit '70' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YQs6eycn' \
    --body '{"data": [{"key": "kuirji87", "value": {"lWcjQKtg": {}, "P75rYMin": {}, "p47Iy0Ef": {}}}, {"key": "sFtvwzpI", "value": {"u7q7iFY5": {}, "gFAFK4B2": {}, "Diix59dD": {}}}, {"key": "88SnfGx0", "value": {"hsnLRqoM": {}, "nChPYQqR": {}, "iX4OCtST": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aRDAC0V7' \
    --body '{"keys": ["ikapiMiA", "JnAJsBmd", "dJJg0m0z"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'mGk3R2gH' \
    --namespace $AB_NAMESPACE \
    --userId 'ZNCdciMF' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'o5liEnUD' \
    --namespace $AB_NAMESPACE \
    --userId 'zhg9reaI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'KVDj3Afe' \
    --namespace $AB_NAMESPACE \
    --userId '42vTuxcg' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'IB3GIzGw' \
    --namespace $AB_NAMESPACE \
    --userId 'rncwt8fh' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'rJPU09h6' \
    --namespace $AB_NAMESPACE \
    --userId '6bcDoEIh' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '9jTI7i8Q' \
    --namespace $AB_NAMESPACE \
    --userId '0hWRy7jI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'hAH5EEgj' \
    --namespace $AB_NAMESPACE \
    --userId 'icmKGfLY' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'FaQHE7c2' \
    --namespace $AB_NAMESPACE \
    --userId 'tgiLx14a' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'P40VewId' \
    --namespace $AB_NAMESPACE \
    --userId 'JnKrJ3hx' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '49' \
    --query 'hZB5eNEC' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "zyG5bzJG", "key": "YtqUGQ08"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["7KBnqdyk", "b1uffLsL", "N0mlYPoF"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'ETJirymx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'BMRxl7am' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "ZiWHOwYJ", "file_location": "iEVE0p2O"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'viDPNUB7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'mPDg00L3' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "zqys3ULL"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key '03Qiley1' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "QytjzhKZ", "value": {"OSssXQ8A": {}, "k5ImgYVQ": {}, "VOGTrICb": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["B38K7fnw", "W9rwU35k", "tq06DBDx"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '6CneUy0c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'qFAnJsiK' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'q1nJsewr' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'IK9fAZKs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'JAmrKNR4' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["eGeiiibH", "I7Jj3GbQ", "IRCd0s1b"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'rHoWs7D7' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ViXsoYHk", "vaIpoIp6", "0s9lTIZh"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '31' \
    --query '9xn2uknz' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["TaZPhCZD", "YvHXMOHO", "1wUkns83"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["DXnfVEKM", "7HJjyFtl", "liNIa30Y"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key '7GYGv4Wt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YoSWD9f2' \
    --body '{"file_type": "dybmbh26", "is_public": false, "key": "1JYu7GDA"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vW3DObaP' \
    --limit '73' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Xxxn5LRA' \
    --body '{"keys": ["8MYKwyi5", "WBSbR0v9", "pcTAlNqq"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'V3ny6Ir0' \
    --namespace $AB_NAMESPACE \
    --userId 'zR3jFK47' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key '3ioh0sdk' \
    --namespace $AB_NAMESPACE \
    --userId 'XJUCAvBd' \
    --body '{"content_type": "8DzDyQuw", "file_location": "A2CxlBu9"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key '7wqjSZ4C' \
    --namespace $AB_NAMESPACE \
    --userId '0Y1jP6RO' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key '7j9J7ZC4' \
    --namespace $AB_NAMESPACE \
    --userId 'tnS6fOun' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'QCPQEd7H' \
    --namespace $AB_NAMESPACE \
    --userId '31vaqNNh' \
    --body '{"file_type": "S6YtjVOy"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key '2fDFOCzk' \
    --namespace $AB_NAMESPACE \
    --userId 'VrO3gCpo' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'CLZduvVU' \
    --namespace $AB_NAMESPACE \
    --userId 'OzxwO4Bb' \
    --responseBody 'true' \
    --body '{"updatedAt": "qydz7Yae", "value": {"U3Yi8M9t": {}, "FJJsiTlH": {}, "vjT529ts": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'qBzOjk1P' \
    --namespace $AB_NAMESPACE \
    --userId 'QnRWdBWI' \
    --responseBody 'false' \
    --body '{"updatedAt": "jgI8YsOM", "value": {"pvSosfD5": {}, "ElxMk1C8": {}, "C2Oqo7c9": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JeDSONdf' \
    --limit '26' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '0ApR0qSB' \
    --body '{"keys": ["1TZbBtF4", "87rsBnOO", "PY2R2moX"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '79pVjtl0' \
    --namespace $AB_NAMESPACE \
    --userId 'gzxm2Rss' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'bhTDwTnZ' \
    --namespace $AB_NAMESPACE \
    --userId '7uG1Lbx7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'tmMMHrlM' \
    --namespace $AB_NAMESPACE \
    --userId 'MHgqSYa0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'wgSbbw6o' \
    --namespace $AB_NAMESPACE \
    --userId 'DmlDY8lJ' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'NjlfEFsV' \
    --namespace $AB_NAMESPACE \
    --userId 'iX7qWGEg' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'YAPN4O8N' \
    --namespace $AB_NAMESPACE \
    --userId 'JEPPndcc' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'IxllU2Kx' \
    --namespace $AB_NAMESPACE \
    --userId 'LDDIrRt6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE