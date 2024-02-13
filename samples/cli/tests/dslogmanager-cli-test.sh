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
    --podName 'F9oAGdTe' \
    --logType 'dxmIcbDN' \
    --offset '73' \
    --origin 'DQximRMe' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'm8j2vrpG' \
    --endDate 's4aKd8QJ' \
    --gameMode 'eCIpwzAy' \
    --limit '42' \
    --next '1vI20gmU' \
    --partyId 'aB0jAKbk' \
    --podName 'pRLhJi5X' \
    --previous 'LAn2ft2P' \
    --provider 'xmYpM87k' \
    --region 'BXEFmdFv' \
    --sessionId 'wugnz85h' \
    --source 'F0BuF5z3' \
    --startDate '33Mrrm1D' \
    --status 'DU3cBFMk' \
    --userId 'SKOTGIeR' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'GP9ZgpdO' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'w8ea6Ge0' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "SXMWLljA", "namespace": "mGd4gTel", "pod_name": "TdW736m6"}, {"alloc_id": "h7LN8nVm", "namespace": "6hOgmhfM", "pod_name": "lVkGKJZE"}, {"alloc_id": "twsBykR4", "namespace": "czgVfkLE", "pod_name": "ee0bM5U8"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'O3bMVGdv' \
    --endDate 'jLvLlbmf' \
    --gameMode 'VsntymQe' \
    --limit '42' \
    --namespace 'mEdXYvbY' \
    --next '2OEwJ9VX' \
    --partyId '0UiE8Rg8' \
    --podName 'bjSBvt8S' \
    --previous 'da2eJxNa' \
    --provider 'NZm7JMwg' \
    --region 'RXu18iiz' \
    --sessionId 'ZsswCbeh' \
    --startDate 'Q0PkAOBw' \
    --status 'cqIp4Zw1' \
    --userId 'KqLOytbY' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE