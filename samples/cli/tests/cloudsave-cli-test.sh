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
echo "1..95"

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
    --limit '56' \
    --offset '90' \
    --query 'gDS5aISE' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["lJEJf9zu", "zu3kBlsY", "YWqJbncf"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'zOTK1LSo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'QYkXfOuQ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'k9w2DkVT' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'sMaBH25L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '3' \
    --query 'rUS2JpAQ' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "kSAvY0C8", "key": "63Z7as7V", "set_by": "Lf8cZKLz"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'U9VViMrR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key '9Xg0PL3f' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "aSXQOyNu", "file_location": "Lw7XB5gr"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key '8x7RmdMb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '9RXypIPn' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "nDx9y7PF"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'zJ6x8C5V' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "wquwrotR"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '7E5yGmTa' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "xRM60C2D", "value": {"1CbR5Mho": {}, "rfXQ4m14": {}, "9T9lNZWv": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'k4ilnIlR' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "Fp3KVrye", "updatedAt": "03al8TC2", "value": {"K74qGf8H": {}, "w60pEA2x": {}, "ujz3JJgT": {}}}' \
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
    --body '{"appConfig": {"appName": "wqFgz9Qs"}, "customConfig": {"GRPCAddress": "epi8tLZO"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "OgNs22dC"}, "customConfig": {"GRPCAddress": "vBcUUEC3"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '4IB0h7Be' \
    --limit '7' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'JQ84DDJF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'NcasxpK9' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'KTqv8gfs' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'EqlLVEeG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'hqoULEJL' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BksoeulK", "mF9Mv7Qc", "rJxjROge"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["XNDSaW53", "dqfQoTDz", "0eQkmzfL"], "user_id": "lYmjGUIo"}, {"keys": ["bPyE2XRS", "PTIiaZVB", "0wRotULr"], "user_id": "eaM7PWpR"}, {"keys": ["s1qCg6EI", "Wp9POczj", "tT2Eqpps"], "user_id": "Dcw2IZsc"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'umbAVpZq' \
    --limit '28' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '4OlrEKhg' \
    --body '{"keys": ["OC3aZEKN", "96UaGtNp", "hxXGpkbb"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'SkcfHIld' \
    --namespace $AB_NAMESPACE \
    --userId 'hhFTxAUS' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'hxK1Z78a' \
    --namespace $AB_NAMESPACE \
    --userId 'kvJeZoc5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'IguYqOvv' \
    --namespace $AB_NAMESPACE \
    --userId '8xVnzRST' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'C1zEh8XE' \
    --namespace $AB_NAMESPACE \
    --userId 'ct8wk2A2' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qMIheQ3Q' \
    --limit '49' \
    --offset '90' \
    --query '1Jmrxr9Z' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'URQWxcun' \
    --body '{"file_type": "ceBD6E45", "is_public": true, "key": "ggWtG8G2", "set_by": "rwcC8ylR"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'SLBIq7Ks' \
    --namespace $AB_NAMESPACE \
    --userId 'HXru0Qby' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'iCwClrn1' \
    --namespace $AB_NAMESPACE \
    --userId '74v3EIHf' \
    --body '{"content_type": "BrGYrLNd", "file_location": "dgfPtpvA"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'r6T8iUe5' \
    --namespace $AB_NAMESPACE \
    --userId 'T22uVRZO' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'WX3tKg9V' \
    --namespace $AB_NAMESPACE \
    --userId 'bekfCV6M' \
    --body '{"is_public": false, "set_by": "Ho8Gnulr"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'meaDKewP' \
    --namespace $AB_NAMESPACE \
    --userId 'VlBdeet5' \
    --body '{"file_type": "f6eLjYw8"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'xZFlpeGZ' \
    --namespace $AB_NAMESPACE \
    --userId 'HWqSSj56' \
    --responseBody 'true' \
    --body '{"updatedAt": "TAoRM95c", "value": {"yyLoA02p": {}, "BOurMcbW": {}, "mas0QSlO": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'Qh2KiEno' \
    --namespace $AB_NAMESPACE \
    --userId 't9d4fuOX' \
    --responseBody 'true' \
    --body '{"set_by": "z0MMvM3w", "updatedAt": "6xC3reY2", "value": {"GUYcUHtK": {}, "nr0AUJ4L": {}, "gIkVoK4z": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'YYl80JuW' \
    --namespace $AB_NAMESPACE \
    --userId 'wdvYQhMJ' \
    --responseBody 'false' \
    --body '{"set_by": "YeORQbAm", "updatedAt": "coJlLqb9", "value": {"7v6Bk8OB": {}, "hpk1PCve": {}, "nPfOu83E": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'po4ZrItz' \
    --limit '60' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pqmgY7ho' \
    --body '{"keys": ["76Smxa7P", "NpPQTlA4", "QDRFJ1jV"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'tH43kuHC' \
    --namespace $AB_NAMESPACE \
    --userId 'lN9WxGXR' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordHandlerV1' test.out

#- 48 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'uc28oYpb' \
    --namespace $AB_NAMESPACE \
    --userId 'pTQj7H2v' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerRecordHandlerV1' test.out

#- 49 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'G9jeHzdO' \
    --namespace $AB_NAMESPACE \
    --userId 'nvJkaj3B' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerRecordHandlerV1' test.out

#- 50 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key '32S1nMvt' \
    --namespace $AB_NAMESPACE \
    --userId 'npdlczPi' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeletePlayerRecordHandlerV1' test.out

#- 51 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'zTmRwTQ4' \
    --namespace $AB_NAMESPACE \
    --userId 'b87xXuXQ' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '2IzlFwov' \
    --namespace $AB_NAMESPACE \
    --userId 'XQukU9yC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'YLtTAXPV' \
    --namespace $AB_NAMESPACE \
    --userId 'A7IWYw9l' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 54 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 't1KNGJ62' \
    --namespace $AB_NAMESPACE \
    --userId 'c4BnY4aM' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 55 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'u3XxdG9k' \
    --namespace $AB_NAMESPACE \
    --userId 'Y6bVLgTC' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 56 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '37' \
    --query '9u3E252y' \
    > test.out 2>&1
eval_tap $? 56 'ListGameBinaryRecordsV1' test.out

#- 57 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "ECwITKYG", "key": "HONHQov3"}' \
    > test.out 2>&1
eval_tap $? 57 'PostGameBinaryRecordV1' test.out

#- 58 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["09DcVpkh", "brqLSZvb", "XnO55elL"]}' \
    > test.out 2>&1
eval_tap $? 58 'BulkGetGameBinaryRecordV1' test.out

#- 59 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'RzhS8GbN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'GetGameBinaryRecordV1' test.out

#- 60 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key '32U7UZ5e' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "2ldEBIJu", "file_location": "ixOJCYAT"}' \
    > test.out 2>&1
eval_tap $? 60 'PutGameBinaryRecordV1' test.out

#- 61 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'xnOnERSE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'DeleteGameBinaryRecordV1' test.out

#- 62 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'J3Sg454L' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "pueafe8J"}' \
    > test.out 2>&1
eval_tap $? 62 'PostGameBinaryPresignedURLV1' test.out

#- 63 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'On0Dm2aC' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "8jS0j4vc", "value": {"OJY4d3aj": {}, "w5a6cvPv": {}, "d0ayICXf": {}}}' \
    > test.out 2>&1
eval_tap $? 63 'PutGameRecordConcurrentHandlerV1' test.out

#- 64 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Zyd8Olvg", "UI07lgbz", "q1k2m6HO"]}' \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordsBulk' test.out

#- 65 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '0kTO4HG3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordHandlerV1' test.out

#- 66 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'BPjgqbUJ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PutGameRecordHandlerV1' test.out

#- 67 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'f6yW23BF' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 67 'PostGameRecordHandlerV1' test.out

#- 68 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'Kq3F5aot' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'DeleteGameRecordHandlerV1' test.out

#- 69 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'fTGuXgsY' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["vgwcevv1", "qY2nHYsS", "xJvi0lgi"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 70 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'PpcJj2D7' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ixgYFHEg", "COafL8An", "l09xdQus"]}' \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 71 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '23' \
    --query 'ZtMDoJQq' \
    > test.out 2>&1
eval_tap $? 71 'ListMyBinaryRecordsV1' test.out

#- 72 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["So7WjQUH", "GxHxu8Na", "zxr6kdAa"]}' \
    > test.out 2>&1
eval_tap $? 72 'BulkGetMyBinaryRecordV1' test.out

#- 73 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 73 'RetrievePlayerRecords' test.out

#- 74 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Ol9eGSa7", "vCe6gYGc", "jONIE2GC"]}' \
    > test.out 2>&1
eval_tap $? 74 'GetPlayerRecordsBulkHandlerV1' test.out

#- 75 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'Rz33QcDz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 76 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'd0gULYnj' \
    --body '{"file_type": "7orRTFJ7", "is_public": true, "key": "b9QiWMj6"}' \
    > test.out 2>&1
eval_tap $? 76 'PostPlayerBinaryRecordV1' test.out

#- 77 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '5KzKpeJC' \
    --limit '4' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 77 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'l7OK3l7n' \
    --body '{"keys": ["Y0XxujxW", "fYtFsSlT", "SaoAcQAd"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'bIA0xEJS' \
    --namespace $AB_NAMESPACE \
    --userId '5vS2Yk65' \
    > test.out 2>&1
eval_tap $? 79 'GetPlayerBinaryRecordV1' test.out

#- 80 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'jp6G9tc8' \
    --namespace $AB_NAMESPACE \
    --userId 'lIB9WRJ9' \
    --body '{"content_type": "bkcBMDfG", "file_location": "fMAgUjem"}' \
    > test.out 2>&1
eval_tap $? 80 'PutPlayerBinaryRecordV1' test.out

#- 81 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'W9tK7waO' \
    --namespace $AB_NAMESPACE \
    --userId 'ssrdpwn9' \
    > test.out 2>&1
eval_tap $? 81 'DeletePlayerBinaryRecordV1' test.out

#- 82 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'Wr7aF8hd' \
    --namespace $AB_NAMESPACE \
    --userId '2Tn5MkIX' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 82 'PutPlayerBinaryRecorMetadataV1' test.out

#- 83 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'fVet6IvA' \
    --namespace $AB_NAMESPACE \
    --userId 'xQkrmorq' \
    --body '{"file_type": "giv70rtj"}' \
    > test.out 2>&1
eval_tap $? 83 'PostPlayerBinaryPresignedURLV1' test.out

#- 84 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'hf2NwyJA' \
    --namespace $AB_NAMESPACE \
    --userId 'Sf0cmYfp' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerPublicBinaryRecordsV1' test.out

#- 85 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'cZCnJx15' \
    --namespace $AB_NAMESPACE \
    --userId 'K0vnnTI2' \
    --responseBody 'false' \
    --body '{"updatedAt": "Blpjs0Tz", "value": {"3esfSHHt": {}, "8IaVqvy4": {}, "6sgp9z3C": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 86 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'aaphQsAA' \
    --namespace $AB_NAMESPACE \
    --userId 'sOhlmG7E' \
    --responseBody 'true' \
    --body '{"updatedAt": "LcTaNhPh", "value": {"hUkGPEvo": {}, "9t46Comy": {}, "ZeaKRiWF": {}}}' \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hH0bVfLg' \
    --limit '23' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qFaCR3m9' \
    --body '{"keys": ["N8UmYPR9", "R7iz43fw", "Y6tfOSSw"]}' \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 89 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'jPB2YQGh' \
    --namespace $AB_NAMESPACE \
    --userId 'jUqhQLGy' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerRecordHandlerV1' test.out

#- 90 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'Q9NN0Bti' \
    --namespace $AB_NAMESPACE \
    --userId 'qmFuos0c' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerRecordHandlerV1' test.out

#- 91 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'mqRyqAyV' \
    --namespace $AB_NAMESPACE \
    --userId '5XSrcspy' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 91 'PostPlayerRecordHandlerV1' test.out

#- 92 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'vL7AkFii' \
    --namespace $AB_NAMESPACE \
    --userId '7bWUeqGt' \
    > test.out 2>&1
eval_tap $? 92 'DeletePlayerRecordHandlerV1' test.out

#- 93 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'cRhNull8' \
    --namespace $AB_NAMESPACE \
    --userId 'T3Zk8HHM' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicRecordHandlerV1' test.out

#- 94 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'l3l2IkvY' \
    --namespace $AB_NAMESPACE \
    --userId 'xESbpxDF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerPublicRecordHandlerV1' test.out

#- 95 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '8w5IiEZi' \
    --namespace $AB_NAMESPACE \
    --userId 'O7b2yPDg' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 95 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE