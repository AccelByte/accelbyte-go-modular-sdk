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
echo "1..61"

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
    --limit '2' \
    --offset '9' \
    --query 'CapLF0mqyrhCU0n0' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["t3yjoNggdNTo92cq", "DCBq3oxiaH1jEM34", "L6EJ56qxR4OhglgU"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'UqPCDIK427izADdx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'AwuQQSQUF25PosCg' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'sJlb2xhx2m0pdsKO' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 's8tBeq40KnawdjvN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'R8zikNhCrPy9xbyk' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "s5X1zFtQ9ZFVLC06", "value": {"ZVDoSD8f9umzCYXw": {}, "rCfi8R16px4qJUBS": {}, "zpCOxfy2Oz3Iou2a": {}}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 9 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'kviwGPVbZt2akVTy' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "RLapFTp0l288k7JL", "updatedAt": "r0XPG01IGEo43VhL", "value": {"HCfZCZ5tZe3a9KG8": {}, "diq8nKx9Rmu9qAeL": {}, "RDHSt9HPrJ5XIADr": {}}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 10 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetPluginConfig' test.out

#- 11 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "2Bovs2FzsG4dqoC9"}, "customConfig": {"GRPCAddress": "MYqcYufwFAVxe9aS"}, "customFunction": {"afterBulkReadAdminGameRecord": true, "afterBulkReadAdminPlayerRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadAdminGameRecord": true, "afterReadAdminPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 11 'CreatePluginConfig' test.out

#- 12 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeletePluginConfig' test.out

#- 13 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "jBxcWv6q7lh4gOsD"}, "customConfig": {"GRPCAddress": "0EFOwSfpAk5xrpNn"}, "customFunction": {"afterBulkReadAdminGameRecord": true, "afterBulkReadAdminPlayerRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadAdminGameRecord": true, "afterReadAdminPlayerRecord": false, "afterReadGameRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePluginConfig' test.out

#- 14 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'kQ9WaHI066McIMWN' \
    --limit '44' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 14 'ListGameRecordsHandlerV1' test.out

#- 15 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'QYfPsetfWY31mYbm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetGameRecordHandlerV1' test.out

#- 16 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'C6e9YVrtW0RgzlVM' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutGameRecordHandlerV1' test.out

#- 17 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'tTK12atnCbkVSnF4' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPostGameRecordHandlerV1' test.out

#- 18 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'mtSGzoGRSYTSowLY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteGameRecordHandlerV1' test.out

#- 19 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'pxVRWtrOjgNZXQiE' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xf909ojrwFZDpgrM", "xqihdhk4Bk2iMSFb", "hVv2TGUrxeZVqT6j"]}' \
    > test.out 2>&1
eval_tap $? 19 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 20 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["IIqwiF2qhbSopn2P", "TGYK5DU5mxbTRJ7p", "NV4V61t2N5SnfJVm"], "user_id": "iK8NbR9VRJ47mhof"}, {"keys": ["Tjpf3dYORasAaiAT", "ZDcr44fe4ypLrx8R", "C7SAy07Euiklf12Q"], "user_id": "kaym3uop0MZ9HpJv"}, {"keys": ["wloM6CBQqf14MmOo", "ep5ihUjMZNpyqNBF", "HUGaJZba8dnXZYb5"], "user_id": "D8CdcerttVAwykdx"}]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 21 ListPlayerRecordHandlerV1
eval_tap 0 21 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 22 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KeKOhbRKgBHaf8on' \
    --limit '3' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 22 'AdminListAdminUserRecordsV1' test.out

#- 23 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '5CmNVWZUXEbfhOuE' \
    --body '{"keys": ["HJen0eqWXsx0SjXh", "wP4CkYFn5adHMpZh", "1ic5vtxlt5qNNOeq"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 24 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'Gj3qN8uTGDH4EE2n' \
    --namespace $AB_NAMESPACE \
    --userId 'BVkMuJoLKYTE2u9E' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetAdminPlayerRecordV1' test.out

#- 25 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'WJvmddZaQ9mUKlcq' \
    --namespace $AB_NAMESPACE \
    --userId 'ujCBiE0pEHyfIygu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutAdminPlayerRecordV1' test.out

#- 26 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key '3RhrlBUCDmtjnaYM' \
    --namespace $AB_NAMESPACE \
    --userId 'yHOk5NYNpAJT4SbX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostPlayerAdminRecordV1' test.out

#- 27 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'lZ0z2qxqqaSe6MOp' \
    --namespace $AB_NAMESPACE \
    --userId 'wyNGGQS6pCKYkbM4' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteAdminPlayerRecordV1' test.out

#- 28 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'K1ZzYHqHPU5DHc69' \
    --namespace $AB_NAMESPACE \
    --userId 'j0u1pirJEAOs5j2x' \
    --body '{"updatedAt": "gMtmbRI1ykB5L5sP", "value": {"AFaOrPZ2M9OIBUWn": {}, "4DRvZOoYPVfRCbOm": {}, "LC36my0MXnyajAgb": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 29 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key '7Cw6Xh4DYv2KOoZE' \
    --namespace $AB_NAMESPACE \
    --userId '9C0VzxAZ7J2mLgjB' \
    --body '{"set_by": "yE2kXHCrZ9E5Xhiy", "updatedAt": "ifsP5C0DLgSwlq1F", "value": {"LG2Fh7Fd7oWtV3Tp": {}, "ksWmDH9x8Anu5UhB": {}, "TKH8WkNoHBPLtLaf": {}}}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 30 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'aSUir1DlCdTV5ep6' \
    --namespace $AB_NAMESPACE \
    --userId 'BLjwQ3XDpbuyCyaY' \
    --body '{"set_by": "BFqppOjG3vXA1wiQ", "updatedAt": "Q8XMpIoPP70vzNHF", "value": {"5yDWilJDvTVUxGmi": {}, "9sWb51mxAUOar8MF": {}, "hZasypY1cX1CBaig": {}}}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'kOSqC30dxp24wUuH' \
    --limit '66' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 31 'AdminRetrievePlayerRecords' test.out

#- 32 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'GExJYcdGbms0blE0' \
    --namespace $AB_NAMESPACE \
    --userId '9TZZJcyUheDFjz6C' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlayerRecordHandlerV1' test.out

#- 33 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'w5F4iIoSCA9UvqsO' \
    --namespace $AB_NAMESPACE \
    --userId 'VXtAJWn4cpbucjAD' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPutPlayerRecordHandlerV1' test.out

#- 34 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'JHSI84ZTKshqbnry' \
    --namespace $AB_NAMESPACE \
    --userId 'NTchbKd3dupztACD' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPostPlayerRecordHandlerV1' test.out

#- 35 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'MW2L0tBHc0P64ZVj' \
    --namespace $AB_NAMESPACE \
    --userId '24rdFHLi7RjHpto6' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeletePlayerRecordHandlerV1' test.out

#- 36 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'PLj5gd8tcDjkYHX0' \
    --namespace $AB_NAMESPACE \
    --userId 'yvQaJfk2uiTiHt7A' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 37 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'XplwMEMrGFCpt2AD' \
    --namespace $AB_NAMESPACE \
    --userId 'qD2ilbpriEvQ1jqO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 38 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'scQDJ5WPsPC7DfRA' \
    --namespace $AB_NAMESPACE \
    --userId 'yFaqy6qqNKGecjRR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 39 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'zP5VktAUVTu6uzzc' \
    --namespace $AB_NAMESPACE \
    --userId '9KswoaqSc6b4ypy5' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 40 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'IFK9g70h58m2OUET' \
    --namespace $AB_NAMESPACE \
    --userId 'SOZiJdIizHdG13uA' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 41 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'Pt1I2bYKCfxB9GX4' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "KsFDYluuP4Srm4tw", "value": {"YDQD2LCz8pbltBHc": {}, "IGeaRlYxW5vTCbrl": {}, "QIIt9WsZ6qq4nFjG": {}}}' \
    > test.out 2>&1
eval_tap $? 41 'PutGameRecordConcurrentHandlerV1' test.out

#- 42 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["WnQq2CTq5mM2cctP", "ZtrO8wQrjnoVA33x", "CNFelBaPPlzDhZHj"]}' \
    > test.out 2>&1
eval_tap $? 42 'GetGameRecordsBulk' test.out

#- 43 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'VPOhxQsiOS4pkFmY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetGameRecordHandlerV1' test.out

#- 44 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'd73w00yT7zpZ9K5N' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 44 'PutGameRecordHandlerV1' test.out

#- 45 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'QsWnuKI9aWyeHXgV' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 45 'PostGameRecordHandlerV1' test.out

#- 46 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'Y3PlkMuKLxkX1S4L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DeleteGameRecordHandlerV1' test.out

#- 47 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'KeIAuuQ8114XzMRc' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6Lx4j3PFdtcQVgjF", "hleXjGuyiTcPI3RA", "Bkst5gNswup3y1CF"]}' \
    > test.out 2>&1
eval_tap $? 47 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 48 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePlayerRecords' test.out

#- 49 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Mrt9oUoypheuVqyz", "n8NdfQAaF7GRRlkx", "2b4MKuD7VezRVzwm"]}' \
    > test.out 2>&1
eval_tap $? 49 'GetPlayerRecordsBulkHandlerV1' test.out

#- 50 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'embADDMJPJ5A0rYk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 51 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'qL4A8Yvl2zz75lS6' \
    --namespace $AB_NAMESPACE \
    --userId 'mqljlQ0P3JUvoxlY' \
    --body '{"updatedAt": "wLiwszKHEi8cdZzj", "value": {"UEPpN8zEmnN77nwq": {}, "F04JI8LehR4GCOEj": {}, "iiVmvo2X1AbfjyD1": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 52 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'LIjJJ6p4cY2Cbcu7' \
    --namespace $AB_NAMESPACE \
    --userId 'ReP320talAdfa7Ak' \
    --body '{"updatedAt": "LHBN6NkAeXvVLCYI", "value": {"mthL3AjcPWmJ61ll": {}, "B5wis4omEK4eo4QV": {}, "eLSDGcq33QkvfBby": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '335JbZNOp8WeoJnw' \
    --limit '44' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 53 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 54 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'X5tew6m1eqfMCDxa' \
    --body '{"keys": ["YmdNxLJDDPYTFqWZ", "N4BrzpoeQLd49DVE", "YeyED6xRd2dU3htZ"]}' \
    > test.out 2>&1
eval_tap $? 54 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 55 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'zpiKHFG5TPqwYyBb' \
    --namespace $AB_NAMESPACE \
    --userId '0FxpBLJn9VLwvi4R' \
    > test.out 2>&1
eval_tap $? 55 'GetPlayerRecordHandlerV1' test.out

#- 56 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'dNdlOaS4AAv92SiZ' \
    --namespace $AB_NAMESPACE \
    --userId 'j9HNGlJ67OeUphbB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'PutPlayerRecordHandlerV1' test.out

#- 57 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'U6P5vBrXKYsBA0ng' \
    --namespace $AB_NAMESPACE \
    --userId '1FNDhtTuycitbunj' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'PostPlayerRecordHandlerV1' test.out

#- 58 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'OIVwcb6tXEMy3pj6' \
    --namespace $AB_NAMESPACE \
    --userId 'pBmMapBh7moWIDaO' \
    > test.out 2>&1
eval_tap $? 58 'DeletePlayerRecordHandlerV1' test.out

#- 59 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'eo5XQXgBkmUAXhHD' \
    --namespace $AB_NAMESPACE \
    --userId 'hwHFWLUp6zvdxScm' \
    > test.out 2>&1
eval_tap $? 59 'GetPlayerPublicRecordHandlerV1' test.out

#- 60 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'CbflvnB7DHwjweki' \
    --namespace $AB_NAMESPACE \
    --userId 'pZWaXmZoTegcZAIY' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'PutPlayerPublicRecordHandlerV1' test.out

#- 61 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'BHE8LHdueGLuSBfd' \
    --namespace $AB_NAMESPACE \
    --userId 'sC8RPUq0hRubXpVG' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE