#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..40"

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

#- 2 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'dWuxRSmP' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "kYE6fET0", "updatedAt": "Tgx5yhVo", "value": {"DeKiUfeL": {}, "6Z5fsXAK": {}, "GXeW8a81": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'Ab68wZMY' \
    --limit '57' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'xB5Wq1kh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'OtyYBcss' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '00OnJeB0' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'VOpQp62q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["rC9Zfo3C", "3IVj6Qgd", "AYI3JFWy"], "user_id": "tIoQhLIw"}, {"keys": ["KEmTsT9q", "YAlG1wtn", "d0z07oyh"], "user_id": "76eniWQj"}, {"keys": ["oZqKUGPX", "x9NazV1S", "PtsSfsJK"], "user_id": "TocB5Ltg"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'pPUvEYtV' \
    --namespace $AB_NAMESPACE \
    --userId 'WikRfcyL' \
    --body '{"set_by": "q4TGNZkL", "updatedAt": "lzMiMOng", "value": {"yL8IIZHh": {}, "oE2QAqXW": {}, "r7LZ3xNe": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'z8007PBh' \
    --namespace $AB_NAMESPACE \
    --userId '5fqNRqK5' \
    --body '{"set_by": "zmOJgYvL", "updatedAt": "s0HrB5SU", "value": {"lYQ3KtOM": {}, "IPyCfK8I": {}, "UwXldkvL": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'gkcXsEoQ' \
    --limit '25' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'zNbClG9Q' \
    --namespace $AB_NAMESPACE \
    --userId 'Lp3ixvxy' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'wASy8rcJ' \
    --namespace $AB_NAMESPACE \
    --userId '8BgNgXxW' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '83Bcoxcx' \
    --namespace $AB_NAMESPACE \
    --userId 'iyEoM9Cr' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'gPG62Vf4' \
    --namespace $AB_NAMESPACE \
    --userId 'PeJkWml8' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'jrA6vktP' \
    --namespace $AB_NAMESPACE \
    --userId 'cO5nkLH9' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '1E1mPibG' \
    --namespace $AB_NAMESPACE \
    --userId 'gRLCbmfl' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'Bx9mXWDH' \
    --namespace $AB_NAMESPACE \
    --userId 'hB8FSvH1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'U5BTuWOQ' \
    --namespace $AB_NAMESPACE \
    --userId 'yTUYrxCH' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key '0lsECLFg' \
    --namespace $AB_NAMESPACE \
    --userId 'LVy5jYt6' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'WKUGqMOj' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "hj7Ki9Jl", "value": {"TJjzk7D8": {}, "DS2uZZ0M": {}, "wqTzqHgl": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["KKrozh3w", "tPzcwYmy", "FG5pb5Kp"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'ALXPdG3d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key '5HctA2Nu' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'qINdYUCN' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'pcwpGDqo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '559MuP1K' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["akAMunKF", "V99LxbjQ", "vu7aXY7A"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["nWrzC9xF", "Sx944nn8", "x2eJEnaT"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'hCn0UTpD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '46TKBHwU' \
    --namespace $AB_NAMESPACE \
    --userId 'OpmYr7tp' \
    --body '{"updatedAt": "PmkgDmhk", "value": {"ecZVMjXn": {}, "0wDM6xW3": {}, "zqbKu10z": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'zIacoRVT' \
    --namespace $AB_NAMESPACE \
    --userId 'Uxky8KVy' \
    --body '{"updatedAt": "Rc939JHY", "value": {"GNOTnFVd": {}, "25sLZjJ6": {}, "m2CaA9YQ": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '84hmEJdj' \
    --namespace $AB_NAMESPACE \
    --userId '7hDRuLtF' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerRecordHandlerV1' test.out

#- 35 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'APujpAAw' \
    --namespace $AB_NAMESPACE \
    --userId 'UDUNsFGN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 35 'PutPlayerRecordHandlerV1' test.out

#- 36 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'D4qmYlo7' \
    --namespace $AB_NAMESPACE \
    --userId 'D4KVr2yV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 36 'PostPlayerRecordHandlerV1' test.out

#- 37 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'hE8iQb0R' \
    --namespace $AB_NAMESPACE \
    --userId '0FLg7uXg' \
    > test.out 2>&1
eval_tap $? 37 'DeletePlayerRecordHandlerV1' test.out

#- 38 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'kef3SA4H' \
    --namespace $AB_NAMESPACE \
    --userId 'F5NlXSpC' \
    > test.out 2>&1
eval_tap $? 38 'GetPlayerPublicRecordHandlerV1' test.out

#- 39 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'YrXmPiu2' \
    --namespace $AB_NAMESPACE \
    --userId '34OQGlqX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'PutPlayerPublicRecordHandlerV1' test.out

#- 40 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '9tuHt8FL' \
    --namespace $AB_NAMESPACE \
    --userId 'LsNai4L3' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE