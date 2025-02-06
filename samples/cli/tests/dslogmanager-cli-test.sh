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
echo "1..9"

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
    --podName 'kdcyYWmZ' \
    --logType 'eSiOhkFh' \
    --offset '81' \
    --origin 'YUSmbFSy' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'H09z09Hc' \
    --endDate 'N2CXRMmu' \
    --gameMode 'fv56OtvR' \
    --limit '88' \
    --next 'SSnU9hXl' \
    --partyId 'WR7Bsio6' \
    --podName 'mMql5Mal' \
    --previous 'hR4JCQ6y' \
    --provider 'nMIQH5js' \
    --region 'vEDoAhSJ' \
    --sessionId 'SnpZb3rf' \
    --source 'u3mZvGAt' \
    --startDate '3xfTMJBx' \
    --status 'dGlXXYAb' \
    --userId 'ev7Rd8b8' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'TMR4f5pH' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'RcrETA5k' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "Kg7bdnYj", "namespace": "FR9mfYcM", "pod_name": "6dl1PWpU"}, {"alloc_id": "cTet2bGv", "namespace": "Q23ZXg2h", "pod_name": "s6dUopzV"}, {"alloc_id": "cMcVPAqJ", "namespace": "22AfvGro", "pod_name": "OnifmhLv"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["I9Q0nGrw", "1XDMKoUO", "AvwVWIDY"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '5PZlvxXA' \
    --endDate '8YHXPPQQ' \
    --gameMode 'XX69Ksxc' \
    --limit '81' \
    --namespace 'CsAQNJfs' \
    --next 'v9PziwZ8' \
    --partyId 'AFI0zCtM' \
    --podName 'FV6q6yGl' \
    --previous 'W9bg6Lfv' \
    --provider 'NYhXlv2t' \
    --region 'TptnNHEv' \
    --sessionId 'klkaEYXe' \
    --startDate 'R8qXSnSO' \
    --status 'SQjOJi6I' \
    --userId 'xJ5wFOUn' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE