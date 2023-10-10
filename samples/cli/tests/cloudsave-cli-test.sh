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
echo "1..94"

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
    --limit '47' \
    --offset '93' \
    --query 'KClJKS47' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["R1mhYNOJ", "lO4riXWD", "PYBfINdF"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'Iis1YwCI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'SMIF1nGk' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'HTkE56Cl' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'AqiBRK2o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '16' \
    --query 'nRnFBtOH' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "gjyuT3jn", "key": "4Txp4wO9", "set_by": "lsKPGjnM"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'SZaejIQI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'LXcFRdOs' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "EH084xEx", "file_location": "lZy8dGoL"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'oDdOWLnm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'Nhr9ow5K' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "ghs26JxQ"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'fb81rugz' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "y6ohmprW"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'zY9ZzXN1' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "vDDqMxKJ", "value": {"7SwRdHdm": {}, "lQguB3mp": {}, "cI8BB16H": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'iBJThl6X' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "LffTlvTV", "updatedAt": "O0rdP3nZ", "value": {"htH4GAP6": {}, "ss3mIPco": {}, "FP9WECx0": {}}}' \
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
    --body '{"appConfig": {"appName": "z1qhwDy5"}, "customConfig": {"GRPCAddress": "yLm1S2hu"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "gvhX84ZA"}, "customConfig": {"GRPCAddress": "Sv1eNNVE"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'D10cDmT3' \
    --limit '59' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'UQ76o69h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key '8mUK1eoA' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'pShFcuB5' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'Pjm6ourU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'wrixc6Vv' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["pVDixQrT", "Mc9T2dh6", "XwByC2ND"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["74uPvPoB", "fyWwzQm3", "W39sb3pr"], "user_id": "EpDYojHG"}, {"keys": ["9uq1fSUp", "CVLIZUfV", "hRjaH1HT"], "user_id": "6UssWeKC"}, {"keys": ["W3fPaayR", "XnzmSnWa", "ixudOqdz"], "user_id": "1TYyaC2g"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '5R7mFmIa' \
    --limit '86' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GpxQ9tif' \
    --body '{"keys": ["0MtExCAd", "lFnUJnsL", "6CWDPpp7"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'OLuAXBJv' \
    --namespace $AB_NAMESPACE \
    --userId 'Uhprfwyo' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'emBEBnl8' \
    --namespace $AB_NAMESPACE \
    --userId 'PsiClZvD' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'X7XfHdSx' \
    --namespace $AB_NAMESPACE \
    --userId 'jA8d8ZbR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'dbkJJ1Ro' \
    --namespace $AB_NAMESPACE \
    --userId 'qVqQ2Lud' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qefTYhzW' \
    --limit '86' \
    --offset '72' \
    --query 'JJGipMxL' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vTpcRUTS' \
    --body '{"file_type": "hAM9PBSp", "is_public": false, "key": "Ej1F4vKF", "set_by": "9tIEsBRH"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'AkhgaCjS' \
    --namespace $AB_NAMESPACE \
    --userId 'jaT1jV8D' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'G0vxRaO6' \
    --namespace $AB_NAMESPACE \
    --userId 'fjtVdDlP' \
    --body '{"content_type": "Kb3yYEbV", "file_location": "v8kzM6ei"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'q3KFtzWr' \
    --namespace $AB_NAMESPACE \
    --userId 'BajIE8rT' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'pjEjwI7G' \
    --namespace $AB_NAMESPACE \
    --userId 'ttwR7ABq' \
    --body '{"is_public": false, "set_by": "jK4NaTVs"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '83KwIhsG' \
    --namespace $AB_NAMESPACE \
    --userId 'M2I1g5np' \
    --body '{"file_type": "CrnfA7aj"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '7Wmqmc7z' \
    --namespace $AB_NAMESPACE \
    --userId 'sCtzF0dv' \
    --body '{"updatedAt": "8HGbeLPk", "value": {"E5SgSEqB": {}, "85RcHrB8": {}, "51KPEO7o": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'FyCB7uo8' \
    --namespace $AB_NAMESPACE \
    --userId 'tck4DjzB' \
    --body '{"set_by": "yZqAYqDJ", "updatedAt": "O4sXHXnn", "value": {"u1p1pBFn": {}, "NlKrnVcp": {}, "u6coJaF3": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'q8KrPCfg' \
    --namespace $AB_NAMESPACE \
    --userId 'RNWp7j4q' \
    --body '{"set_by": "VpFm54k8", "updatedAt": "3k4UbSGb", "value": {"rZjkyFa2": {}, "yd5Arx5j": {}, "uiDilv33": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'eG3TzFlY' \
    --limit '6' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '6drzp0fp' \
    --namespace $AB_NAMESPACE \
    --userId 'guqXnYOz' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'Gt0lVyar' \
    --namespace $AB_NAMESPACE \
    --userId 'zGFLvyEY' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'DazS0ia1' \
    --namespace $AB_NAMESPACE \
    --userId 'D1RiyMt1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'dDmjdmL9' \
    --namespace $AB_NAMESPACE \
    --userId 's7caHBHi' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'JVvLq6fq' \
    --namespace $AB_NAMESPACE \
    --userId 'j983lxhR' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'NerHHOlg' \
    --namespace $AB_NAMESPACE \
    --userId 'NNdpX2aH' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'A3H8bNW5' \
    --namespace $AB_NAMESPACE \
    --userId 'SdNwuehp' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'RwYG1teQ' \
    --namespace $AB_NAMESPACE \
    --userId 'JVlLfnxX' \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'JWpIc8Em' \
    --namespace $AB_NAMESPACE \
    --userId 'LpVRu21g' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '65' \
    --query '6OKXVDEC' \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "GTYchaxa", "key": "7mAHhl8D"}' \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["TPh7E8Dg", "qsOwHzPA", "fjQOHAND"]}' \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'OPUzPy3C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'hjWISmDI' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "9nG4sh1l", "file_location": "AcVFp7yK"}' \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'F1FI8Z9o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'sqYIL19w' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "1SXvEk4m"}' \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'nlPIFDiN' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "5NiC1OLV", "value": {"r2iFpcC3": {}, "F5wtxeh2": {}, "7Px1pxNb": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["4f4t1KrN", "frxxApex", "et1JXoaC"]}' \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'dQz9uFBU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'mzgJNe27' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'd0x5p6N5' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '7Dj35f9P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'AGBmaR4M' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["o4V5MEhT", "mA7ywfty", "ohPJVgUZ"]}' \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'ZM1bLr2C' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["cCjVEYDD", "c3xcXk3h", "qylXPM0W"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '29' \
    --query 'IoOD78Fa' \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["2zcOu0KG", "Lis5vSy3", "oCbWeAxE"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["PnKUIzdN", "42Q3UpQt", "xzEt4ZCR"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'rmBuyyrf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rK67FLlu' \
    --body '{"file_type": "KetgQ5Vl", "is_public": true, "key": "QZyb54wm"}' \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '61jyOR88' \
    --limit '15' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UpduSVMH' \
    --body '{"keys": ["67eBu6kx", "EWRXCWXd", "tdjqMk4E"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key '9BY8Ubbx' \
    --namespace $AB_NAMESPACE \
    --userId 'pwptVuyx' \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'YmFxQlPX' \
    --namespace $AB_NAMESPACE \
    --userId 'MsqIgxp0' \
    --body '{"content_type": "hyNyxJFq", "file_location": "PXADgMxp"}' \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'RNaDwfmM' \
    --namespace $AB_NAMESPACE \
    --userId 'aEgJJPJn' \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'ZpR8X90y' \
    --namespace $AB_NAMESPACE \
    --userId 'jXdhgNOz' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'lGT4fVal' \
    --namespace $AB_NAMESPACE \
    --userId 'wjCb8jwY' \
    --body '{"file_type": "Vx3WmlPW"}' \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'kPurRK8o' \
    --namespace $AB_NAMESPACE \
    --userId 'ae2neNqF' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'JHZoOwl6' \
    --namespace $AB_NAMESPACE \
    --userId 'k4kgYmtX' \
    --body '{"updatedAt": "7dqzSlPQ", "value": {"wTIqlqgH": {}, "7IyUbn8K": {}, "9hVMdHN5": {}}}' \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'r311wdic' \
    --namespace $AB_NAMESPACE \
    --userId 'bN4E9KUP' \
    --body '{"updatedAt": "7DdsUlof", "value": {"HCM3x37J": {}, "BWhplcZM": {}, "rhmIkUWH": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'h0qmVn2d' \
    --limit '84' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dMkKb4NY' \
    --body '{"keys": ["9xZFkFra", "YeeOp0Oj", "6oubHcUL"]}' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'baGtYnBI' \
    --namespace $AB_NAMESPACE \
    --userId 'meMkOEeO' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'EttFcPhj' \
    --namespace $AB_NAMESPACE \
    --userId 'FUB0vpPH' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'cofz1NMK' \
    --namespace $AB_NAMESPACE \
    --userId 'Itn6y1pB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'ntY4yGC4' \
    --namespace $AB_NAMESPACE \
    --userId 'zetAFSJ8' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'OfNKHmKI' \
    --namespace $AB_NAMESPACE \
    --userId 'UzYRqDMD' \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key '2sNdsSeA' \
    --namespace $AB_NAMESPACE \
    --userId 'h6RgK4UR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'yADr8K7o' \
    --namespace $AB_NAMESPACE \
    --userId '68FXAgYG' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE