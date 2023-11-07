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
    --podName '4SgGzsXe' \
    --logType '0JLS7AAV' \
    --offset '40' \
    --origin 'VriWbGOW' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'zjjIcZ31' \
    --endDate 'mEQ5dPg8' \
    --gameMode 'bKGu82Ee' \
    --limit '3' \
    --next 'kkuFvhkK' \
    --partyId 'Fh9BHB06' \
    --podName 'qYX1Uzuc' \
    --previous '6QTJH5od' \
    --provider 'EfXlpoed' \
    --region 'KBDkAoxW' \
    --sessionId 'ElIcymlL' \
    --source 'vmz5eNSs' \
    --startDate '6KcmG5SM' \
    --status '1cVteUtm' \
    --userId 'vjYGm0NT' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'eES5srw6' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'UFePN2aX' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "eoQWoqR5", "namespace": "a5RZcfmj", "pod_name": "WlnLF7cR"}, {"alloc_id": "oVIrwrkY", "namespace": "ffLKQURY", "pod_name": "qDYHb5N9"}, {"alloc_id": "cBqWnFed", "namespace": "whN69M6d", "pod_name": "09ACUWju"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '7m3eTrLI' \
    --endDate 'WUNvyviJ' \
    --gameMode '0Q960ZSK' \
    --limit '47' \
    --namespace 'iTf0dbMf' \
    --next 'BwMTLAwa' \
    --partyId 'AijXVVnJ' \
    --podName 'pVmfZJ0c' \
    --previous 'jcFGqoJU' \
    --provider 'nsbeAIny' \
    --region 'lYIJ2mDV' \
    --sessionId '0A55luxJ' \
    --startDate '8nBt97E2' \
    --status 'McpMUlBv' \
    --userId 'n8x9SUSu' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE