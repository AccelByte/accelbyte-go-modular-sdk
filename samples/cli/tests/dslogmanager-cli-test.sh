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
    --podName 'LuAwlC9e' \
    --logType 'BrXl5Fz6' \
    --offset '68' \
    --origin 'prsZeJnP' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'dldOB8mH' \
    --endDate 'jbvGwgIN' \
    --gameMode '5XPZnQ5R' \
    --limit '13' \
    --next 'MnUs1ceZ' \
    --partyId 'nr4Sb7zm' \
    --podName 'WkeMJufR' \
    --previous '1xLG8a7w' \
    --provider 'FJKuQl0U' \
    --region 'OvOHZUT3' \
    --sessionId 'aXMWtoZ8' \
    --source 'aUrZfI2h' \
    --startDate 'DofUZT2r' \
    --status '6QmHkVhX' \
    --userId 'oSXCKUcg' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'axq7BP1u' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'lfgDfQFl' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "mtQys20k", "namespace": "hO5L9zXO", "pod_name": "FzsmE6As"}, {"alloc_id": "jEfxCRqI", "namespace": "aTEW2cT9", "pod_name": "I6wSDraq"}, {"alloc_id": "RS8sBUkg", "namespace": "vZgfyzsx", "pod_name": "gq1BB7nS"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'HMeCgHbf' \
    --endDate 'u4RyMgaN' \
    --gameMode 'EnBlEvii' \
    --limit '42' \
    --namespace 'ZoZVqDyC' \
    --next 'LlBVaMC8' \
    --partyId 'BqmOIrR1' \
    --podName 'NlhLxtQA' \
    --previous 's34lyEca' \
    --provider 'fJ6h9Xre' \
    --region 'UX73hiFP' \
    --sessionId '4Uv4xC4r' \
    --startDate '7IXGKzCU' \
    --status 'BSQV9JNa' \
    --userId 's3Idm2ZO' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE