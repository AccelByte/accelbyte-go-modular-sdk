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
    --podName 'uMGxR73y' \
    --logType 'wOAtg80N' \
    --offset '80' \
    --origin '8NnJzVIB' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'UDeBQAct' \
    --endDate 'UFvaIcn9' \
    --gameMode 'neqyFqlg' \
    --limit '24' \
    --next 'q6TJTJ8A' \
    --partyId '1fRzwKj4' \
    --podName 'nbNcECJz' \
    --previous 'lOxq9EDA' \
    --provider 'aCrNPsZ1' \
    --region 'uzPSsOju' \
    --sessionId 'BDEkM3Sp' \
    --source '6Ygr5IFm' \
    --startDate 'YRFsSreh' \
    --status '6qP06Nwr' \
    --userId 'BrLcu6Uq' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '2ZzkI6QP' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'EiCLVJIq' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "TFzWQTHP", "namespace": "tb7Tsbly", "pod_name": "Z7XnuCsk"}, {"alloc_id": "NFhwyfqv", "namespace": "2K9DzMKe", "pod_name": "4XdfhIBy"}, {"alloc_id": "6cm2f0hy", "namespace": "vdD0YcI5", "pod_name": "8mYZYlm9"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'odfyuBjI' \
    --endDate 'n5jasXEw' \
    --gameMode 'QBHAQUI8' \
    --limit '95' \
    --namespace '19Vz1Gf5' \
    --next 'm31xqjsu' \
    --partyId 'TSrQzOtu' \
    --podName 'yKufRFKh' \
    --previous 'jbCQ53dK' \
    --provider 'ubOZHP5t' \
    --region '661LKQnk' \
    --sessionId 'CeLsOLE7' \
    --startDate 'IlBs5JGN' \
    --status 'EVbY5sWU' \
    --userId 'ik4gTVvY' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE