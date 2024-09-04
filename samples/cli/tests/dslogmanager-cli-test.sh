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
    --podName 'IeNH7S6J' \
    --logType '8vqSHXr7' \
    --offset '82' \
    --origin 'B5IeoxtS' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'OQRfdQlD' \
    --endDate 't1Jn1Fh2' \
    --gameMode 'ahbEusW8' \
    --limit '2' \
    --next 'gahk3JVw' \
    --partyId '3OeVEvlK' \
    --podName 'JDqxDt2Q' \
    --previous '9P6nqqCz' \
    --provider 'NRFW529a' \
    --region 'U12TqhUm' \
    --sessionId 'Av4gsvuM' \
    --source 'kcaBqhDd' \
    --startDate 'HWU0Mno8' \
    --status 'nmpO8UFs' \
    --userId 'jt8eQG4y' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'coscTs8u' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'AsM2uBvZ' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "gmRKLoU3", "namespace": "Qv2hmHSv", "pod_name": "TrPOeahq"}, {"alloc_id": "bkvvGEMy", "namespace": "sIzmPhzF", "pod_name": "i1dW12SN"}, {"alloc_id": "O3pUPrVO", "namespace": "chawPdGL", "pod_name": "juD1ypWs"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["vs50vIiw", "wHJuh6qS", "n7MaGh6q"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'mDGymra4' \
    --endDate '156ioY4C' \
    --gameMode 'ChBQojJz' \
    --limit '65' \
    --namespace '993CMlio' \
    --next '05Hxcp22' \
    --partyId 'cWym87GW' \
    --podName 'jOcdwxuI' \
    --previous 'EwZ2cBZd' \
    --provider 'DMhmocY6' \
    --region '8wEG9MbP' \
    --sessionId 'q8MAo7D7' \
    --startDate 'FubcQU0E' \
    --status 'yox0U3G0' \
    --userId 'F8p5fCvw' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE