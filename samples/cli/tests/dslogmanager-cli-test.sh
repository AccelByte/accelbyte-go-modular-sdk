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
    --podName '0ufakeNO' \
    --logType 'rfOUQBJX' \
    --offset '2' \
    --origin 'MOBgDdkm' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'v6AiGh39' \
    --endDate 'd2zwAKn0' \
    --gameMode 'MOo00t2N' \
    --limit '84' \
    --next 'ldB0lTLd' \
    --partyId 'mkkXkTHN' \
    --podName 'FUVQf8Vp' \
    --previous 'Kg3eehjC' \
    --provider 'bCsSOwao' \
    --region '5r6W6rjD' \
    --sessionId 'bULOCGTh' \
    --source 'N14iGLle' \
    --startDate 'ki9tSVqM' \
    --status 'ht0qMNR2' \
    --userId 'XP3Re4z9' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'K9rSI2MK' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '7Z7yNPSF' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "0QRbX1d2", "namespace": "4TU4Zemy", "pod_name": "uKIwj54O"}, {"alloc_id": "jYQmWwfs", "namespace": "ObrOnQl8", "pod_name": "BaumnO05"}, {"alloc_id": "cko0q3kG", "namespace": "AmZbAqdf", "pod_name": "cUceW4od"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'Yp4aHc1l' \
    --endDate 'EqvYDKaT' \
    --gameMode 'FwGfqt5E' \
    --limit '67' \
    --namespace 'IX0G9W36' \
    --next 'uDird980' \
    --partyId 'hP6qDdyt' \
    --podName 'MDCTN8Ao' \
    --previous 'J5FBP1ZK' \
    --provider 'wrP5aILE' \
    --region 'dxaELeQF' \
    --sessionId 'a7nZyee1' \
    --startDate 'mWuml1gE' \
    --status 'nZQ3vY64' \
    --userId 'ZDasDOxa' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE