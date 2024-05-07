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
    --podName '9SUwVSFn' \
    --logType 'SkgOAIUk' \
    --offset '1' \
    --origin 'B9qJKDdo' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'urZ5mwox' \
    --endDate 'bM7IYTIb' \
    --gameMode 'TapHRE4l' \
    --limit '1' \
    --next 'o28EuThx' \
    --partyId 'ITecN6TQ' \
    --podName 'ApZSfUnk' \
    --previous 'CV5Nro6f' \
    --provider 'iz9malN2' \
    --region 'KiwlzSHx' \
    --sessionId '8SOs9M30' \
    --source 'XJaKROnn' \
    --startDate 'EGepijqV' \
    --status 'diCrJUkx' \
    --userId 'Q2aGvDW6' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'ztBPD0Or' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'rYR8LsAG' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "7hYKCHvW", "namespace": "7v1qckcg", "pod_name": "rQtQVJuS"}, {"alloc_id": "GclPrmHb", "namespace": "XobLWAU4", "pod_name": "WrzFIMb0"}, {"alloc_id": "OoMqOt8S", "namespace": "sxIE99hO", "pod_name": "Vj8c1iu8"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'kYEM4NB8' \
    --endDate 'hJsLTf3i' \
    --gameMode '7BTnWyCM' \
    --limit '20' \
    --namespace '4IGq6hn0' \
    --next 'rS0dJn6M' \
    --partyId 'zLMUNkWe' \
    --podName 'Skpul23J' \
    --previous 'D0ddqC8w' \
    --provider 'ETFGWNCl' \
    --region 'JVPR2MX4' \
    --sessionId 'DXJylDzh' \
    --startDate 'yJnao7M4' \
    --status '49ilHmzl' \
    --userId 'qSOSLV0q' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE