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
    --podName '2GzA1ZsS' \
    --logType 'llyWK6hv' \
    --offset '31' \
    --origin 'xIXKeJHM' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'RLJSvguD' \
    --endDate 'bim4cmj8' \
    --gameMode 'EsnUlq34' \
    --limit '7' \
    --next '6Ev88R1r' \
    --partyId 'PKQMut47' \
    --podName 'pOuSzjeA' \
    --previous 'jyTI0Ofw' \
    --provider 'm89amAV7' \
    --region 'jyGRzPvt' \
    --sessionId 'dWb6gzW5' \
    --source 'G1tQaeyH' \
    --startDate 'ku93fB2v' \
    --status 'D3Dgod7t' \
    --userId 'vkWBAv3R' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'erHf6mzK' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'wB2QaEKS' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "aFygupei", "namespace": "oeZRbbK9", "pod_name": "xoAdqCsi"}, {"alloc_id": "se65UHGP", "namespace": "Irn88Rbo", "pod_name": "1aQz8lJm"}, {"alloc_id": "jxauLEHk", "namespace": "y6L2C2kx", "pod_name": "PvoGtxaB"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'VecohYcT' \
    --endDate '5YZejNtB' \
    --gameMode 'IfmYiVHH' \
    --limit '51' \
    --namespace 'qCwLWAJ8' \
    --next '2HxiGwd4' \
    --partyId 'veHWiXMv' \
    --podName '2L7Y2Rzr' \
    --previous 'a9ozWwmg' \
    --provider 'aMUJpAKN' \
    --region 'bT516Trv' \
    --sessionId 'VaezfVkH' \
    --startDate 'XanGVQIp' \
    --status 'k3ZWAONK' \
    --userId 'VjCCW1Bu' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE