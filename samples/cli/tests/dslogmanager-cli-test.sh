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
    --podName 'MclC6u5uFFEruyBF' \
    --logType 'pZL3ZT9DGFrGWzde' \
    --offset '80' \
    --origin 'xCDU8d6OKIQhvjwZ' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'OT8MHxo4xnjUT3OP' \
    --endDate 'oZJKMmWWETBmr1ca' \
    --gameMode 'xnZqXCiZVl9BZLd6' \
    --limit '83' \
    --next 'Ha8ems1bKU8N2nzH' \
    --partyId 'BoqPh1mBmDlfAwvy' \
    --podName 'YUyaItHE0u3zvTIj' \
    --previous 'QIeuzrcywgYf4JLg' \
    --provider 'KkvYvH3pTSnsADuT' \
    --region 'zxgWldYruz0FUDwo' \
    --sessionId 'QfnUxVJBlp1rpWUU' \
    --startDate 'XoNSvxwHIezlCcJj' \
    --status 'dlEO7aiTnt5chxUl' \
    --userId 'cHZrlOFPdBgH7O3T' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'kEwsUtnKX6z8rEZB' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'qj74RhUFElvlBvfD' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "0Cex95h09xedLn2l", "namespace": "YhYeHpsBbpHJLiI3", "pod_name": "vJZMcuFdNGsrjX8l"}, {"alloc_id": "AyQbLExHrSbaLFDt", "namespace": "L8Onz8tW5ZrjSGeK", "pod_name": "IKUMXD2C14RyfaY5"}, {"alloc_id": "E5edcsvshLcKHWy7", "namespace": "sxrLNy2EqU0DIp4M", "pod_name": "WcAa86KEg2xvdAmR"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '7bG1IXvPxdiXFh76' \
    --endDate 'O71NCdFgWVxhgs70' \
    --gameMode '1CJqlohqzLbMjHXs' \
    --limit '81' \
    --namespace 'K6Oqw720ZgX9ko8V' \
    --next 'ROTCsT36Z1sIQkor' \
    --partyId 'MOfxuZZT93cHT8jX' \
    --podName 'Qk9HLrJl1f2stkaR' \
    --previous 'elHSIWvylMnn3Jn6' \
    --provider 'XUy32CiDKx3PsrPW' \
    --region 'efrcw95i4zvOQ5Uy' \
    --sessionId 'A4x9ersytvpi3Uby' \
    --startDate 'PRxXZLyqpBoJASqV' \
    --status 'TYGSrJRF8Qoiuj5v' \
    --userId 'jFSGOB5xe0QbQKkn' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE