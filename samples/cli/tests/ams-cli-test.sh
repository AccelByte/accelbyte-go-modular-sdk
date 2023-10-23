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
echo "1..27"

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

#- 2 AuthCheck
samples/cli/sample-apps Ams authCheck \
    > test.out 2>&1
eval_tap $? 2 'AuthCheck' test.out

#- 3 PortalHealthCheck
samples/cli/sample-apps Ams portalHealthCheck \
    > test.out 2>&1
eval_tap $? 3 'PortalHealthCheck' test.out

#- 4 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AccountGet' test.out

#- 5 AccountCreate
samples/cli/sample-apps Ams accountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "GQe6Goj2"}' \
    > test.out 2>&1
eval_tap $? 5 'AccountCreate' test.out

#- 6 AccountLinkTokenGet
samples/cli/sample-apps Ams accountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AccountLinkTokenGet' test.out

#- 7 AccountLink
samples/cli/sample-apps Ams accountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "yo1pDZQf"}' \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

#- 8 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetList' test.out

#- 9 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["a6MfAGzw", "uwUpmjLj", "1lPdRhp4"], "dsHostConfiguration": {"instanceId": "nPqseSAz", "instanceType": "8ggB7sXB", "serversPerVm": 1}, "imageDeploymentProfile": {"commandLine": "p5erEdU3", "imageId": "8ymTHfVC", "portConfigurations": [{"name": "WDPKR3RZ", "protocol": "EGYp7H9I"}, {"name": "VUPEpl5u", "protocol": "CUj9GMrc"}, {"name": "DlYG5jn8", "protocol": "ducqdqBv"}], "timeout": {"creation": 86, "drain": 25, "session": 98, "unresponsive": 73}}, "name": "CktD2CAR", "regions": [{"bufferSize": 90, "maxServerCount": 89, "minServerCount": 42, "region": "xE2SSh2U"}, {"bufferSize": 74, "maxServerCount": 46, "minServerCount": 74, "region": "Qb8uvve8"}, {"bufferSize": 47, "maxServerCount": 57, "minServerCount": 34, "region": "HzXddRJp"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'LUHqbyfb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'IRxWJjdl' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["g6e2l1ZU", "VNoKvPM8", "TWrd8H1m"], "dsHostConfiguration": {"instanceId": "i1Z5ynWR", "instanceType": "nb28xjRG", "serversPerVm": 6}, "imageDeploymentProfile": {"commandLine": "sL0VL9Oa", "imageId": "RylWumjf", "portConfigurations": [{"name": "3KCEe18k", "protocol": "ADF1nDZ0"}, {"name": "mT43BkDh", "protocol": "GsPkpqQC"}, {"name": "I0wXKdLZ", "protocol": "cNp9KPoi"}], "timeout": {"creation": 1, "drain": 92, "session": 9, "unresponsive": 2}}, "name": "SiN7cQGi", "regions": [{"bufferSize": 1, "maxServerCount": 78, "minServerCount": 96, "region": "Jz5zBvK9"}, {"bufferSize": 22, "maxServerCount": 81, "minServerCount": 51, "region": "xdsU0M4f"}, {"bufferSize": 83, "maxServerCount": 51, "minServerCount": 96, "region": "iaiJqknI"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'jgzZ0deI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'OKjPJwZf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'LOLGp12y' \
    --namespace $AB_NAMESPACE \
    --count '71' \
    --offset '44' \
    --reason 'rGukOO8f' \
    --region 'idWvzNUk' \
    --serverId 'ZzcoVcFj' \
    --sortDirection 'LlwIWU65' \
    --status 'NGrx2Glm' \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'Xq5xwAI8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'dvVP1Hxx' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["bhLhzF9k", "QQ9ET4YI", "YygZ7oHF"], "isProtected": false, "name": "4MlMVkyM", "removedTags": ["wmqa04QZ", "68y5akj2", "GlZ1CoWA"]}' \
    > test.out 2>&1
eval_tap $? 17 'ImagePatch' test.out

#- 18 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'InfoRegions' test.out

#- 19 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'N7QBDZcc' \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'OYRazlhq' \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'oKEZq4za' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "BXsoMfeA"}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '5ZUwoi9F' \
    > test.out 2>&1
eval_tap $? 23 'LocalWatchdogConnect' test.out

#- 24 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["NE0DGlCd", "KocwF0I7", "bKtRrgK0"], "regions": ["JZPeQ4cn", "R9Qqcs1t", "piULaezc"]}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByKeys' test.out

#- 25 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '3kSJbmZj' \
    > test.out 2>&1
eval_tap $? 25 'WatchdogConnect' test.out

#- 26 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 26 'Func1' test.out

#- 27 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 27 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE