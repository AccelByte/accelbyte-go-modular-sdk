#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
    --podName 'GIsPQxp0EEmIpiXz' \
    --logType '3ssEBf0i6J5o1eSb' \
    --offset '58' \
    --origin 'CpUSj0yyjkkUAvH8' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '0QtZnqm1IZAyWCP1' \
    --endDate 'T70L0BOQLSFuWAw2' \
    --gameMode '86WrmXPOK6Hzsc1E' \
    --limit '59' \
    --next '18rrhrdhECGhaopK' \
    --partyId 'EjRk0oLJK1Crd3ig' \
    --podName 'j9EZzkAmkUMczn3k' \
    --previous 'Fg9zt8cLzLhzuBJ9' \
    --provider 'yccdIWSEoUrGbfVn' \
    --region 'gSkCm8YNhA5YZtO2' \
    --sessionId '7u2EuwHAHcrbVIu1' \
    --startDate 'g7UXzCzfbBnbNPJt' \
    --status 'hGy45rXyCpC3FfMY' \
    --userId 'Aj6dHQXXsH0QYtdX' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'iP0JyMXc3GezC95r' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Xp6PAcqH2a2A3Gdj' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "wOweXDR6sMJik1eH", "namespace": "SXfiZin8jFndwxas", "pod_name": "jGSoIqF8U0Z12994"}, {"alloc_id": "GPsoPhE1AW8Uoeuq", "namespace": "cRys43clPy2wrIBw", "pod_name": "Ox6eqmzSN9PVfR3C"}, {"alloc_id": "y5ZAmsaNjQKQkvBi", "namespace": "iRVMRIPQurbinAbo", "pod_name": "A0M4zmfepiPHc90C"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'KzErjIYuoZTboyFl' \
    --endDate 'rEwWHeUhCdD9CwPZ' \
    --gameMode 'jqEsR6gG7IxuLmuI' \
    --limit '29' \
    --namespace 'MjKxVP45D2eCcqRy' \
    --next 'XdeiRCX0BRkCGDWR' \
    --partyId 'uxoOsluiv3RsjhKr' \
    --podName 'bXHaq6kWHW0FL2Nx' \
    --previous 'chOkcdYAvYBzCmmg' \
    --provider 'Ny2pmuNZ7bBtTq0J' \
    --region 'srRp9n7wajLtYA7K' \
    --sessionId 'AELFGZEbb4GMGod1' \
    --startDate 'd7B4luhnGiP1hKLS' \
    --status '80YzN677LvzWGon6' \
    --userId 'P7b2aPLmRTWTeNft' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE