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
echo "1..37"

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

#- 4 AdminAccountGet
samples/cli/sample-apps Ams adminAccountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminAccountGet' test.out

#- 5 AdminAccountCreate
samples/cli/sample-apps Ams adminAccountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "b20oGyX5"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
samples/cli/sample-apps Ams adminAccountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLinkTokenPost
samples/cli/sample-apps Ams adminAccountLinkTokenPost \
    --namespace $AB_NAMESPACE \
    --body '{"token": "ViHOwoRb"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'BOoU1rM1' \
    --count '11' \
    --endDate '98SAYeEp' \
    --fleetID 'AEpba1IR' \
    --imageID 'nng1iqqN' \
    --maxSize '20' \
    --minSize '49' \
    --offset '70' \
    --region '2jRTJH43' \
    --serverId 'Q5ppUnUQ' \
    --startDate 'eLM8UyNf' \
    --status '4SRurpax' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'HxiTXTvu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'CJxr4rlU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetList' test.out

#- 13 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["mabJJuAs", "ajwWTFth", "HYRpgXET"], "dsHostConfiguration": {"instanceId": "yfDkg2nk", "instanceType": "T0OlA1EB", "serversPerVm": 46}, "imageDeploymentProfile": {"commandLine": "rJFq0gnN", "imageId": "jGUz764o", "portConfigurations": [{"name": "Mw1tOBir", "protocol": "c4vyc6a7"}, {"name": "csexmiSV", "protocol": "siJVCAEk"}, {"name": "3ZOkmjYY", "protocol": "nrSTyq43"}], "timeout": {"creation": 78, "drain": 29, "session": 6, "unresponsive": 94}}, "name": "VldmCBpU", "regions": [{"bufferSize": 53, "maxServerCount": 85, "minServerCount": 67, "region": "bRiJUmPI"}, {"bufferSize": 49, "maxServerCount": 53, "minServerCount": 66, "region": "vgJjiCyw"}, {"bufferSize": 56, "maxServerCount": 88, "minServerCount": 36, "region": "kqhlRAHJ"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 80}, "success": {"collect": true, "percentage": 17}}, "logs": {"crashed": {"collect": false, "percentage": 15}, "success": {"collect": false, "percentage": 38}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'CSjgIGoW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'EnxtzqYT' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["dK2mocJH", "IH2L0afO", "5bphdQfo"], "dsHostConfiguration": {"instanceId": "5MRuMMOG", "instanceType": "uDBYDFmC", "serversPerVm": 75}, "imageDeploymentProfile": {"commandLine": "b2EvUK5s", "imageId": "E9bBK8tx", "portConfigurations": [{"name": "IELNxMUb", "protocol": "QJuqAHuf"}, {"name": "yQ22jEVs", "protocol": "gmVJsrjA"}, {"name": "CAj3JcAs", "protocol": "fJniL7Np"}], "timeout": {"creation": 71, "drain": 52, "session": 16, "unresponsive": 4}}, "name": "MKjdYBni", "regions": [{"bufferSize": 42, "maxServerCount": 68, "minServerCount": 61, "region": "bpVp3kZT"}, {"bufferSize": 54, "maxServerCount": 93, "minServerCount": 46, "region": "KXbW5s25"}, {"bufferSize": 67, "maxServerCount": 90, "minServerCount": 69, "region": "ZgtDtL83"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 32}, "success": {"collect": false, "percentage": 1}}, "logs": {"crashed": {"collect": false, "percentage": 31}, "success": {"collect": true, "percentage": 23}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'B6afl3eE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'COpgit6g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'sl936qXa' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 41}, "success": {"collect": false, "percentage": 2}}, "logs": {"crashed": {"collect": false, "percentage": 85}, "success": {"collect": true, "percentage": 59}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'knVPGRrE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'ItRvBj1G' \
    --namespace $AB_NAMESPACE \
    --count '69' \
    --offset '30' \
    --reason 't58Onecg' \
    --region 'RMoJhwvN' \
    --serverId '0JQzZkvD' \
    --sortDirection 'ndfSrQbn' \
    --status '7IZSoE2h' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'hLM7H5QE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'DLN2zCZg' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["hy1bq9SG", "7x1bdxvF", "r6e7x171"], "isProtected": true, "name": "M89VqaYl", "removedTags": ["YlrAy1tU", "fCdsd3K3", "c2IPCiu9"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'HM1y5wdE' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'OqTQL6SI' \
    --body '{"status": "fTJ9dzQN"}' \
    > test.out 2>&1
eval_tap $? 25 'QoSRegionsUpdate' test.out

#- 26 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'InfoRegions' test.out

#- 27 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID '3oYg3onU' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'nEqK70CG' \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'AccountGet' test.out

#- 31 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'AO9icuaq' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "kqIwEirX"}' \
    > test.out 2>&1
eval_tap $? 31 'FleetClaimByID' test.out

#- 32 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'b5SNbmVR' \
    > test.out 2>&1
eval_tap $? 32 'LocalWatchdogConnect' test.out

#- 33 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["cZwiPuLw", "PXuo33B3", "G5uJibOF"], "regions": ["WSv2o1wX", "eooD5BLq", "FNVZxvh4"]}' \
    > test.out 2>&1
eval_tap $? 33 'FleetClaimByKeys' test.out

#- 34 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '9ExdcI60' \
    > test.out 2>&1
eval_tap $? 34 'WatchdogConnect' test.out

#- 35 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 35 'UploadURLGet' test.out

#- 36 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 36 'Func1' test.out

#- 37 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 37 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE