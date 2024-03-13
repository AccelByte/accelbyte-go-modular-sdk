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
echo "1..16"

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

#- 2 ListNodesIPAddress
samples/cli/sample-apps Dsartifact listNodesIPAddress \
    --limit '55' \
    --next 'pSMtW4tR' \
    --nodeIP 'd7yM7QoB' \
    --previous 'STM08dUy' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'lhhDf95I' \
    --podName 'xgsqyj13' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '83' \
    --next 'UmX3WOiz' \
    --previous 'jYP9EFmB' \
    --nodeIP 'ZKSDoEmC' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'qHSVI961' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'sKwU1i9V' \
    --podName 'kS5AgoaT' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'FMdp3H7E' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'Z2hKfoE4' \
    --podName 'ALpsv6BG' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'F0mHBb7U' \
    --podName '0rd1Lax3' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --next 'IZNxQkbK' \
    --nodeIP 'tcIyKeZ1' \
    --podName 'd91iYIGJ' \
    --previous 'ZmctHACO' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'true' \
    --limit '79' \
    --next '65GpI5nr' \
    --nodeIP 'ia6UFY3Z' \
    --order 'mkvUyGm3' \
    --podName 'Yxzqt5o7' \
    --previous 'WJZMIc1t' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'g89TfM5K' \
    --gameMode 'PtcX8fVH' \
    --limit '84' \
    --next 'K7prkyxz' \
    --partyId 'G7uh8165' \
    --podName 'DPaHqvN2' \
    --previous 'uviMDtkU' \
    --provider 'AiTVJfSv' \
    --region 'EbyrxU2n' \
    --sessionId 'GBtWckMg' \
    --userId 'iwHCeBks' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'damYin1d' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'W0GpWC3j' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment '1zCgCIHo' \
    --gameMode 'aKnD1aBT' \
    --limit '4' \
    --next 'mlLN4hGo' \
    --partyId 'tGV7NEuT' \
    --podName 'eiYO5QTZ' \
    --previous 'HxgNsvzr' \
    --provider '8cv8B2LE' \
    --region 'Nmz3Vv82' \
    --sessionId 'bmvbuJJb' \
    --userId 'kOiCq0aO' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE