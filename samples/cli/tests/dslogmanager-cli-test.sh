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
    --podName 'HpOlFzlT' \
    --logType 'YEeHI7rH' \
    --offset '5' \
    --origin 'Efw3JBjw' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'antPANoK' \
    --endDate 'TGBmMQGi' \
    --gameMode 'dGQnU3if' \
    --limit '71' \
    --next 'v5n7c6lk' \
    --partyId 'WaFJ9b6H' \
    --podName 'TMdhXHnI' \
    --previous 'snYyz0w2' \
    --provider 'JSSDH5hF' \
    --region 'dyG7XkGE' \
    --sessionId 'oAsafr5W' \
    --source 'xSdTLs4O' \
    --startDate 'nyAEO6Qj' \
    --status 'iJxWhkjX' \
    --userId 'McriuLb5' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'KrBIvuP3' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'vmKI0pAG' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "wWHPdLcu", "namespace": "wbEvlSGo", "pod_name": "AEYjfZeI"}, {"alloc_id": "NiQZoi1P", "namespace": "GPkgNU9K", "pod_name": "oVIqHbsp"}, {"alloc_id": "qVIfN37E", "namespace": "jBMmRcqS", "pod_name": "bHMBQ9HA"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'HQsB1koQ' \
    --endDate 'QkMFBygt' \
    --gameMode 'pgV2C6mF' \
    --limit '50' \
    --namespace 'pNkI3RLC' \
    --next '4sIJFdW5' \
    --partyId 'TJzG5R2s' \
    --podName 'zUYAW5zh' \
    --previous 'a0vnkVqR' \
    --provider 'VkoNHAg2' \
    --region '4yTQBmK9' \
    --sessionId '7rYRTMnO' \
    --startDate '7SKOZ6nf' \
    --status 'bVyuF1cI' \
    --userId 'xFkPhGhY' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE