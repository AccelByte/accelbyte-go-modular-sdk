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
    --podName 'jA2dFszd' \
    --logType 'rMtqeBsx' \
    --offset '38' \
    --origin 'lCiGMsJR' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'dr0WHd1Y' \
    --endDate 'Jo9nKmFL' \
    --gameMode 'vakuQiN7' \
    --limit '71' \
    --next 'VFmuWGVZ' \
    --partyId 'bMlova1f' \
    --podName 'sQxoXRCv' \
    --previous 'nLfgwhNx' \
    --provider 'z3IShu0D' \
    --region 'BsS8w7B3' \
    --sessionId 'tl9kjbtP' \
    --source 'Qx6onBOv' \
    --startDate 'ZoP1wLfP' \
    --status 'Wtzdw1co' \
    --userId 'AyNxFKSJ' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '7SXcnz0j' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'DV9tbYcS' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "anSjHAUZ", "namespace": "PZB5HAGN", "pod_name": "zTnjbvpP"}, {"alloc_id": "gEtS7QDh", "namespace": "oIfgqSuE", "pod_name": "4aLEOFwC"}, {"alloc_id": "jDWDr6hG", "namespace": "s9OgXY72", "pod_name": "OBRJDVLO"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["lCNBIdkj", "aSaBgAki", "MlNb2UMO"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'bFTjcFuE' \
    --endDate 'tSz7xfVY' \
    --gameMode 'xxe0IjD3' \
    --limit '79' \
    --namespace '0FjYoDMQ' \
    --next '6r6yLtw6' \
    --partyId 'udbE870M' \
    --podName 'vUDYhz09' \
    --previous 'k0VElQxx' \
    --provider 'iriEg2fN' \
    --region '0XLxfOUh' \
    --sessionId 'HR2iFhPl' \
    --startDate '04qLpQB7' \
    --status 'StT8HLQV' \
    --userId 'rVGDNgny' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE