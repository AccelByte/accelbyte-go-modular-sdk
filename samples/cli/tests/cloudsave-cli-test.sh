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
echo "1..42"

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
    --key 'sGFtV0Nm8TY0bxn8' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "xkO6przTAl7gUJKc", "updatedAt": "j2GTXd9DVODv4PMo", "value": {"KjttheydBp1pET5T": {}, "EzWU2HjwNuETCBW4": {}, "kk7PPN72g5QMIhZH": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'vi2XQuswNFMfcVKO' \
    --limit '66' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'swc91y8QO9R9s6H7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'uQnxD5ggyyJAitNl' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'qkifFVABDeQmIA3S' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '14n09lMWZGpqgkQq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["8uItECLUPzucxNrS", "u1zR19IwaUrrcb0e", "8Mn4KdKJ67avlOrm"], "user_id": "H4YPXIHas3U88sRz"}, {"keys": ["nmziS1UxMI8Bddiu", "yS3vmukOg6CVC98E", "vertumgeaIFPUl8s"], "user_id": "SSBug5qaXq2EFklW"}, {"keys": ["g5ECnLILedZ3Xqzc", "SPyTB4q2GuIUE0iB", "RNn8K5WgZtuOkYpE"], "user_id": "GSCHeOOyqgNOSdHe"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'v0BRpJIXaPeutV5m' \
    --namespace $AB_NAMESPACE \
    --userId 'hDYNInCn8rR63O4z' \
    --body '{"set_by": "AbU00HDnwS0mYLcU", "updatedAt": "3UhoqHJshFcMpe85", "value": {"fKraKMWApHHHxmrr": {}, "i0AZod95tNy5lJO7": {}, "h56uxjwyERddvbLF": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'BrXzYCS0RdF4O4OO' \
    --namespace $AB_NAMESPACE \
    --userId 'f9A3F2223YfWgRHK' \
    --body '{"set_by": "viD2voYu9gOAHH6C", "updatedAt": "jKpVRiLikAYwYfEc", "value": {"J5D879InrWpscjpu": {}, "qMG9mbImC7y8y0Zw": {}, "EgfswNZESYv8pj16": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'VcWqbCRyyVxRDUrO' \
    --limit '18' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'rK4LZn3wAcuOgNdH' \
    --namespace $AB_NAMESPACE \
    --userId '2yqEQIdpH69asMsX' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'RMozNrVf7wYqetrs' \
    --namespace $AB_NAMESPACE \
    --userId 'x9rSqsCjzmu27pPY' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'SJbRThhnYrnHx2Xa' \
    --namespace $AB_NAMESPACE \
    --userId 'aYWPTJAKM35xwCPS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'R51Y6iQwk1wgMjYk' \
    --namespace $AB_NAMESPACE \
    --userId 'TV7tpXtXEKOJCobD' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'SCbJmGxOHeKBoBoO' \
    --namespace $AB_NAMESPACE \
    --userId 'HBOVCpxiXRyVNnoa' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '7lvWKLXuFdxE9QH7' \
    --namespace $AB_NAMESPACE \
    --userId 'OPnkbfJpfyRdcB8E' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'zMK9nfgHFlcLVxwb' \
    --namespace $AB_NAMESPACE \
    --userId 'IKdcWw2RnwCGIMjX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'hAcz0eCBAbtgAvNe' \
    --namespace $AB_NAMESPACE \
    --userId '33w4vy0Sk2SlKLUg' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'aZfhoQtzYL4bT939' \
    --namespace $AB_NAMESPACE \
    --userId 'D4oQha5Bazr9ZavJ' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'ElruhZn9bDT3xL9w' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "nCjMujEwDTcNK3BY", "value": {"gLQggwqx8QI9jqM2": {}, "KmEYBdgy7UGTaUmw": {}, "N5Hkk3jdXI9K55Aw": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["BUud8aysmtgAJDc5", "6Rg38PTL0YAXHVUg", "2nzhKOZJ2D2Hg9HX"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'VRUk10vXbUo7jBLu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'dVOZVh5zxC1eUE2T' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'ZD1JOwVI3DFc0BLx' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '9pVTwPaSsfEXc0s5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'ut5eus0vaoImJd7X' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["k9v1nnhRGUPB6VlS", "gnxnlwjfzT15p96z", "lpLMSDYj7wq1vduP"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["jugu3GoHcPme8toH", "q9bUiZx9FVRiN1pM", "NquL8mjV2VdnGHwE"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'lIAU19C93zluTgEc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'I1bswHSDd4nDm1rC' \
    --namespace $AB_NAMESPACE \
    --userId 'esbYbGWx2OTSAzUB' \
    --body '{"updatedAt": "ObNvTO18BRtlEYge", "value": {"RnXY2RNjTXwIiC5T": {}, "5rwmRkaLFFVc1IGF": {}, "NWPi8RtcWuLJUCBG": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'F4jOU0FqTgWclcrj' \
    --namespace $AB_NAMESPACE \
    --userId '89cxPNIJ3wb2hZXI' \
    --body '{"updatedAt": "SvitaiAdIEglqLK1", "value": {"GCjOy6j6rxwRYF7A": {}, "32mqr31nwl20od1c": {}, "6XVbaB4AnJJkOTMA": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NWHl1Ug1LxoCefkA' \
    --limit '84' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 34 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 35 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '12J39Iq8Lu0SC1Py' \
    --body '{"keys": ["rGRYWopmCOThuO5k", "8QV5M5AQjBEFUP5G", "HmNw2bXpsaAfV9h8"]}' \
    > test.out 2>&1
eval_tap $? 35 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 36 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '96ODTEYgT92Gzgek' \
    --namespace $AB_NAMESPACE \
    --userId 'usbMXvF0u6UJ1tIB' \
    > test.out 2>&1
eval_tap $? 36 'GetPlayerRecordHandlerV1' test.out

#- 37 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'lrpwsOkWyubTdZSt' \
    --namespace $AB_NAMESPACE \
    --userId 'lgw7jvLapODitqu7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PutPlayerRecordHandlerV1' test.out

#- 38 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'srxy1BbNJeqaPhp4' \
    --namespace $AB_NAMESPACE \
    --userId 'oFBOomXrMqxfGlQf' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'PostPlayerRecordHandlerV1' test.out

#- 39 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'ZdU2rI86vGdKSCqv' \
    --namespace $AB_NAMESPACE \
    --userId 'zZ2LK4EvForBWuz8' \
    > test.out 2>&1
eval_tap $? 39 'DeletePlayerRecordHandlerV1' test.out

#- 40 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'Rj8b9cfitvYr2TTy' \
    --namespace $AB_NAMESPACE \
    --userId 'pB6Dlac6EST6rcRv' \
    > test.out 2>&1
eval_tap $? 40 'GetPlayerPublicRecordHandlerV1' test.out

#- 41 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'DryxrdDQDvIUnZT9' \
    --namespace $AB_NAMESPACE \
    --userId '5PUnBVTFRpd1vwKk' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'PutPlayerPublicRecordHandlerV1' test.out

#- 42 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'NJS8qSNRW3hTIkuR' \
    --namespace $AB_NAMESPACE \
    --userId 'IubpaPauuqUAqpd6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 42 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE