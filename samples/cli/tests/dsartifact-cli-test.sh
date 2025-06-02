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
    --limit '45' \
    --next 'zkrVd14J' \
    --nodeIP 'LTEoIK7D' \
    --previous 'ALmQlzgB' \
    > test.out 2>&1
eval_tap $? 2 'ListNodesIPAddress' test.out

#- 3 DeleteNodeByID
samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'rwoPTCVj' \
    --podName 'sd8zSl5X' \
    > test.out 2>&1
eval_tap $? 3 'DeleteNodeByID' test.out

#- 4 ListQueue
samples/cli/sample-apps Dsartifact listQueue \
    --limit '79' \
    --next 'qv72usMh' \
    --previous '4E05ly5L' \
    --nodeIP 'fno1coBq' \
    > test.out 2>&1
eval_tap $? 4 'ListQueue' test.out

#- 5 GetActiveQueue
samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'dGtZmD90' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveQueue' test.out

#- 6 SetActiveQueue
samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP '0I7TjtFK' \
    --podName 'UjOXccbc' \
    > test.out 2>&1
eval_tap $? 6 'SetActiveQueue' test.out

#- 7 DeleteActiveQueue
samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'IXBwrJQM' \
    > test.out 2>&1
eval_tap $? 7 'DeleteActiveQueue' test.out

#- 8 ReportFailedUpload
samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'WWLW2YqH' \
    --podName 'z2oAkbAE' \
    > test.out 2>&1
eval_tap $? 8 'ReportFailedUpload' test.out

#- 9 DeleteQueue
samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace $AB_NAMESPACE \
    --nodeIP 'Hy3iIvjL' \
    --podName 'CEMz0heh' \
    > test.out 2>&1
eval_tap $? 9 'DeleteQueue' test.out

#- 10 ListAllActiveQueue
samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --next 'WCy8fs09' \
    --nodeIP 'V3vohMxS' \
    --podName 'bFR6VUdH' \
    --previous '97I9AQVM' \
    > test.out 2>&1
eval_tap $? 10 'ListAllActiveQueue' test.out

#- 11 ListAllQueue
samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace $AB_NAMESPACE \
    --excludeUploading 'false' \
    --limit '27' \
    --next 'lNsMPJMM' \
    --nodeIP 'ThwBWEZI' \
    --order 'iHjCy1EJ' \
    --podName 'BaL7qtRY' \
    --previous '4Vz85bvu' \
    > test.out 2>&1
eval_tap $? 11 'ListAllQueue' test.out

#- 12 ListTerminatedServersWithNamespace
samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace $AB_NAMESPACE \
    --deployment 'E4TKOply' \
    --gameMode 'N0wtFv4K' \
    --limit '58' \
    --next 'IniX0UVo' \
    --partyId 'NHsiGIl5' \
    --podName 'Iy8oPOsp' \
    --previous 'rN2dVYOq' \
    --provider 'rNVLPEWv' \
    --region '8yNu39F6' \
    --sessionId 'QX65fvTW' \
    --userId 'zZ2j3Unx' \
    > test.out 2>&1
eval_tap $? 12 'ListTerminatedServersWithNamespace' test.out

#- 13 DownloadServerArtifacts
samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace $AB_NAMESPACE \
    --podName 'W9wH3Aej' \
    > test.out 2>&1
eval_tap $? 13 'DownloadServerArtifacts' test.out

#- 14 CheckServerArtifact
samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace $AB_NAMESPACE \
    --podName 'QpzGpT7I' \
    > test.out 2>&1
eval_tap $? 14 'CheckServerArtifact' test.out

#- 15 ListTerminatedServers
samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'C0hjPmNP' \
    --gameMode '1CYFlDlP' \
    --limit '71' \
    --next '8GQO4j7i' \
    --partyId 'W1kEH5yT' \
    --podName 'T070AoVx' \
    --previous '2kGJ7Q09' \
    --provider '7NzjVloL' \
    --region 'C2OVboay' \
    --sessionId 'x7QW9tfZ' \
    --userId 'PWUAes4c' \
    > test.out 2>&1
eval_tap $? 15 'ListTerminatedServers' test.out

#- 16 PublicGetMessages
samples/cli/sample-apps Dsartifact publicGetMessages \
    > test.out 2>&1
eval_tap $? 16 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE