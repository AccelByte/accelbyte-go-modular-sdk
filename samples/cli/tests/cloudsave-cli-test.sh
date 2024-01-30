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
echo "1..96"

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
    --limit '11' \
    --offset '66' \
    --query 'EMBMb7dR' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["yuLfL3Bv", "E3meGpj0", "mWNy3VV0"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'Hx4AAIxH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'extrxTyX' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'qAbD2zUr' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'dBQifj5f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '52' \
    --query 'HOIkCYqy' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "zUHmlR78", "key": "JBG9kXqs", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'E7yke1bD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'tdJCtdwU' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "9e87jO5W", "file_location": "nGSOY2pw"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'SjqiMT3c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'unCgDo7V' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'AhlR0KUG' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "HzGJIWML"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'RNicdmSS' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "kfGPdE8d", "value": {"gGnDkhjh": {}, "Uoj1elTz": {}, "hqSqk9O7": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'ePiEHUOy' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "updatedAt": "M6Lpt0K2", "value": {"DJM5AqHu": {}, "EqknI5Ze": {}, "p3F136tP": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 17 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetPluginConfig' test.out

#- 18 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "HoXwwrFG"}, "customConfig": {"GRPCAddress": "A1Zd1NKa"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 18 'CreatePluginConfig' test.out

#- 19 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeletePluginConfig' test.out

#- 20 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "Y3xZlNrO"}, "customConfig": {"GRPCAddress": "5pWvaVDI"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'J9JYseMi' \
    --limit '13' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'LI6Pqqk8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key '0xqnnTl4' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'LoKOYGq4' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '0Lnz9OCq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'rLQxKdHx' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2zQ79LDF", "7xw9nJMV", "Hry3S1RK"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["eZJ4BYPm", "Fen2BeCf", "N5Xb9Wr1"], "user_id": "pQ1YOIqr"}, {"keys": ["gztF3RWW", "eXx0Fmsx", "5NQk3gH4"], "user_id": "pGCEbzEi"}, {"keys": ["SXUy72Q9", "anJpIRRY", "WqFMSihb"], "user_id": "fPfzqJKD"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '6sXMgDGV' \
    --limit '31' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'R5rXvxeM' \
    --body '{"keys": ["eNyEOslD", "BsGr5PYR", "DqVE4C1A"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'PlVqLKSR' \
    --namespace $AB_NAMESPACE \
    --userId '1DN1a8CF' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'swbgCyhT' \
    --namespace $AB_NAMESPACE \
    --userId 'DwJ50GyF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'bSOjInyq' \
    --namespace $AB_NAMESPACE \
    --userId 'o3yoGJ7L' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'BffC26x1' \
    --namespace $AB_NAMESPACE \
    --userId '4fKLzp0J' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sWEbqXeV' \
    --limit '40' \
    --offset '50' \
    --query 'jftsXqZz' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'iLr8hVVu' \
    --body '{"file_type": "eybRTS6A", "is_public": false, "key": "nl7aqMpw", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'BDsfVWsK' \
    --namespace $AB_NAMESPACE \
    --userId 'WmFkfgIe' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'wMBeOdZa' \
    --namespace $AB_NAMESPACE \
    --userId 'gTReUIPS' \
    --body '{"content_type": "svmB7QfX", "file_location": "vH0bNuKW"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '4gRt5bwN' \
    --namespace $AB_NAMESPACE \
    --userId '9sXwtVpd' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'Y2DmeoRA' \
    --namespace $AB_NAMESPACE \
    --userId 'OXyBwIss' \
    --body '{"is_public": true, "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'KdJUghIe' \
    --namespace $AB_NAMESPACE \
    --userId 'HS3rQjGt' \
    --body '{"file_type": "dFtLTCTF"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'OzTovVcn' \
    --namespace $AB_NAMESPACE \
    --userId 'C0RdhUEy' \
    --responseBody 'true' \
    --body '{"updatedAt": "Q1moEAgz", "value": {"mtTE0qUk": {}, "3Wq2RM2Q": {}, "nyXS5KEe": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'mAdmiHqB' \
    --namespace $AB_NAMESPACE \
    --userId 'VKYyqoS4' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "updatedAt": "Z8H5eaJk", "value": {"1wvvxBjq": {}, "VXfQ1pi3": {}, "kXDdCpb0": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'O3kkTHTe' \
    --namespace $AB_NAMESPACE \
    --userId 'Z2to7zpq' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "updatedAt": "O8bEOW5e", "value": {"UengClCZ": {}, "okVknBUc": {}, "VbaPvB7P": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'rpKLbcAZ' \
    --limit '12' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'F58LzAWg' \
    --body '{"data": [{"key": "es8iqIvd", "value": {"7uQZYyBs": {}, "1aSkUBqm": {}, "DaYfyHBx": {}}}, {"key": "KUmfrqDd", "value": {"T4a3UlV1": {}, "QVKRwjMQ": {}, "WFesnWvH": {}}}, {"key": "u1DLNzL0", "value": {"fWRX9Oz0": {}, "gCZhL2sC": {}, "g6J6LZsx": {}}}]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IfFSjIR2' \
    --body '{"keys": ["jCIltQJd", "HNCTGlqn", "X5PJyj47"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordsHandlerV1' test.out

#- 48 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'PiNNBw49' \
    --namespace $AB_NAMESPACE \
    --userId 'drh0Rtrx' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerRecordHandlerV1' test.out

#- 49 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'RUMxzvX0' \
    --namespace $AB_NAMESPACE \
    --userId 'PdexSzp5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerRecordHandlerV1' test.out

#- 50 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'T2Us89Rs' \
    --namespace $AB_NAMESPACE \
    --userId 'lTKiNBiH' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPostPlayerRecordHandlerV1' test.out

#- 51 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'OYmW4MuG' \
    --namespace $AB_NAMESPACE \
    --userId '3YhVUkn5' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeletePlayerRecordHandlerV1' test.out

#- 52 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'yK06PYAT' \
    --namespace $AB_NAMESPACE \
    --userId 'GxkMhDRU' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '0PKXl2KQ' \
    --namespace $AB_NAMESPACE \
    --userId 'pN9O32Kj' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 54 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'jGTAAvTO' \
    --namespace $AB_NAMESPACE \
    --userId '2JBBIb1s' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 55 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'SuqF6f0w' \
    --namespace $AB_NAMESPACE \
    --userId 'EddpHBiX' \
    > test.out 2>&1
eval_tap $? 55 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 56 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'B75Kr9Dt' \
    --namespace $AB_NAMESPACE \
    --userId 'oaeE2un8' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 57 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '98' \
    --query 'X3U26vxO' \
    > test.out 2>&1
eval_tap $? 57 'ListGameBinaryRecordsV1' test.out

#- 58 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "8uE4z225", "key": "Om9sVvnY"}' \
    > test.out 2>&1
eval_tap $? 58 'PostGameBinaryRecordV1' test.out

#- 59 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["7ucfy6Sp", "MdHy4DGG", "Hhf4wabf"]}' \
    > test.out 2>&1
eval_tap $? 59 'BulkGetGameBinaryRecordV1' test.out

#- 60 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'EeLI5CTU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetGameBinaryRecordV1' test.out

#- 61 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'u9XSENC2' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "Tn7flLAr", "file_location": "abt67hoj"}' \
    > test.out 2>&1
eval_tap $? 61 'PutGameBinaryRecordV1' test.out

#- 62 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'lEPqksXL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGameBinaryRecordV1' test.out

#- 63 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key '02VeC8Aa' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "WsfkKrhL"}' \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryPresignedURLV1' test.out

#- 64 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'j1FpvVH8' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "R6DGGndF", "value": {"cpENe2VL": {}, "8P61KpPm": {}, "zB7fNUvp": {}}}' \
    > test.out 2>&1
eval_tap $? 64 'PutGameRecordConcurrentHandlerV1' test.out

#- 65 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["pzWwiUHu", "qi5ddwQ9", "LlNcodDt"]}' \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordsBulk' test.out

#- 66 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'wKAy0YM3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'GetGameRecordHandlerV1' test.out

#- 67 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'ZI7dvUVE' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 67 'PutGameRecordHandlerV1' test.out

#- 68 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'KlUiwZ4P' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 68 'PostGameRecordHandlerV1' test.out

#- 69 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'SBnZnBZx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameRecordHandlerV1' test.out

#- 70 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'TiS128nv' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jwUQRHUh", "p0z9DPW7", "m09AXGL6"]}' \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 71 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'DmoSW2Kv' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XhboXO7x", "VIr3DUQ5", "IPUnwPX0"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 72 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '88' \
    --query 'ZIdRPC5O' \
    > test.out 2>&1
eval_tap $? 72 'ListMyBinaryRecordsV1' test.out

#- 73 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["iM7W6UJR", "I7J69N8c", "DkjyMzBG"]}' \
    > test.out 2>&1
eval_tap $? 73 'BulkGetMyBinaryRecordV1' test.out

#- 74 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 74 'RetrievePlayerRecords' test.out

#- 75 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ylHNGYw2", "IYqiyXXD", "kcljCdZE"]}' \
    > test.out 2>&1
eval_tap $? 75 'GetPlayerRecordsBulkHandlerV1' test.out

#- 76 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'YBiDl1jo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 77 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '0VJconcc' \
    --body '{"file_type": "UlCi9XqT", "is_public": false, "key": "TJYocPKu"}' \
    > test.out 2>&1
eval_tap $? 77 'PostPlayerBinaryRecordV1' test.out

#- 78 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zDJOquwz' \
    --limit '45' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 78 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '0gDQkeKx' \
    --body '{"keys": ["dp7qcVKO", "lO781l5b", "eeV3jPIA"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 80 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key '65lRHD0z' \
    --namespace $AB_NAMESPACE \
    --userId 'xmTYLXKy' \
    > test.out 2>&1
eval_tap $? 80 'GetPlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'dzOdFvnN' \
    --namespace $AB_NAMESPACE \
    --userId 'wsmt40C8' \
    --body '{"content_type": "yO3xEEVJ", "file_location": "ta1vnVLX"}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecordV1' test.out

#- 82 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key '6z5LbPN7' \
    --namespace $AB_NAMESPACE \
    --userId '1c5liSHl' \
    > test.out 2>&1
eval_tap $? 82 'DeletePlayerBinaryRecordV1' test.out

#- 83 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'PQXeV0ZZ' \
    --namespace $AB_NAMESPACE \
    --userId 'V7PSpOUC' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 83 'PutPlayerBinaryRecorMetadataV1' test.out

#- 84 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'fzrTvQCF' \
    --namespace $AB_NAMESPACE \
    --userId 'rzMFeTdq' \
    --body '{"file_type": "u5uT03It"}' \
    > test.out 2>&1
eval_tap $? 84 'PostPlayerBinaryPresignedURLV1' test.out

#- 85 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key '3fknb4we' \
    --namespace $AB_NAMESPACE \
    --userId 'EuiOGjsY' \
    > test.out 2>&1
eval_tap $? 85 'GetPlayerPublicBinaryRecordsV1' test.out

#- 86 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'vApfWwJK' \
    --namespace $AB_NAMESPACE \
    --userId 'mMxYMsyr' \
    --responseBody 'true' \
    --body '{"updatedAt": "8Qs1riIb", "value": {"q2B0UDOF": {}, "9TOCY7T6": {}, "hKiciaUI": {}}}' \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 87 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'ARuM9b6o' \
    --namespace $AB_NAMESPACE \
    --userId 'KYmgkgaX' \
    --responseBody 'false' \
    --body '{"updatedAt": "vV1JCG0a", "value": {"2vlxgzXb": {}, "JHdVDRUY": {}, "92r4jF9D": {}}}' \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '12HuGbXx' \
    --limit '54' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 89 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DWdBycv7' \
    --body '{"keys": ["YGo1ReMR", "Kb2Styp6", "dNkWgGkT"]}' \
    > test.out 2>&1
eval_tap $? 89 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 90 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'qoaiQbw9' \
    --namespace $AB_NAMESPACE \
    --userId 'vVId483I' \
    > test.out 2>&1
eval_tap $? 90 'GetPlayerRecordHandlerV1' test.out

#- 91 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'uLTA1iAf' \
    --namespace $AB_NAMESPACE \
    --userId 'os87RrfJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerRecordHandlerV1' test.out

#- 92 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'R9LanSno' \
    --namespace $AB_NAMESPACE \
    --userId 'wbNItJMh' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerRecordHandlerV1' test.out

#- 93 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'kikvzezT' \
    --namespace $AB_NAMESPACE \
    --userId 'RNQgsh1z' \
    > test.out 2>&1
eval_tap $? 93 'DeletePlayerRecordHandlerV1' test.out

#- 94 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'BBZQIpyQ' \
    --namespace $AB_NAMESPACE \
    --userId 'gpLy8YiI' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicRecordHandlerV1' test.out

#- 95 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'rLeXpWvc' \
    --namespace $AB_NAMESPACE \
    --userId 'gSCVpWcc' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordHandlerV1' test.out

#- 96 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'LpdMySVN' \
    --namespace $AB_NAMESPACE \
    --userId 'cK9gZOkt' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 96 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE