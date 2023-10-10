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
    --podName 'vPO4Oj3R' \
    --logType 'amDdlCaw' \
    --offset '70' \
    --origin 'wF39CJva' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '1n3sC7PO' \
    --endDate 't8RILKmN' \
    --gameMode 'rZGkCOz6' \
    --limit '41' \
    --next 'hKps14AW' \
    --partyId 'HldLlhyx' \
    --podName 'tCtmKXII' \
    --previous '1gRJLAbr' \
    --provider 'VLSPHtNs' \
    --region 'P6SAotsf' \
    --sessionId 'KqaEO5EY' \
    --source 'zqYRDnUE' \
    --startDate '4txGkqHN' \
    --status 'zVm7PlRc' \
    --userId 'NYCMe0Ky' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '3FgS634M' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'WbDUrmJE' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "o5EeJgw1", "namespace": "WHvPqCLM", "pod_name": "1eWd9gsn"}, {"alloc_id": "nFheHM5K", "namespace": "lob3r3Xf", "pod_name": "E5wYzDYb"}, {"alloc_id": "3pojyFW0", "namespace": "cbNaQUfW", "pod_name": "Xy7Ss7rD"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'a24nfMtA' \
    --endDate '2uhgzd74' \
    --gameMode 'kXlLQj4V' \
    --limit '48' \
    --namespace '8E9v8E5q' \
    --next 'okrP23GF' \
    --partyId 'nFTWpK9X' \
    --podName '9AKS9CnC' \
    --previous 'f1mvSzX3' \
    --provider 'vFuMuSn2' \
    --region 'VOirJsBR' \
    --sessionId 'SdvOOxNo' \
    --startDate 'GUcVPW6E' \
    --status 'hry6uGYR' \
    --userId 'AGADWyaH' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE