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
echo "1..26"

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
    --body '{"name": "Yb1eUn5h"}' \
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
    --body '{"token": "P010bGKO"}' \
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
    --body '{"active": true, "claimKeys": ["1yiwTD65", "easLaTjq", "7WuNPdmt"], "dsHostConfiguration": {"instanceId": "pkZvCcjE", "instanceType": "qz3T2X2R", "serversPerVm": 81}, "imageDeploymentProfile": {"commandLine": "6d5hDUDk", "imageId": "cepCi3Ez", "portConfigurations": [{"name": "7fpMKXo4", "protocol": "GgA0QGDT"}, {"name": "nCOjQFgQ", "protocol": "pLIfc0H4"}, {"name": "0JSh8ln7", "protocol": "FAVMlC6l"}], "timeout": {"creation": 72, "drain": 7, "session": 83, "unresponsive": 30}}, "name": "rDw3kmbK", "regions": [{"bufferSize": 23, "maxServerCount": 72, "minServerCount": 81, "region": "smFvKOEv"}, {"bufferSize": 56, "maxServerCount": 33, "minServerCount": 19, "region": "CLyI96DS"}, {"bufferSize": 99, "maxServerCount": 15, "minServerCount": 74, "region": "VjET9d6i"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'heM4ChqO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '4uPwnEVG' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["cMxtJPoO", "kXJEQelT", "S1zJxqiY"], "dsHostConfiguration": {"instanceId": "4QgQnOsT", "instanceType": "juJyPu3a", "serversPerVm": 36}, "imageDeploymentProfile": {"commandLine": "x3RaJyVD", "imageId": "izG2ampR", "portConfigurations": [{"name": "Cf9io046", "protocol": "18x0SWZ2"}, {"name": "Z8Rh1jNW", "protocol": "sS4lebba"}, {"name": "w4UFxDRG", "protocol": "nvSmVAI3"}], "timeout": {"creation": 91, "drain": 90, "session": 63, "unresponsive": 91}}, "name": "rFEP06Zf", "regions": [{"bufferSize": 29, "maxServerCount": 29, "minServerCount": 91, "region": "hzYchcWb"}, {"bufferSize": 65, "maxServerCount": 71, "minServerCount": 29, "region": "E4YihEcH"}, {"bufferSize": 42, "maxServerCount": 6, "minServerCount": 50, "region": "Ti4FAKFU"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'Ls34rds2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'YrEBiuYy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'zN8r1qws' \
    --namespace $AB_NAMESPACE \
    --count '27' \
    --offset '45' \
    --reason 'y8zXq4OU' \
    --region 'QdShbLqz' \
    --serverId 'N37dySLA' \
    --sortDirection 'IKr77MAP' \
    --status '1Zwyy6Nw' \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID '6w5tU5c8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'Fh4jO0q4' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["pDJWgtmB", "fSrS1htA", "uxQFUCml"], "isProtected": false, "name": "Xiq2X4TZ", "removedTags": ["kNVOAzoW", "2obdUlBS", "H0oTT8R9"]}' \
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
    --serverID 'erHMziVA' \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'Hrokij3i' \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'MFjmLKEf' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "3VxMxVTX"}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["D3VKSq9O", "RKP3kwqn", "vifkrNNv"], "regions": ["PFX9A00U", "jVSAicS5", "a54gphyM"]}' \
    > test.out 2>&1
eval_tap $? 23 'FleetClaimByKeys' test.out

#- 24 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'lXAgxboe' \
    > test.out 2>&1
eval_tap $? 24 'WatchdogConnect' test.out

#- 25 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 25 'Func1' test.out

#- 26 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 26 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE