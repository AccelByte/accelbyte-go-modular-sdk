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
    --podName 'yQSZcZNK' \
    --logType 'kLovKbd1' \
    --offset '56' \
    --origin 'oHYQQvYD' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'KBKvhsRD' \
    --endDate 'BnHLWLyn' \
    --gameMode 's6B0Bmrs' \
    --limit '4' \
    --next 'CJz36SfD' \
    --partyId 'N2QDbOmy' \
    --podName 'sxPL3WHC' \
    --previous '1zAyYfuR' \
    --provider 'd4rFhUX6' \
    --region 'dDv6MRXf' \
    --sessionId 'C7xP9HyX' \
    --source 'RH7dlR4n' \
    --startDate 'oXldymTW' \
    --status '4Vhr5F0u' \
    --userId 'AqVQJYVE' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'y8yjSIWE' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '3FL2QTm0' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "z9zXDb5Q", "namespace": "UhgVNl1Q", "pod_name": "JsDQ8Fpx"}, {"alloc_id": "M5FJi3cC", "namespace": "FwzqNGuV", "pod_name": "UiRoF5vp"}, {"alloc_id": "HDzzKJiW", "namespace": "DnPf42do", "pod_name": "5LBQSrYp"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'Htt14Zgi' \
    --endDate '6RZd7SKb' \
    --gameMode 'EuVDgTsu' \
    --limit '48' \
    --namespace 'fvMPC4HX' \
    --next 'OnUjBDjX' \
    --partyId 'sVcy7SlY' \
    --podName 'TnoljePs' \
    --previous 'Ea9m8BPE' \
    --provider 'Po2B9tAW' \
    --region 'o02kJzPn' \
    --sessionId 'E77UDYft' \
    --startDate 'khehISkw' \
    --status 'EBqwYoK9' \
    --userId 'h4g45mga' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE