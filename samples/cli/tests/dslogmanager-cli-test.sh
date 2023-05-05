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
    --podName 'yA12qxDO' \
    --logType 'THOYJGUE' \
    --offset '6' \
    --origin 'Dv3h7vYK' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'amlp2oV2' \
    --endDate 'O8QwKF0i' \
    --gameMode 'YAZ5WzkE' \
    --limit '68' \
    --next 'KugVL7c1' \
    --partyId 'OU1ZjoER' \
    --podName 'nKLBS7lf' \
    --previous 'hZyVEn9f' \
    --provider 'fjNZKdBN' \
    --region 'jrDOEgX0' \
    --sessionId 'zFtyjQGK' \
    --startDate 'vEZH0oPT' \
    --status 'Twrclguh' \
    --userId 'u9b8g0sE' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '9yzQMukQ' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '7AF44eyk' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "AWTBLDuE", "namespace": "tRBUZrZT", "pod_name": "RtomYDo0"}, {"alloc_id": "HWTAdTWm", "namespace": "aqQCo0KO", "pod_name": "OqvQnGDp"}, {"alloc_id": "5Gcop765", "namespace": "4ljmJRVc", "pod_name": "LCFJ8pr8"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'QNOkJ4FU' \
    --endDate '7meNyWQ6' \
    --gameMode 'nE9s3McK' \
    --limit '42' \
    --namespace 'RGz39s5m' \
    --next 'py8kJvG9' \
    --partyId 'ZrZdT8MR' \
    --podName '6nw5teGb' \
    --previous 'pweUkKIP' \
    --provider '9ViMJOFQ' \
    --region 'sOG4SW9S' \
    --sessionId 'fh0CwZ0k' \
    --startDate 'HvOOkLRi' \
    --status 'mty8kLTY' \
    --userId '7tgxFjeN' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE