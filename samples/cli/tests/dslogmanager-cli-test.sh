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
    --podName 'sziEJD5O' \
    --logType 'xMOjl3ST' \
    --offset '35' \
    --origin 'KGQmRd70' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'LccJ6huc' \
    --endDate 'iB7Y40oG' \
    --gameMode 'hYAOK6qC' \
    --limit '64' \
    --next '0JGUfq1Q' \
    --partyId 'TvYfJfGo' \
    --podName 'TDqWXRsX' \
    --previous 'TkQG1j51' \
    --provider 'E8BLVO87' \
    --region 'lUBVczty' \
    --sessionId 'TLbuxJ3Z' \
    --source '9vuao0S4' \
    --startDate 'VgmWdbzc' \
    --status 'whGdjSbW' \
    --userId '7zaiDNKE' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'UXJeNcqu' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'selCYmfw' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "dW1NexgY", "namespace": "UcabLNij", "pod_name": "JuuA38W1"}, {"alloc_id": "YPOVb7UJ", "namespace": "z9cVJkxn", "pod_name": "8buVQTFq"}, {"alloc_id": "XEK7MeL6", "namespace": "9TyuZaLP", "pod_name": "OAVkUOaN"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["GqSmRmxF", "JsqgmNXt", "ssjhwAs6"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'UuBDliDF' \
    --endDate 'WZkDF6Vr' \
    --gameMode '0oabteTB' \
    --limit '1' \
    --namespace 'nNSW3ioL' \
    --next '0if77z0l' \
    --partyId '7fLnn0lN' \
    --podName 'AYXWldbp' \
    --previous 'GlOFmITR' \
    --provider 'vXjmPbI8' \
    --region '8kujq1XC' \
    --sessionId 'wfibnPBL' \
    --startDate '7Ywf5mtN' \
    --status 'VqCKLkvR' \
    --userId '3P2VFJOT' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE