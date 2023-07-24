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
    --podName 'D5SlfxnfDYB4AORg' \
    --logType 'm9Tshpt2TxNkPhiL' \
    --offset '11' \
    --origin '5XwCA7JxNEyzudna' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '2ruEitD7fOi0hHVE' \
    --endDate 'TT84GFRPss67qwI4' \
    --gameMode 'bzZDKpYjrAw158le' \
    --limit '76' \
    --next 'CMkDCXbVLDt9fUxC' \
    --partyId 'f4tPbe2pgnRNrc2c' \
    --podName 'mWvW9KDx6mwjo8jd' \
    --previous 'LMNN92a0W9oqAFq3' \
    --provider '2HAn3ge1pUs29jBw' \
    --region 'asa57iOm5o3Nu23q' \
    --sessionId 'TVlUnPO9NUUR8ukq' \
    --startDate 'Tr1HYPWQeFbdI1MV' \
    --status 'M7En5mdnAgVt835D' \
    --userId 'ebkhvr7nTcFbGzyi' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Qv3QPbluwgMDpaIR' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'YNFRJXp982iBkrvF' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "I4fh6cLhuU8G2l9O", "namespace": "vqyxnn35chmkyh6o", "pod_name": "p6FMaaX9HWcqG40V"}, {"alloc_id": "bSVxbpqN686Wc8wl", "namespace": "md6XFNx5bCmMTv4e", "pod_name": "aA3MZP2XjGsTFk7k"}, {"alloc_id": "sba1lLOhMUiI0vhf", "namespace": "o1eb2pqtDjXj9s8R", "pod_name": "OOjKMnmgTJ5F706r"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'kkiEmvvDY0QagZP4' \
    --endDate 'Kj8eqhDfZ4z4rdzO' \
    --gameMode 'RfGGmUapxoY7ADOX' \
    --limit '23' \
    --namespace 'F94DomqyDbRNzKro' \
    --next '3FavSaT6GvqwVrSo' \
    --partyId 'yKiMq4kGiZSUArBC' \
    --podName 'ia4GjpjVdrlNeDTP' \
    --previous 'R3WCeVFUnlhrZkrR' \
    --provider 'YBpTE9zDAS0Kh7RB' \
    --region 'eSfzD4b4KxVrlff7' \
    --sessionId 'TYwqIYfmHqTYE48J' \
    --startDate '6bAjQI2sMSd9hTgC' \
    --status 'fyJcFHqEtAz1bx0P' \
    --userId 'Sq7k9oW6NbuGpNX7' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE