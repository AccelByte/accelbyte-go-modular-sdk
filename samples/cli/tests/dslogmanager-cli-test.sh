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
    --podName 'eN5qAhvv' \
    --logType 'ooaW0GiH' \
    --offset '46' \
    --origin 'AoAImTy6' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '9XImpITe' \
    --endDate 'ODthTt5a' \
    --gameMode 'ewiZK4Ip' \
    --limit '44' \
    --next 'XdJXDejp' \
    --partyId '0TnUegMM' \
    --podName '2OBbFkqV' \
    --previous '20IfXZdw' \
    --provider '9ilZHIwN' \
    --region 'y1wRshKo' \
    --sessionId 'ysSah4Hi' \
    --source 'Um6wrQdX' \
    --startDate 'KXZFonCJ' \
    --status '2Ru18jmx' \
    --userId 'c1RxbAoo' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'gxyZll0i' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'FlvlKdSy' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "mNJXwQIo", "namespace": "jh4QjdnA", "pod_name": "lCfOT8oH"}, {"alloc_id": "Z0qmHFIO", "namespace": "J9PkNF9D", "pod_name": "YU9z5PjX"}, {"alloc_id": "TH5QoDtB", "namespace": "rjDszmO5", "pod_name": "AOkPQJpu"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["7D6cn9iW", "RvrFC6sm", "w7uzUKF8"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'XKGSZRKo' \
    --endDate 'O2DlGlao' \
    --gameMode 'Wc8fsxK7' \
    --limit '97' \
    --namespace '06oNaq2P' \
    --next 'vrmy3Qs2' \
    --partyId 'gdxxXtaN' \
    --podName 'EOznoNp4' \
    --previous 'EXTQ1l9H' \
    --provider '0CxnnffM' \
    --region 'uTMcZ1A6' \
    --sessionId 'zxNGXrYz' \
    --startDate 'vrSsSG8J' \
    --status 'DAAVdA8L' \
    --userId 'IVwLmbYb' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE