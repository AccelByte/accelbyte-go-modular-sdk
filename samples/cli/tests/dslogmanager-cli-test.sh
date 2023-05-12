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
    --podName '51DxEUMarX0qIkVX' \
    --logType 'Y2CMHKkEN9Gts9MK' \
    --offset '41' \
    --origin 't3cutJIhV1Bqu5Ns' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'Xi4BYpXOmKGPEZMb' \
    --endDate '0oSqHzY6rISmXLJb' \
    --gameMode 'DfeTZYd1wyzkbli0' \
    --limit '0' \
    --next 'sbR0EzsNgCxKOFRt' \
    --partyId 'DGt5SfjvLhRdT1E9' \
    --podName '9P2QchtIjunbiLcx' \
    --previous 'BPy0EPuqGRsgFXB9' \
    --provider 'dmm3RsG7udejzj23' \
    --region 'GvKZxlHX6mveUlXU' \
    --sessionId 'Sz6DNetq1vTvbY67' \
    --startDate 'V9sIXNh6DcOOrdHp' \
    --status '5CVIZUzyIvdQxHHq' \
    --userId 'ccS1FcWpG05zh4cz' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'czRlwNF87HIjnw9g' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'pbiTptdZncNiLjUl' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "kCV3BHkiw72h95VF", "namespace": "zkDszCxlOi9iBs7R", "pod_name": "91iLogZzlXvO5Cr9"}, {"alloc_id": "EuRAKH3trQlEtams", "namespace": "zOcUbqoheTbIpAW2", "pod_name": "bUz7xgXqtyPi72Tl"}, {"alloc_id": "lUGOEfY86LjAZrdb", "namespace": "Q9vMhLxIMM6rkiUE", "pod_name": "OYK3g8B4JZwKPxXP"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'GBI4aubiY7vVAHNd' \
    --endDate 'cAKXWffmIRmYirfi' \
    --gameMode 'm9nfTVqPKCAbQujF' \
    --limit '97' \
    --namespace 'nDCLYoLFL2QJoD0t' \
    --next '7N7IrZnLspQbua0q' \
    --partyId 'rpTWpbwOQfEEJQoK' \
    --podName 'z0yzOlZTKaLNFlj0' \
    --previous 'YDyFd8plhFX6x49N' \
    --provider 'bJqDYfiA4mclAWmm' \
    --region 'RgLEupGvGcKqUnC5' \
    --sessionId 'lG844lwns4oLlSHN' \
    --startDate 'AFXyZhq7RMOkR4NH' \
    --status 'ArzmpbSAfObVf5pw' \
    --userId '9dJ9wnO1ZMN9Mt29' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE