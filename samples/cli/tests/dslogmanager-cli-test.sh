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
    --podName 'nlg98Xbz' \
    --logType 'rn1kSTQV' \
    --offset '6' \
    --origin 'xSaIYaUX' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'gYdE5VTQ' \
    --endDate '4PsE4lOO' \
    --gameMode 'T6dKhbi3' \
    --limit '65' \
    --next 'SikQBxWz' \
    --partyId 'qN24WTmb' \
    --podName 'ahAtAGAZ' \
    --previous 'YPBQW0lg' \
    --provider 'YrV5ENop' \
    --region 'E12c3Ka0' \
    --sessionId '4xOds1V9' \
    --source 's4PUR2jc' \
    --startDate 'YvTqF2jz' \
    --status '3vyu58pL' \
    --userId '4FBElWAL' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'PR5CVzx2' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Uw17Tdqi' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "9f3T3VXa", "namespace": "FquQeT5r", "pod_name": "58xD9NFN"}, {"alloc_id": "6wlJD9Nx", "namespace": "FVdNOMzX", "pod_name": "S0pIcBQK"}, {"alloc_id": "5cvKqlfe", "namespace": "H8EoAReb", "pod_name": "avuKkl3s"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["MkYY9wbV", "Z0ApIzAr", "6Lk8HFBu"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'i32XKMlJ' \
    --endDate 'jecqc3wp' \
    --gameMode 'HKcZVqMm' \
    --limit '89' \
    --namespace 'PlTE5TII' \
    --next 'zdQlcyvZ' \
    --partyId '1bz2251A' \
    --podName 'TEKV967p' \
    --previous 'xXWJBMPy' \
    --provider 'inTW41o5' \
    --region 'eDg0LU8J' \
    --sessionId 'jauqJGQU' \
    --startDate 'UQJquxXW' \
    --status 'R9MTWwog' \
    --userId 'o7ZlPxxN' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE