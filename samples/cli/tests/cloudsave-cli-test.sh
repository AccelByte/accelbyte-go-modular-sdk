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
    --limit '21' \
    --offset '54' \
    --query 'Gnvv1I17' \
    --tags '["TLQLUdxR", "qMezBhcv", "kjhNJ86y"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["UVSqmQ0p", "A1CEt1f7", "QopXKJqR"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'ySumWbjy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'PkMjTS9M' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'nujspFUx' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'u0rKic8Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'hPRY0nYn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '23' \
    --query 'yO3tUAjm' \
    --tags '["WMOLlj9O", "NENYqT8F", "PSeMdTPC"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "GqcoTpvG", "key": "AA8ww4QY", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1984-06-04T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'nSfgEfJI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'U8Xx2ctS' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "hMLElZvt", "file_location": "gO6YjAZz"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'oo16JO9Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '9CRIEh9A' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["iGep836n", "FamFWZRm", "H65QEMID"], "ttl_config": {"action": "DELETE", "expires_at": "1987-10-14T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'ERXkF22m' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "8yO7uJct"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key '5kZx5vN3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'vx48l3wF' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["kwdCY7h6", "nXPsHIza", "9Odymftd"], "ttl_config": {"action": "DELETE", "expires_at": "1986-03-21T00:00:00Z"}, "updatedAt": "1983-08-30T00:00:00Z", "value": {"DgkYJLgg": {}, "hQc6NLmR": {}, "R4KTAmZP": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key '8ABTXteV' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["UgP0gjV8", "Plf4mwQN", "5blcPQol"], "ttl_config": {"action": "DELETE", "expires_at": "1995-04-29T00:00:00Z"}, "updatedAt": "1985-07-16T00:00:00Z", "value": {"spxF2Q8R": {}, "D63WJvem": {}, "LPohT3Hv": {}}}' \
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
    --body '{"appConfig": {"appName": "joN6Zoxg"}, "customConfig": {"GRPCAddress": "rdRPUVMo"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "7s4qw5X3"}, "customConfig": {"GRPCAddress": "yyLFv5ud"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'Hz0r5cUn' \
    --tags '["gyuTAWl8", "ZTMsnTrP", "ZD7eGaaF"]' \
    --limit '97' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'zRV8dOwR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'xLwrCEsi' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'nRfpVbJc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'UiHgzcdR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'AtRtA3Ti' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "7KqqR5MC"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'eHQ4Vgu6' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'l9HEnStx' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XNiKXD3t", "lVAFHfh8", "iYtuCmA5"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["5DYSaTcS", "ojvbym5F", "PZg5L0l5"], "user_id": "YVNwALG7"}, {"keys": ["C9ggqIEJ", "yxCFcN8y", "omUSnyUj"], "user_id": "IqhB6xa6"}, {"keys": ["yPXLY2LP", "ch2999H3", "eV6mPUYh"], "user_id": "p4yHHxqx"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'Z5Ejn8nf' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "g8sJ7DXQ", "value": {"wGGmbcnT": {}, "t7cyRZC5": {}, "5pEsuLsk": {}}}, {"user_id": "pwtnAA51", "value": {"BShRL8Ih": {}, "q2VygGtp": {}, "220V0U6F": {}}}, {"user_id": "M9bM3k40", "value": {"l5meHlqS": {}, "fZ8R7W5X": {}, "qXfbh6tI": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'XXphp6J5' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TocFEG0B", "8OEmA5gn", "GPSBGjh8"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LTC6L0eT' \
    --limit '67' \
    --offset '75' \
    --query 'VCQtE0Sr' \
    --tags '["cCueXWGd", "M7A5y3xa", "jJdOJjg1"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'R4qt9ZcF' \
    --body '{"keys": ["aoY9Mj7W", "Wp0ZDNkt", "2LDy0MH7"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'Y0cgOVnq' \
    --namespace $AB_NAMESPACE \
    --userId 'jJPY27nL' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'W1mVTYPd' \
    --namespace $AB_NAMESPACE \
    --userId '8T0qMFEp' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'WuTPzP86' \
    --namespace $AB_NAMESPACE \
    --userId 'S74MVPqS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key '3QTKQAwI' \
    --namespace $AB_NAMESPACE \
    --userId 'YE2J122A' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XmHzIFWN' \
    --limit '77' \
    --offset '56' \
    --query 'UbhK9z6w' \
    --tags '["TQFDonHr", "MUZBWk9q", "y7I3PnJv"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'A3t494DK' \
    --body '{"file_type": "A7NCkCOz", "is_public": false, "key": "kZRNDpjh", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'uodivT0r' \
    --namespace $AB_NAMESPACE \
    --userId 'EUP2o9bM' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'w8NTntIm' \
    --namespace $AB_NAMESPACE \
    --userId 'F1088TbI' \
    --body '{"content_type": "zd6qJ8iv", "file_location": "aTHTnVzx"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'jnLnLvK6' \
    --namespace $AB_NAMESPACE \
    --userId '8e2EQuU3' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'XhYSklzE' \
    --namespace $AB_NAMESPACE \
    --userId 'urDH1tAH' \
    --body '{"is_public": false, "set_by": "CLIENT", "tags": ["mBZtzcXW", "NAsFWdz6", "wJVRR4Ne"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'reLOYxjk' \
    --namespace $AB_NAMESPACE \
    --userId 'eOqeveT0' \
    --body '{"file_type": "KkMbgKCz"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'usjKaAil' \
    --namespace $AB_NAMESPACE \
    --userId 'hPc9UEE8' \
    --responseBody 'false' \
    --body '{"tags": ["qNtXPDEc", "cihelQDm", "R0yOLQdK"], "updatedAt": "1992-03-25T00:00:00Z", "value": {"Hidf0J6u": {}, "FzXXZwId": {}, "2p8dG8Au": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'dItFYGm6' \
    --namespace $AB_NAMESPACE \
    --userId 'U6oFtkae' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["UMB1iYP2", "CY1YLlHC", "ZpxeZLA4"], "ttl_config": {"action": "DELETE", "expires_at": "1991-09-03T00:00:00Z"}, "updatedAt": "1985-12-23T00:00:00Z", "value": {"ft7MS6tk": {}, "e9TqcSuf": {}, "xLBDFWWB": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '4z4jEMZ0' \
    --namespace $AB_NAMESPACE \
    --userId 'd2JkHw6B' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["zPJFQxfC", "3Fay4srK", "QSDoBg05"], "ttl_config": {"action": "DELETE", "expires_at": "1981-06-03T00:00:00Z"}, "updatedAt": "1997-02-23T00:00:00Z", "value": {"dhYdGs8E": {}, "kQEi309i": {}, "erZhhlOk": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId '1zXvtIDg' \
    --limit '62' \
    --offset '8' \
    --query 'IyIetiBS' \
    --tags '["EBVLjp9v", "KO0nzA9K", "35bPGx88"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KcPBwV7Y' \
    --body '{"data": [{"key": "n6ZJmHIF", "value": {"luYzMltP": {}, "N5vm8klA": {}, "f9N1qIVN": {}}}, {"key": "eB5M08c5", "value": {"3ZZtqHVh": {}, "rjGvycl8": {}, "Z4kCCMwF": {}}}, {"key": "k6UazPSP", "value": {"BPOONTlY": {}, "tk7X2akg": {}, "AIXhSXgP": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HHHWtzmY' \
    --body '{"keys": ["AecqOxgu", "ZSwxyqHN", "eEOI9XXP"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'ibYDDgnQ' \
    --namespace $AB_NAMESPACE \
    --userId 'eGmX8VaQ' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'CQfVkY32' \
    --namespace $AB_NAMESPACE \
    --userId 'nTt4H0M7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'pxnYvtMZ' \
    --namespace $AB_NAMESPACE \
    --userId 'mlSgAn2S' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'BIuvFVsT' \
    --namespace $AB_NAMESPACE \
    --userId '0GfzwuLs' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '7EL6nv54' \
    --namespace $AB_NAMESPACE \
    --userId 'alCoSYvM' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '0UvxgC8m' \
    --namespace $AB_NAMESPACE \
    --userId 'dZod0WsA' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'PrnVRBU7' \
    --namespace $AB_NAMESPACE \
    --userId 'eVPzDo3B' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'BNCXS8IA' \
    --namespace $AB_NAMESPACE \
    --userId 'locyYoih' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'gUHVGaqQ' \
    --namespace $AB_NAMESPACE \
    --userId 'aaRTk2iB' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '36' \
    --query 'hnJPCU4g' \
    --tags '["3P09xVoO", "iPZVWfhq", "k5qMuZ0Y"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "Y4v1Dmyk", "key": "wHpOJa7K"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["VkSWSTxb", "HKzFmDTN", "SqkIOAPM"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'bdn33Jkf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'as3Bxnuh' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "0WBuXdln", "file_location": "cU4ImUT7"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key '5PuxGFIh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'cOwBld1i' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "FD48uCO0"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'R8Vd9YJj' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1994-03-21T00:00:00Z", "value": {"j26eu4yj": {}, "JjCs5pmn": {}, "6wbYNsjH": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Gg8VmYrT", "8B7ScuUF", "iJyEu9Q2"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'goBIshSI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'z6yBYRbj' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'Dumn1Viy' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'OpUGtrvP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'QSkuemza' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["qq2gzvvE", "ZYoCOoDB", "sAgKUFle"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'RR8qhAaC' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["q6VtST0L", "U4kBxFCO", "1jCm3esz"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '55' \
    --query 'TM1lV4Vw' \
    --tags '["893YiSYP", "pZ9V8wAL", "5nEGLt8n"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["8dFO4WeD", "iny4l8lZ", "FC5Dyg3W"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '45' \
    --tags '["k5WyGXYg", "zKnvmlqj", "331qnQSE"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["bHgt0fr3", "cHJtgnDl", "T5JGXL3T"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'hcekJhHB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '9OgkcYkl' \
    --body '{"file_type": "KK0tbjrt", "is_public": true, "key": "yJpEzDDr"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'lL7zmYIq' \
    --limit '1' \
    --offset '57' \
    --tags '["2YnGQRVc", "INHLf0Nn", "HeQ7o3BB"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NgZ2QE9J' \
    --body '{"keys": ["yoS2L0bg", "nma1jxBX", "rYEBJYoR"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'fMIdmDI4' \
    --namespace $AB_NAMESPACE \
    --userId 'yZgsPHVr' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'XQjmWWwI' \
    --namespace $AB_NAMESPACE \
    --userId 'LHz8Og1L' \
    --body '{"content_type": "SDcGUV3k", "file_location": "7amU9mIq"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'uIB6QlcW' \
    --namespace $AB_NAMESPACE \
    --userId 'DOH5q0cP' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'Rjz88B4d' \
    --namespace $AB_NAMESPACE \
    --userId 'fuTbeAiD' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key '7Gv1EpZy' \
    --namespace $AB_NAMESPACE \
    --userId 'sHISuRGy' \
    --body '{"file_type": "nHmxKilh"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'SANtP6XV' \
    --namespace $AB_NAMESPACE \
    --userId 'eEbvJp4r' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'XwFC8UkM' \
    --namespace $AB_NAMESPACE \
    --userId 'E8EvbpGr' \
    --responseBody 'false' \
    --body '{"updatedAt": "1973-04-26T00:00:00Z", "value": {"aA36Olwd": {}, "3OUOI3Ok": {}, "E3E5Umot": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'oY4HD3hc' \
    --namespace $AB_NAMESPACE \
    --userId 'OnYv5UxK' \
    --responseBody 'false' \
    --body '{"updatedAt": "1978-01-13T00:00:00Z", "value": {"Mky4BjsO": {}, "d4h0IX8E": {}, "T7VC0lxD": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '8Ul4oG6W' \
    --limit '75' \
    --offset '91' \
    --tags '["wE0TMB2Z", "K7Kca6Kt", "sXbWoaoN"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vnlhfT4M' \
    --body '{"keys": ["jK8WKtgF", "cVIypg4Y", "ymsyTrLT"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'jzvyPZGI' \
    --namespace $AB_NAMESPACE \
    --userId 'ykF01yqe' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'RM52JURh' \
    --namespace $AB_NAMESPACE \
    --userId 'r08AkKJA' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'ETx4V1Ys' \
    --namespace $AB_NAMESPACE \
    --userId 'R5gUmP7O' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'Cm4JOQra' \
    --namespace $AB_NAMESPACE \
    --userId 'ta8cgDmn' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '3r7stvFz' \
    --namespace $AB_NAMESPACE \
    --userId '3n8FfcZ3' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'L01TLjAV' \
    --namespace $AB_NAMESPACE \
    --userId 'gvpZRLwV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'p4BEfxTE' \
    --namespace $AB_NAMESPACE \
    --userId 'yd5WRyxt' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE