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
    --podName 'F5xYWFaS' \
    --logType '2z0Wl7lg' \
    --offset '70' \
    --origin 'gd6uc2AP' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'RsCsCRmt' \
    --endDate 'eAcxq7sE' \
    --gameMode 'UasIwODC' \
    --limit '90' \
    --next 'HbduQ33T' \
    --partyId 'sF3KGfZO' \
    --podName 'FSbUN8aA' \
    --previous 'x1AGfxWJ' \
    --provider '0YihEwCk' \
    --region 'hVzxZMIL' \
    --sessionId 'kogPmlES' \
    --source 'Pt0gkRlA' \
    --startDate 'c3DtxBul' \
    --status 'dwN0IKQ8' \
    --userId 'grn0KbBT' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'FVvYcH6j' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'j1qda0gv' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "tdxBqHvu", "namespace": "bgYcgXcm", "pod_name": "w2mkrZOt"}, {"alloc_id": "OhUyZ4pU", "namespace": "D2GDMV9l", "pod_name": "PNE0i2u6"}, {"alloc_id": "hvCnWynS", "namespace": "fPpxSgcx", "pod_name": "3rW0ygoN"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'WYvKerdp' \
    --endDate 'GnxiF3IE' \
    --gameMode '3SwCvxHl' \
    --limit '11' \
    --namespace 'k4flt8i5' \
    --next 'uS4lSRSg' \
    --partyId 'zD1Ncqxm' \
    --podName 'TKlEovLk' \
    --previous 'TssB8c0G' \
    --provider 'JUHcdhKD' \
    --region 'sFKlmG7b' \
    --sessionId 'MVOvViKW' \
    --startDate 'SgK78ll2' \
    --status 'vV1d06B5' \
    --userId 'kfsZmpvf' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE