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
    --podName 'LQsJVooA' \
    --logType 'f8nIKcak' \
    --offset '65' \
    --origin 'FkV8124X' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'F97bu0q8' \
    --endDate 'RJjf5y2u' \
    --gameMode 'OxFW8jfk' \
    --limit '89' \
    --next 'F1Y0DHeI' \
    --partyId 'VXwSv3wT' \
    --podName 'fMzpWTdi' \
    --previous 'skUwtSvu' \
    --provider '795rj5pT' \
    --region 'Jkv5DsCI' \
    --sessionId 'WBD1VDFs' \
    --source 'XHt6qTyp' \
    --startDate 'Mh3WxsWE' \
    --status 'IuRTl2Fi' \
    --userId 'zCx8eQ2G' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'tn6HYbOW' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'RSkHv4dN' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "qZUwVO8D", "namespace": "70Wv1m8C", "pod_name": "5oBlhVax"}, {"alloc_id": "uwhFYMTT", "namespace": "aFErd3n7", "pod_name": "TTyjSEui"}, {"alloc_id": "OX5SC62H", "namespace": "wP50343t", "pod_name": "r8nnFIBn"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["QC1NjCVG", "Mp2vr49C", "0tB7bSAy"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'ddUx61qt' \
    --endDate '5tUHwAZt' \
    --gameMode 'wntebdLW' \
    --limit '56' \
    --namespace 'E6MsD73O' \
    --next '618JWmJt' \
    --partyId 'ohxPhZn0' \
    --podName 'nuSoYyZF' \
    --previous 'KR4e37xQ' \
    --provider 'jxmw9HQp' \
    --region '4r1dn6jB' \
    --sessionId 'm6DMNnry' \
    --startDate 'QLYrpQcJ' \
    --status 'QlcLtssz' \
    --userId 'HnknEjmy' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE