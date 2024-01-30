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
    --podName 'jV1TJH6s' \
    --logType 'JQLHkazK' \
    --offset '53' \
    --origin 'VReKSe1p' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'e4gGglv8' \
    --endDate 'L7NoCo75' \
    --gameMode 'hP4wADpa' \
    --limit '0' \
    --next 'cYYDAnvn' \
    --partyId '7CtZH8Dw' \
    --podName 'iuOzNDkX' \
    --previous 'QGKJMvUg' \
    --provider 'NxlAxlGV' \
    --region 'F5VaPmt6' \
    --sessionId 'IozpGIX3' \
    --source 'Cz46QTHm' \
    --startDate '4ya8PhPk' \
    --status 'gq18wcVe' \
    --userId '1reAc0JK' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'dkRv3AO7' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'eWXfZUnY' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "nLobMGMQ", "namespace": "dtVhqwnO", "pod_name": "menx6eud"}, {"alloc_id": "9rxdQHQh", "namespace": "ki4aAmYN", "pod_name": "Zo9f4KIO"}, {"alloc_id": "M2kS8pMk", "namespace": "INL7AseA", "pod_name": "y4vpNXMb"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '15jjDhhd' \
    --endDate 'PdjHBhMG' \
    --gameMode 'VRpw7bg6' \
    --limit '64' \
    --namespace '1uebDmyJ' \
    --next 'kG7YytgT' \
    --partyId 'GOTlHI1z' \
    --podName 'jUwzti8z' \
    --previous 'ZyyiDeiv' \
    --provider 'i0mjmtCH' \
    --region '2BiF9unx' \
    --sessionId 'XADDKu7I' \
    --startDate 'Aucvr9b4' \
    --status 'bR2VmS7E' \
    --userId '18V8GMBb' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE