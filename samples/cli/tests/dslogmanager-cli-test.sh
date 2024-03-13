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
echo "1..8"

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

#- 2 GetServerLogs
samples/cli/sample-apps Dslogmanager getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'bzgtEqiG' \
    --logType 'HFRzQOWv' \
    --offset '91' \
    --origin 'h4H9vXB8' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'JjVtGafT' \
    --endDate '1JdVEdxY' \
    --gameMode 'ASaqSDe2' \
    --limit '52' \
    --next 'ar8sTNr9' \
    --partyId 'S7MkMAn3' \
    --podName 'tOu4Ldq9' \
    --previous '8ZZbpWZb' \
    --provider 'ahXRcOb4' \
    --region 'kTxSgAFW' \
    --sessionId 'nA7ZEySO' \
    --source 'WSHKc5s0' \
    --startDate 'VAwdrSz5' \
    --status 'VOYaKLqO' \
    --userId 'XeE7tRpV' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'WjXIp5ZA' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'wAf57GcG' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "j40w2MdN", "namespace": "hQFQ7muQ", "pod_name": "ytkrkM1D"}, {"alloc_id": "iKw1JIBa", "namespace": "3QaVDBEV", "pod_name": "DxCgFRAu"}, {"alloc_id": "HhRHuCK3", "namespace": "CiyCMdJk", "pod_name": "5C350lOz"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'f8VAuTFJ' \
    --endDate 'YpouGQZT' \
    --gameMode 'mnZrlSqJ' \
    --limit '25' \
    --namespace 'UnXBYkO9' \
    --next 'x4kBCrZD' \
    --partyId 'cNjMMmCN' \
    --podName 'o6tlk3t4' \
    --previous '6huMGMqf' \
    --provider 'lHel4Qi3' \
    --region 'C1u52TFM' \
    --sessionId 'IkiGOAWM' \
    --startDate 'L34iPU94' \
    --status 'VWdxbgsA' \
    --userId '89nlJHw1' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE