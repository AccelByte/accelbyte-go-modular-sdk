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
    --body '{"name": "uexC2oak"}' \
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
    --body '{"token": "RPbFepFT"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType '3gDpuM5M' \
    --count '58' \
    --endDate 'spNbdgQ8' \
    --fleetID 'Qv41Ikws' \
    --imageID 'Y1e1BYll' \
    --maxSize '15' \
    --minSize '70' \
    --offset '42' \
    --region 'afACSjKe' \
    --serverId 'uuDNOvWR' \
    --startDate 'PFhsi0qL' \
    --status 'XxgNoAVD' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID '3pcbhIp7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'dyvv5pct' \
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
    --body '{"active": true, "claimKeys": ["XJdE6ZKQ", "09OPKyIl", "cJiCIefq"], "dsHostConfiguration": {"instanceId": "5a2QYCjw", "instanceType": "mF8PclJl", "serversPerVm": 3}, "imageDeploymentProfile": {"commandLine": "sEyqILgp", "imageId": "UQfLGRvx", "portConfigurations": [{"name": "WWjya3qj", "protocol": "j9ME2Zld"}, {"name": "Hp83mxC9", "protocol": "0bG9mziM"}, {"name": "tc6N1efH", "protocol": "wlCWbsn9"}], "timeout": {"creation": 60, "drain": 60, "session": 91, "unresponsive": 87}}, "name": "FWUyrjRs", "regions": [{"bufferSize": 28, "maxServerCount": 32, "minServerCount": 63, "region": "pwJeYhXN"}, {"bufferSize": 30, "maxServerCount": 85, "minServerCount": 67, "region": "xgJUDbwA"}, {"bufferSize": 57, "maxServerCount": 96, "minServerCount": 57, "region": "BrBkmkyW"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 4}, "success": {"collect": false, "percentage": 59}}, "logs": {"crashed": {"collect": false, "percentage": 84}, "success": {"collect": false, "percentage": 82}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'm22LYyjh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'Ja3iv9X0' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["KbafAg2K", "15FPcmDn", "iCIHhGgm"], "dsHostConfiguration": {"instanceId": "gcWpXpY6", "instanceType": "jsoErPJb", "serversPerVm": 71}, "imageDeploymentProfile": {"commandLine": "viftnlwd", "imageId": "7VjFGFtN", "portConfigurations": [{"name": "tWPdSH6y", "protocol": "BEJ5TJ9n"}, {"name": "W1om31uF", "protocol": "bygK8Ujp"}, {"name": "bmuYryGW", "protocol": "q06eWGaG"}], "timeout": {"creation": 34, "drain": 4, "session": 29, "unresponsive": 92}}, "name": "AyzJ2iQK", "regions": [{"bufferSize": 18, "maxServerCount": 77, "minServerCount": 47, "region": "evxXlf8M"}, {"bufferSize": 77, "maxServerCount": 86, "minServerCount": 22, "region": "LfYxXxN0"}, {"bufferSize": 17, "maxServerCount": 9, "minServerCount": 22, "region": "UUUum8Zb"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 4}, "success": {"collect": false, "percentage": 22}}, "logs": {"crashed": {"collect": false, "percentage": 55}, "success": {"collect": true, "percentage": 96}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '3S5nOn1U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'q0EkOzH4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'RGB8Lzl5' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 93}, "success": {"collect": false, "percentage": 90}}, "logs": {"crashed": {"collect": false, "percentage": 70}, "success": {"collect": true, "percentage": 51}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'Yk2qGltH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'rHQ168O5' \
    --namespace $AB_NAMESPACE \
    --count '100' \
    --offset '41' \
    --reason 'niHrIyeS' \
    --region 'cXO4Sfvl' \
    --serverId 'TvjRZPwS' \
    --sortDirection 'v2EA1x6a' \
    --status 'VT2i3Qxh' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'hq6AsYvE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'gKXaQQkD' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["T2UQtuKm", "bwdgLK8y", "U2o7dSNN"], "isProtected": true, "name": "VFIkWOk1", "removedTags": ["hOwAxLI9", "q83fvWw1", "tb41LX02"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'hwMvBx88' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'rbawtaVS' \
    --body '{"status": "gQKGh84v"}' \
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
    --serverID 'ERN9cQcl' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'OYaVcaZW' \
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
    --fleetID 'vdpvlOiH' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "opL13IZB"}' \
    > test.out 2>&1
eval_tap $? 31 'FleetClaimByID' test.out

#- 32 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Fj28EetA' \
    > test.out 2>&1
eval_tap $? 32 'LocalWatchdogConnect' test.out

#- 33 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["myworPnJ", "gMbJwj0o", "usEYnw1P"], "regions": ["JeAVhEu2", "AWELLmGZ", "LyNu0qdL"]}' \
    > test.out 2>&1
eval_tap $? 33 'FleetClaimByKeys' test.out

#- 34 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'YfDNIYee' \
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