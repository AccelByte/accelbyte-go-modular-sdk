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
echo "1..30"

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
    --body '{"name": "so1iQdfx"}' \
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
    --body '{"token": "xN9g90uj"}' \
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
    --body '{"active": false, "claimKeys": ["td7zZwK4", "Z1Js3HXt", "sF3DSkSb"], "dsHostConfiguration": {"instanceId": "L0jxPScV", "instanceType": "CPBFTnkS", "serversPerVm": 0}, "imageDeploymentProfile": {"commandLine": "0EK7lXZK", "imageId": "EEwjBJPQ", "portConfigurations": [{"name": "Q8rd2BSJ", "protocol": "62CILLdS"}, {"name": "5LagQw3G", "protocol": "C71Ih77b"}, {"name": "9yI66WHN", "protocol": "Mh6O1sqC"}], "timeout": {"creation": 27, "drain": 62, "session": 32, "unresponsive": 98}}, "name": "xSI8n7W4", "regions": [{"bufferSize": 82, "maxServerCount": 16, "minServerCount": 42, "region": "HaDD14oS"}, {"bufferSize": 55, "maxServerCount": 23, "minServerCount": 35, "region": "aJlZXEIx"}, {"bufferSize": 88, "maxServerCount": 16, "minServerCount": 53, "region": "iSEDkNSt"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '9ziTLzei' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'w0iF328B' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["DarQB6tQ", "Mmg8FVN9", "GwmLbB2Z"], "dsHostConfiguration": {"instanceId": "Azjkw5lg", "instanceType": "dHhQ6n58", "serversPerVm": 91}, "imageDeploymentProfile": {"commandLine": "7UftJnxP", "imageId": "VgDBVkpH", "portConfigurations": [{"name": "NzMU6xnY", "protocol": "hXfSXvF5"}, {"name": "5PydI4H6", "protocol": "28t7Gg4L"}, {"name": "MtcR0evS", "protocol": "w5Tnu88x"}], "timeout": {"creation": 71, "drain": 33, "session": 49, "unresponsive": 32}}, "name": "iWiNSeC8", "regions": [{"bufferSize": 66, "maxServerCount": 42, "minServerCount": 16, "region": "oOBRPT37"}, {"bufferSize": 95, "maxServerCount": 51, "minServerCount": 9, "region": "5dQNUjhF"}, {"bufferSize": 11, "maxServerCount": 100, "minServerCount": 84, "region": "5SDgkEhG"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'kSjqslml' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'cehW5IOY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetArtifactSamplingRulesGet' test.out

#- 14 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '7jB0vmM0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetServers' test.out

#- 15 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'vlvcipxQ' \
    --namespace $AB_NAMESPACE \
    --count '72' \
    --offset '61' \
    --reason 'ihQZMCNZ' \
    --region 'eWNZIoLi' \
    --serverId '289igU5f' \
    --sortDirection 'TJOFvYzN' \
    --status 'Ckuuk89L' \
    > test.out 2>&1
eval_tap $? 15 'FleetServerHistory' test.out

#- 16 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageList' test.out

#- 17 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'm4GKODvz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'ImageGet' test.out

#- 18 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'qycHIUi0' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["M1m7nn8h", "O520qQUq", "rejoY3A9"], "isProtected": false, "name": "977wgeUo", "removedTags": ["6rR9r8Zt", "ece6Y200", "EfwUUKmK"]}' \
    > test.out 2>&1
eval_tap $? 18 'ImagePatch' test.out

#- 19 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'AKjMPUuQ' \
    --body '{"status": "pi1XmIZT"}' \
    > test.out 2>&1
eval_tap $? 19 'QoSRegionsUpdate' test.out

#- 20 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'InfoRegions' test.out

#- 21 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID '34U16FQm' \
    > test.out 2>&1
eval_tap $? 21 'FleetServerInfo' test.out

#- 22 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'fHNIl8XR' \
    > test.out 2>&1
eval_tap $? 22 'ServerHistory' test.out

#- 23 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'InfoSupportedInstances' test.out

#- 24 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'gSBN0UGP' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "lWSuPwYT"}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByID' test.out

#- 25 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '44IRtj5L' \
    > test.out 2>&1
eval_tap $? 25 'LocalWatchdogConnect' test.out

#- 26 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'mNfww3qn' \
    > test.out 2>&1
eval_tap $? 26 'QoSRegionsGet' test.out

#- 27 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["XVg5Kw0u", "FoSOB15g", "aRzoHtSy"], "regions": ["CJ32Ho1c", "oxHgz4Mj", "oocYmcMv"]}' \
    > test.out 2>&1
eval_tap $? 27 'FleetClaimByKeys' test.out

#- 28 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'xGHecGKb' \
    > test.out 2>&1
eval_tap $? 28 'WatchdogConnect' test.out

#- 29 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 29 'Func1' test.out

#- 30 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 30 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE