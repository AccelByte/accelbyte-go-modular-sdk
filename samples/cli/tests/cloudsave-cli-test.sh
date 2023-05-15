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
    --key 'sSVwEMDRygzyZwCJ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "O1LOjdRUaJbyi8Yd", "updatedAt": "Co0zJmwqVg26G0rB", "value": {"FR40kPwMlbFgEeWj": {}, "3XgkrsBDPpMXGIhc": {}, "NyjFELVZ19sNGIJw": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '5bIfGRTXexbRcShY' \
    --limit '36' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'NnGvq6zmQNjLx2cc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'Bf7bZlUSv46JrCEu' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'NlmmEpHyN7kYOJPY' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'SZGe61fHmWs4xmFK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["rmgVZj6oEJOhw54h", "Qf0fD7R4xOQhkhOU", "UTgVfD7FdoefUjVO"], "user_id": "M0mVBrWg1WxApIX8"}, {"keys": ["4GvCXTG5qHDrYHds", "Gmw5DPPlOvyYcWRq", "jfsmuG0atpAzcLyW"], "user_id": "XylTTLpSotj4eP4K"}, {"keys": ["g1D50yuvETbRPyJS", "z8jOz9RZQO7DfIYm", "tOSJ0FNwxUyX1gfY"], "user_id": "k7hrvzraeiIJibcn"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'RpCencbbz0BQlXE3' \
    --namespace $AB_NAMESPACE \
    --userId 'dvmouUxoPFkRRxbt' \
    --body '{"set_by": "BaBlZSj0YCKYQhFL", "updatedAt": "KjUoP9c9KCyVEdSA", "value": {"kNYhvmFQfl6SkjK6": {}, "IoiBWSzueRqtkOZ7": {}, "yuqv86Ho1DQx2qpV": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'o7XWOq7c2ZUsvM9h' \
    --namespace $AB_NAMESPACE \
    --userId 't9KOq0lg4R0bGQdJ' \
    --body '{"set_by": "ANWcmTvSh7pYsVEY", "updatedAt": "cBZ2DMq29mrtNZq7", "value": {"ygbxeQ6maXkytWCE": {}, "4VJZT5p89mWb7GLn": {}, "TOQ1DJwc8TJOYWSr": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'cwXQqvI4FwFu4FUh' \
    --limit '92' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'tVLfnTypjsQiEcpY' \
    --namespace $AB_NAMESPACE \
    --userId 'PjCRgDAbjW2iDeas' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'AOMqo6nOyOQi4H3k' \
    --namespace $AB_NAMESPACE \
    --userId 'S6WiOZmxQilC4fWk' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '93BVb2oKorfhkHu3' \
    --namespace $AB_NAMESPACE \
    --userId 'Q44I2aX9s3zhRzgJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'rtXkpu6htdEpu6K6' \
    --namespace $AB_NAMESPACE \
    --userId 'poWiDx37O3WyDiK4' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'qF0vLbnfs6Ay7gGA' \
    --namespace $AB_NAMESPACE \
    --userId '9O4M1Ys3Pg0z9Gi0' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '4YcAN7CxgsglfaZW' \
    --namespace $AB_NAMESPACE \
    --userId 'U3NNjfQ5ONcxEu8B' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'o8t11K562U24Vd24' \
    --namespace $AB_NAMESPACE \
    --userId 'a3M9O0pMtretCPW3' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'U7kvNo8DVB2Bpzaq' \
    --namespace $AB_NAMESPACE \
    --userId 'VLmrWInVMiJUmLVI' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key '64DXLGNGheL8hlvo' \
    --namespace $AB_NAMESPACE \
    --userId 'RuvKcE1Dc8yUc4T8' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'ESVtjHrsbAEAlSD1' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "Gi1MMuJbGL8WWjej", "value": {"28PbCF6NIzpCT28A": {}, "JJYVa5g6ngZM6m9W": {}, "iw47OPe6bP7uw8cp": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["uOG6ay4Db2UoncJS", "FKd6O9XbpJHLlMmx", "rC4ncCid7nmGZsFO"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'GFpajPoxR8I7lcXW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'uYHiwYyonK0DQCnV' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'SOg58UYM3I6dSQPm' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'JUPq5F1udBnIc9UJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'gXacVLiRjTaMID7s' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["SWUyQ7LPctt1i3gN", "bc8RD7t3HgesZUdY", "d86Jl6S80UOWhiJZ"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ignIJLiuTRfIKnf7", "Ffw4FxEHyHK2QT5i", "u6Ih9DkXs4dLGHuT"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'aRD3zc7R1V11zS09' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'JiaTWd2ZbGbFg5X5' \
    --namespace $AB_NAMESPACE \
    --userId 'fO9LfpDTQCr7HPCn' \
    --body '{"updatedAt": "sHbz1bEldU0x8lO7", "value": {"nPmKz0qnNtCCjqUx": {}, "jZBorx7CpjVMROX5": {}, "dwviEBeVCx3lIKp1": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '5L1PiS3xbIGGDUAi' \
    --namespace $AB_NAMESPACE \
    --userId 'EAOn46eQDDPI68dU' \
    --body '{"updatedAt": "QuNYtxdaiihChBQl", "value": {"F1stDfMHQLZ8R5AN": {}, "07XdXfNxSYS92Gmf": {}, "hT8McHmfxR19pm4t": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'Cz4M6HemRTHPsF6p' \
    --namespace $AB_NAMESPACE \
    --userId 'valoTptPv1zRSao0' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerRecordHandlerV1' test.out

#- 35 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'NSLtQnUxz637iA3x' \
    --namespace $AB_NAMESPACE \
    --userId 'LYWO1ubFBq4qufHX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 35 'PutPlayerRecordHandlerV1' test.out

#- 36 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'vhYh0FbM8j99nAcB' \
    --namespace $AB_NAMESPACE \
    --userId 'lReqrSxstu1jTYxo' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 36 'PostPlayerRecordHandlerV1' test.out

#- 37 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'CchEvgnQBOPm82LO' \
    --namespace $AB_NAMESPACE \
    --userId '45DKFmjHlXApN0BG' \
    > test.out 2>&1
eval_tap $? 37 'DeletePlayerRecordHandlerV1' test.out

#- 38 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'JDMun9YwT266pdMv' \
    --namespace $AB_NAMESPACE \
    --userId 'jBXYbJHMYNRoRQxx' \
    > test.out 2>&1
eval_tap $? 38 'GetPlayerPublicRecordHandlerV1' test.out

#- 39 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'Pqg55RMc5dHt6lcd' \
    --namespace $AB_NAMESPACE \
    --userId 'P6yUtpjpfp7ts45k' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'PutPlayerPublicRecordHandlerV1' test.out

#- 40 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'NVY68m0wQX0k8vyZ' \
    --namespace $AB_NAMESPACE \
    --userId 'oVuIEIfRRuPltXnz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE