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
    --body '{"name": "1ihxPVHv"}' \
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
    --body '{"token": "OxmBZwpc"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'XRseK3Jt' \
    --count '250' \
    --endDate '1GE4OYn0' \
    --fleetID '03lj2jd7' \
    --imageID 'clSd5FoB' \
    --maxSize '95' \
    --minSize '56' \
    --offset '54' \
    --region 'DgoLzF4M' \
    --serverId 'PTlnWBt7' \
    --startDate 'XsawRDxP' \
    --status '9X5MTCKV' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'yhCm0n6m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'hAnijNxc' \
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
    --body '{"active": true, "claimKeys": ["xQkEHIdU", "xu02UYZR", "NhC7md9Q"], "dsHostConfiguration": {"instanceId": "4KVJSvlr", "instanceType": "rl18dlSf", "serversPerVm": 20}, "imageDeploymentProfile": {"commandLine": "P5HvW6PG", "imageId": "Ml6u2NK5", "portConfigurations": [{"name": "v1b9d75f", "protocol": "wmJcZ3Zm"}, {"name": "GIEjL0Vw", "protocol": "4j4YtRGV"}, {"name": "Uy1ou7cS", "protocol": "wspcfTyD"}], "timeout": {"creation": 81, "drain": 45, "session": 70, "unresponsive": 33}}, "name": "GfCj6otf", "regions": [{"bufferSize": 15, "maxServerCount": 35, "minServerCount": 74, "region": "MsAhSI5p"}, {"bufferSize": 50, "maxServerCount": 11, "minServerCount": 96, "region": "zY72QiZT"}, {"bufferSize": 59, "maxServerCount": 36, "minServerCount": 38, "region": "Sp2qM6JR"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 26}, "success": {"collect": false, "percentage": 84}}, "logs": {"crashed": {"collect": false, "percentage": 86}, "success": {"collect": true, "percentage": 21}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'C0WmVxt6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'onXouPIr' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["nRHMihzF", "VlmgNv7S", "0uZ28Boc"], "dsHostConfiguration": {"instanceId": "ZpZbhXGJ", "instanceType": "qMVTe9o6", "serversPerVm": 62}, "imageDeploymentProfile": {"commandLine": "n2SZl3OB", "imageId": "hIQ4CLsw", "portConfigurations": [{"name": "YfSaZaFR", "protocol": "6OQK43WU"}, {"name": "dscvK5Me", "protocol": "JcOCxiWd"}, {"name": "PMCtyC1o", "protocol": "T5TNqMRS"}], "timeout": {"creation": 93, "drain": 26, "session": 51, "unresponsive": 59}}, "name": "MQpPF9JB", "regions": [{"bufferSize": 41, "maxServerCount": 28, "minServerCount": 76, "region": "b3iIQWdR"}, {"bufferSize": 92, "maxServerCount": 44, "minServerCount": 72, "region": "B4jYMTi7"}, {"bufferSize": 79, "maxServerCount": 67, "minServerCount": 21, "region": "4CfZSPNx"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 50}, "success": {"collect": true, "percentage": 60}}, "logs": {"crashed": {"collect": true, "percentage": 57}, "success": {"collect": true, "percentage": 82}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'lBBjPk5L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '9mt89Dbp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'Xnzr0mo9' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 18}, "success": {"collect": true, "percentage": 17}}, "logs": {"crashed": {"collect": false, "percentage": 64}, "success": {"collect": false, "percentage": 41}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'PyuBDTWv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'Ow15EVUf' \
    --namespace $AB_NAMESPACE \
    --count '74' \
    --offset '79' \
    --reason 'HF738oei' \
    --region 'kaIG7jhL' \
    --serverId 'jy2TNeNf' \
    --sortDirection '85rL9SsS' \
    --status 'dRPzSwWQ' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'pqVKAxoP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '7FPKHbzo' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["CMPlCSq0", "08PKRGbH", "1GwEYNiC"], "isProtected": false, "name": "iPoqjXIK", "removedTags": ["MKTnE5q5", "SoZBYmi2", "19WO8L77"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'wYHqxhv1' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'N0BEZHbs' \
    --body '{"status": "2Psq4A7U"}' \
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
    --serverID '3LDWPk2y' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'lVu3N8kP' \
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
    --fleetID 'R7jiwKa4' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "YIKMZdFg", "sessionId": "n8Z3MSzz"}' \
    > test.out 2>&1
eval_tap $? 31 'FleetClaimByID' test.out

#- 32 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'PdHzqCm8' \
    > test.out 2>&1
eval_tap $? 32 'LocalWatchdogConnect' test.out

#- 33 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["f1pgoor3", "recpOYlj", "kpgUkLQN"], "regions": ["QlWeauM6", "ZedEJxrG", "wOBBkVX5"], "sessionId": "9PDkNik8"}' \
    > test.out 2>&1
eval_tap $? 33 'FleetClaimByKeys' test.out

#- 34 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'etaopUM6' \
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