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
    --podName 'y7M1RaK6' \
    --logType 'YZQL124H' \
    --offset '86' \
    --origin 'DRw73Fkj' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'qfVFo5m9' \
    --endDate '2KeupoAb' \
    --gameMode 'zh2mie8i' \
    --limit '33' \
    --next 'tfNcmuTW' \
    --partyId 'CkC8qRTk' \
    --podName 'qrnY4pdN' \
    --previous 'SizysTLa' \
    --provider 'Khbvnhlg' \
    --region 'ticd1khH' \
    --sessionId 'Y23vWYGV' \
    --source 'QU0l0ek1' \
    --startDate 'UYDWg0ik' \
    --status '0uRLx80W' \
    --userId '48E7lK9L' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'aYtXkG8T' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'ZcZ3zTuJ' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "U4u8kpq9", "namespace": "yoZZqt1X", "pod_name": "MOAZAWLa"}, {"alloc_id": "Rgmy5uic", "namespace": "x1Hu7ioY", "pod_name": "kBjOiuVS"}, {"alloc_id": "8RzDLrbG", "namespace": "A2qckV1t", "pod_name": "JociYoIk"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["TLA1z8oA", "cq6i5c1i", "u2FO1ghq"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '2vRxyMYU' \
    --endDate 'LvkPzqRT' \
    --gameMode 'xBdnseV3' \
    --limit '63' \
    --namespace 'VJkpH8wf' \
    --next 'XJKTJAo5' \
    --partyId '1OVtVqmp' \
    --podName 'cUe3wptu' \
    --previous 'IuSkNT3M' \
    --provider 'sG3KOiS6' \
    --region 'C2pSMb2s' \
    --sessionId 'M1mRaHuC' \
    --startDate 'QlCJkruX' \
    --status 'IxXUIwp9' \
    --userId 'JLQT9lCi' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE