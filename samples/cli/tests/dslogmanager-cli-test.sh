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
    --podName 'eTAdiY8A' \
    --logType '2V4umHcE' \
    --offset '51' \
    --origin 'H2uGrLCa' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'MPile3CR' \
    --endDate '79pbz8X4' \
    --gameMode 'txFpR8he' \
    --limit '45' \
    --next 'nEcweMzi' \
    --partyId 'HNa9Rt4B' \
    --podName 'vMdGSQXC' \
    --previous 'gz7iLsbS' \
    --provider '5mvb39tX' \
    --region 'JTOmQkDn' \
    --sessionId 'YPaDDhwx' \
    --source 'a1SuH4oz' \
    --startDate '16NCudXI' \
    --status 'tvIp2PSq' \
    --userId 'DrdAU0Pl' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'wFPKPluK' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'x2a6FXG1' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "6JHyE1Zp", "namespace": "ZXY3cHyZ", "pod_name": "lbJiqmNo"}, {"alloc_id": "FG0pVVo6", "namespace": "ApVNmgyI", "pod_name": "FilW4eHJ"}, {"alloc_id": "Lndy2NrB", "namespace": "YiYS6K0R", "pod_name": "AhSFk91r"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'I8gp36pi' \
    --endDate 'I3Pk3I3X' \
    --gameMode 'MsF323yT' \
    --limit '33' \
    --namespace 'ujRyI3jY' \
    --next 'NkObjICo' \
    --partyId 'imVZLg3F' \
    --podName '3ZNxIfd1' \
    --previous 'CdTbGEKR' \
    --provider 'eT0VVte7' \
    --region 'S8TigxBT' \
    --sessionId 'UX8YWT77' \
    --startDate 'tBgP6N4V' \
    --status 'uBcQoe1d' \
    --userId 'KrVoCjPO' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE