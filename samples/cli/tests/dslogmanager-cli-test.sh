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
    --podName '072QpQOT' \
    --logType 'G9wroetK' \
    --offset '42' \
    --origin '5vpgk3X2' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'EDMvZ43g' \
    --endDate 'sf6UdBQa' \
    --gameMode 'R0zG61De' \
    --limit '22' \
    --next 'GixoTN0p' \
    --partyId 'fCZKyEzk' \
    --podName 'D2u5LsZ9' \
    --previous 'NGMntFmD' \
    --provider 'cPrWc4x8' \
    --region 'SMeCzRhO' \
    --sessionId 'wWZ9wbEB' \
    --source 'Or55jRO4' \
    --startDate 'orz6etAj' \
    --status '3ihUJJ7c' \
    --userId 'ZdLwS6fA' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'GRqdRLdc' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'RVJAp0JU' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "mgR7enwd", "namespace": "bciaftvO", "pod_name": "EyfaE1Ef"}, {"alloc_id": "JyN5rii5", "namespace": "yhfHI2a9", "pod_name": "jT3Zr3IL"}, {"alloc_id": "Ag7GaYEt", "namespace": "SvP78dxC", "pod_name": "RI6qvzlb"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '6FNzfl0z' \
    --endDate 'jzebjYAT' \
    --gameMode 'WbBc4Nrz' \
    --limit '55' \
    --namespace 'qntm8n4j' \
    --next 'WyycY91x' \
    --partyId 'vSzyZeOv' \
    --podName '3xMq9sm2' \
    --previous 'V8mDa1A3' \
    --provider 'fEzzTPMu' \
    --region 'Wwpd79uu' \
    --sessionId 'wozDQzOM' \
    --startDate '5tyoZqEE' \
    --status 'pxQnQ6z4' \
    --userId 'iwkBUIEp' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE