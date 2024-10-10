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
    --podName 'FL9XTVAx' \
    --logType '6ivSIC6k' \
    --offset '67' \
    --origin '9DE56Ebo' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'gegKMcpk' \
    --endDate 'gXwAdbIT' \
    --gameMode 'oJ24mOPi' \
    --limit '80' \
    --next 'HXx38dZU' \
    --partyId 'qcKY8Wje' \
    --podName 'Ko5yTmFb' \
    --previous 'pqKMQUT4' \
    --provider '7xZUSKIu' \
    --region 'GZpxkFm6' \
    --sessionId 'MjjBYzT4' \
    --source 'cryn0Jt7' \
    --startDate 'RAg0dovA' \
    --status '62gj0N1j' \
    --userId 'yuPePEpt' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'PuHHZUrd' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Eggvx4bf' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "tDX8sJac", "namespace": "SRQdM9A4", "pod_name": "AjSYgrWx"}, {"alloc_id": "SsNHUCfp", "namespace": "6MR4qB0w", "pod_name": "efHfemiS"}, {"alloc_id": "jUW9Y0sX", "namespace": "8TiT6XVF", "pod_name": "Z9KGkJFQ"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["C5LX0fNV", "tTbZKXc0", "AhrbfXZ3"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'GOsmYbY3' \
    --endDate 'N6kKpTNr' \
    --gameMode 'pddZtMUe' \
    --limit '81' \
    --namespace '7mJ5b6iM' \
    --next 'hb9NQpMj' \
    --partyId 'XNcW4yjf' \
    --podName 'nYuMDihC' \
    --previous 'Vv7SiNGT' \
    --provider 'LjSN8OSo' \
    --region 'zhSwdjIq' \
    --sessionId 'mfypt2P0' \
    --startDate '2wRezTRM' \
    --status 'ztdGypFH' \
    --userId '4CYLebOu' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE