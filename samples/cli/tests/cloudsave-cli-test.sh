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
    --limit '74' \
    --offset '14' \
    --query 'nm7TyyEA' \
    --tags '["Mcav9Qyy", "jmNR7QRo", "5WImuqJr"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["xTr5PzWO", "fEG1Pyrl", "OitT2RkR"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'Kw3E7RFB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'XIDCdPDI' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '0lcPgdFB' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key '27dyAv3U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'rTgu9k40' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '98' \
    --query 'Lwqq9vM0' \
    --tags '["vOVi1B5a", "FjG95YbB", "RjSqcpha"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "AKvNBkDs", "key": "8lmsP0zE", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1989-08-10T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'AIiCKEyR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'VnANMsHq' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "MOEkfDB6", "file_location": "r1k3yqHd"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key '2oZ4B2Zx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'yVx8YyRB' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["0YIauEaL", "X5EoHw5z", "sokBg7dx"], "ttl_config": {"action": "DELETE", "expires_at": "1988-02-23T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'v4nYCJA5' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "eDhaJyp3"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'ogC71dDi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '99s3aVp4' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["dv9hNbVj", "IbPJEXs5", "gmYxzaMn"], "ttl_config": {"action": "DELETE", "expires_at": "1979-08-28T00:00:00Z"}, "updatedAt": "1973-01-26T00:00:00Z", "value": {"oyrQ5vru": {}, "D6mptSIW": {}, "i7UC7YFw": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'rqQfKALH' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["JCiFLekT", "wtONbzlh", "CE0nQ1YU"], "ttl_config": {"action": "DELETE", "expires_at": "1994-05-17T00:00:00Z"}, "updatedAt": "1993-06-07T00:00:00Z", "value": {"I0fGz7Li": {}, "mrK9GxDI": {}, "TA8pTrii": {}}}' \
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
    --body '{"appConfig": {"appName": "xHizNwfk"}, "customConfig": {"GRPCAddress": "onf2cBSE"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "bJyOZ5Vl"}, "customConfig": {"GRPCAddress": "oLGGURct"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'E0UTBlYQ' \
    --tags '["ID8HqPVI", "aO6KNOx0", "aMzREK6c"]' \
    --limit '43' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'ovXjxOXI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'cmOK9Ckf' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'drgU3SC1' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'd3c7VlFO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'NLwexWuO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "yeZBXmii"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'T21sf1HA' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'Y9wXnD2d' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["cZvjPC4X", "UNe7z72f", "24aH7036"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["jW3NxrSr", "sHBRUjGP", "QuOBKJDv"], "user_id": "yEVyPRf5"}, {"keys": ["olY03uPT", "TateDdMM", "pMx7ec03"], "user_id": "DP5bcp1Y"}, {"keys": ["gyHtd8uP", "WWjtRZY9", "pDCsg8g4"], "user_id": "eMr7doG4"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'sxchjYyH' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "hFzW4MJI", "value": {"7sPzr9BQ": {}, "b4vWZKi5": {}, "yIuv2umt": {}}}, {"user_id": "ThUk2ymC", "value": {"XmmFlYMJ": {}, "Mwiiuzhz": {}, "V6i7WMfI": {}}}, {"user_id": "h5Xw3gQ5", "value": {"voc6Sv0N": {}, "FU0kVnED": {}, "wQfO9em3": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key '0jB6Lkn3' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PZ4gt45b", "1ctJsSYN", "KpdyK7Hi"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eyj1oErs' \
    --limit '18' \
    --offset '60' \
    --query 'a1DWvjIe' \
    --tags '["PJSZomVa", "l7lyXOBK", "xM7LwOHX"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jfGWzmyP' \
    --body '{"keys": ["nWriWvU9", "mMAXjyNv", "HemFyHrZ"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'xTxDYm25' \
    --namespace $AB_NAMESPACE \
    --userId '33m7Lxv8' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'xXnLUjqM' \
    --namespace $AB_NAMESPACE \
    --userId 'w1zXpX5p' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'EschEDs7' \
    --namespace $AB_NAMESPACE \
    --userId 'gz5FTl97' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'xIsYOt2q' \
    --namespace $AB_NAMESPACE \
    --userId '3c6D4wxC' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'V3XB3C9S' \
    --limit '100' \
    --offset '15' \
    --query 'coyb987g' \
    --tags '["5f1KP8oj", "elmhWr3U", "ojUTL1MY"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sBnuSh06' \
    --body '{"file_type": "5T7dlXCp", "is_public": true, "key": "qVWoPJIB", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'u0NOyhiq' \
    --namespace $AB_NAMESPACE \
    --userId 'N0axUMQw' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'QgV1X6GG' \
    --namespace $AB_NAMESPACE \
    --userId 'xxI2iEJG' \
    --body '{"content_type": "zbx6ENoa", "file_location": "vrWqIYtM"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'h2xtxTfM' \
    --namespace $AB_NAMESPACE \
    --userId 'AcF6YM89' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'fnWAOFkg' \
    --namespace $AB_NAMESPACE \
    --userId 'itGhdlsF' \
    --body '{"is_public": false, "set_by": "CLIENT", "tags": ["RpqPgETG", "DAKlUfzd", "nQFBr70o"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'pOZTHnHf' \
    --namespace $AB_NAMESPACE \
    --userId 'OAi8Tt6v' \
    --body '{"file_type": "9lpr9Wvp"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '1jgXo8mk' \
    --namespace $AB_NAMESPACE \
    --userId '7vSBWmwJ' \
    --responseBody 'true' \
    --body '{"tags": ["4vHDGtRY", "WcaFmIiC", "khHPEHqx"], "updatedAt": "1989-01-28T00:00:00Z", "value": {"Ul0PXJlG": {}, "q0fNG1Bg": {}, "CmElo4Ap": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'USzM8BzB' \
    --namespace $AB_NAMESPACE \
    --userId 'fGb7bLuq' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["OTnn3GFl", "ZQiKCkTV", "36QH4qeF"], "ttl_config": {"action": "DELETE", "expires_at": "1973-08-01T00:00:00Z"}, "updatedAt": "1978-03-25T00:00:00Z", "value": {"wn2xcp1q": {}, "uRbsfdKn": {}, "e5vnRQml": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'F9Mr9GrM' \
    --namespace $AB_NAMESPACE \
    --userId 'vnBSKJtM' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["fymBIm2Q", "iHaUUWDi", "vRM5QtBT"], "ttl_config": {"action": "DELETE", "expires_at": "1988-09-16T00:00:00Z"}, "updatedAt": "1993-08-10T00:00:00Z", "value": {"oTvp2Wv8": {}, "C95El6kp": {}, "rnTF0q3i": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'xpc33F37' \
    --limit '61' \
    --offset '53' \
    --query 'V3Y5n7Eb' \
    --tags '["de93T921", "YTJym9W9", "FyTd3Uc7"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'cCPviYtZ' \
    --body '{"data": [{"key": "e3Q2Zn9g", "value": {"eadw3vDA": {}, "pL5X8FiG": {}, "qRQdz8g1": {}}}, {"key": "Cevzb4Db", "value": {"KJD5jU9m": {}, "ZnbFqFst": {}, "4RON5xIc": {}}}, {"key": "xkL4N7I5", "value": {"TGS3llEk": {}, "DxtgPK7J": {}, "SCxVJ5oy": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Stbzp5MJ' \
    --body '{"keys": ["1mS5ixbS", "VlgvgrZJ", "PaOXfqU1"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'QQGY1b5A' \
    --namespace $AB_NAMESPACE \
    --userId 'oZjZnSYY' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '7ZxOQxOa' \
    --namespace $AB_NAMESPACE \
    --userId 'R0RV4qK7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '9fOYkxBF' \
    --namespace $AB_NAMESPACE \
    --userId 'XmLGybGS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'EG7sWH08' \
    --namespace $AB_NAMESPACE \
    --userId 'NhrUVCjb' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'DxxRFgO6' \
    --namespace $AB_NAMESPACE \
    --userId 'gFpvDlYj' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'TzG8MfOA' \
    --namespace $AB_NAMESPACE \
    --userId 'dsoLpI4O' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'eyoI1P18' \
    --namespace $AB_NAMESPACE \
    --userId 'FWYoep4b' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'Wl1qPziF' \
    --namespace $AB_NAMESPACE \
    --userId 'pMefe7Tz' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'oUyW400f' \
    --namespace $AB_NAMESPACE \
    --userId '0nRYZ4fs' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '17' \
    --query 'IcQAra1i' \
    --tags '["s82Ix1b7", "4QV4hWje", "KwzeQmqG"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "LO41bqul", "key": "QUJXrLIR"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["pHsNaL52", "fW9wak8U", "PWs7puve"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'X9RtzpFV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'U5tmJhvQ' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "AacqAqQf", "file_location": "CGfKT0LU"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'NHm1gPfw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'MPMvIeUa' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "qXk7Hv2w"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'nnSrM9qm' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1994-07-18T00:00:00Z", "value": {"XPbDrthP": {}, "yUNtqLQZ": {}, "7Tx4hYtb": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["HMp67NWU", "vlwiBhFH", "v7BOFKdL"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'tGIoXUYY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'DVyBU85j' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'iy609lR6' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '3cFoYv65' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'z3KjJser' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yQ5tMfmi", "c9XcNcBf", "3XuSxkAg"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'lUomUikv' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6oaB8isD", "KSl8DZSK", "iOXvOEyg"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '78' \
    --query 'D2dNmxv8' \
    --tags '["ZovJILVK", "uLuhHIhw", "7leA3D5Y"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["iowNCwlZ", "sJ5ukkfA", "zwV6JOEz"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '85' \
    --tags '["dU8rVMJh", "coOqACih", "2TNNUrNp"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["JdnggMtu", "kOpKy4Db", "pjDD79ws"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key '4rz6y3Oo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '0ugtpASo' \
    --body '{"file_type": "lWddY8QU", "is_public": false, "key": "IUeiYt0B"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'B4x329XO' \
    --limit '29' \
    --offset '0' \
    --tags '["Z0LQJ43T", "WpU4QmdC", "hjZoPAXi"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kWQSAofH' \
    --body '{"keys": ["CjT9Scnu", "Mn4nEX64", "Huo1ZjiQ"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'qEDPMmxw' \
    --namespace $AB_NAMESPACE \
    --userId 'NY8IJ61b' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key '5O27P4gu' \
    --namespace $AB_NAMESPACE \
    --userId 'aRLZX8ty' \
    --body '{"content_type": "pRf1OhIt", "file_location": "OuxutHCt"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'yXTiY5tQ' \
    --namespace $AB_NAMESPACE \
    --userId 'EGlY03Mc' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'UgEEgYGx' \
    --namespace $AB_NAMESPACE \
    --userId 'zcylHiH3' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'W5ovDYca' \
    --namespace $AB_NAMESPACE \
    --userId 'O9lBAx5e' \
    --body '{"file_type": "S3KOfPU4"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key '4sXcegsT' \
    --namespace $AB_NAMESPACE \
    --userId 'EYFVBTVD' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'F0go2Phv' \
    --namespace $AB_NAMESPACE \
    --userId '5BMXvPxj' \
    --responseBody 'true' \
    --body '{"updatedAt": "1990-12-07T00:00:00Z", "value": {"0wPWuUn6": {}, "hSdhsv4U": {}, "4ajnuRby": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '8c9ig5po' \
    --namespace $AB_NAMESPACE \
    --userId 'KP9HOm12' \
    --responseBody 'true' \
    --body '{"updatedAt": "1976-08-02T00:00:00Z", "value": {"g1lbc1ye": {}, "qWAqnrKb": {}, "3snbRTBV": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FwGlYHJj' \
    --limit '26' \
    --offset '45' \
    --tags '["kpipjcpC", "7onBbzLl", "abS41Xqa"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'f27HK6C6' \
    --body '{"keys": ["gbRNZe0p", "HYxPiTBM", "Y841ospF"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'mxF8N2H4' \
    --namespace $AB_NAMESPACE \
    --userId 'pRUjVkz3' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '2j6gucit' \
    --namespace $AB_NAMESPACE \
    --userId 'MIVQH6jm' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'FXaMxqRC' \
    --namespace $AB_NAMESPACE \
    --userId '6JZXZGvu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'n61TFeJ6' \
    --namespace $AB_NAMESPACE \
    --userId '9VHozhAD' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'BtGUSLvl' \
    --namespace $AB_NAMESPACE \
    --userId 'ADXqsANJ' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'b1TJO3wT' \
    --namespace $AB_NAMESPACE \
    --userId 'PiJqe5uf' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'mXXD0Mwv' \
    --namespace $AB_NAMESPACE \
    --userId 'Um12hxf6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE