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
echo "1..38"

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
    --body '{"name": "UQYWjJqw"}' \
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
    --body '{"token": "1Gv6JIN1"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'Vk0iJLa8' \
    --count '419' \
    --endDate 'iGmrM432' \
    --fleetID 'XJBFpb8T' \
    --imageID '8JoJNVXw' \
    --maxSize '50' \
    --minSize '11' \
    --offset '26' \
    --region 'CCNRq9ZG' \
    --serverId 'mysAJfot' \
    --startDate 'PdPTbwXH' \
    --status 'HC4Met9p' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'Nkg6cQX7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'LWxPRDVt' \
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
    --body '{"active": false, "claimKeys": ["6YvHfa7X", "kdAabHHq", "LN0iL4jr"], "dsHostConfiguration": {"instanceId": "uE8fi6zx", "instanceType": "IGE1qyFy", "serversPerVm": 62}, "imageDeploymentProfile": {"commandLine": "LhrA5lJQ", "imageId": "EEstMdaq", "portConfigurations": [{"name": "Gu82wcIm", "protocol": "poOEGewG"}, {"name": "qfifhuaQ", "protocol": "GuVsG71n"}, {"name": "QYVCypvk", "protocol": "zv1xYQSZ"}], "timeout": {"creation": 89, "drain": 95, "session": 46, "unresponsive": 70}}, "name": "8ch5Iy57", "regions": [{"bufferSize": 39, "maxServerCount": 88, "minServerCount": 72, "region": "yPfY3T9g"}, {"bufferSize": 52, "maxServerCount": 98, "minServerCount": 90, "region": "qJnp57R3"}, {"bufferSize": 13, "maxServerCount": 80, "minServerCount": 28, "region": "DaLWl0Wn"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 61}, "success": {"collect": true, "percentage": 35}}, "logs": {"crashed": {"collect": false, "percentage": 87}, "success": {"collect": true, "percentage": 8}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'o5qhBwXh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'zQ4nE9Qm' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["kjIxhyjJ", "hrRPbq4N", "JgAo6GTE"], "dsHostConfiguration": {"instanceId": "YYA0CFve", "instanceType": "WgBXVXft", "serversPerVm": 79}, "imageDeploymentProfile": {"commandLine": "G0PWXx1w", "imageId": "ZyJitdG3", "portConfigurations": [{"name": "L8BMuhRV", "protocol": "7tyE8FU7"}, {"name": "wSf452ub", "protocol": "O1DbjZ94"}, {"name": "QlmNnBra", "protocol": "7K3jkNqo"}], "timeout": {"creation": 55, "drain": 54, "session": 23, "unresponsive": 86}}, "name": "MjON86YM", "regions": [{"bufferSize": 62, "maxServerCount": 94, "minServerCount": 98, "region": "yUJ3GUH9"}, {"bufferSize": 44, "maxServerCount": 14, "minServerCount": 9, "region": "Rrxay9Cp"}, {"bufferSize": 72, "maxServerCount": 71, "minServerCount": 87, "region": "bFT62Uao"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 32}, "success": {"collect": false, "percentage": 47}}, "logs": {"crashed": {"collect": true, "percentage": 75}, "success": {"collect": false, "percentage": 70}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'ci61mV2v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'MrqlJYTJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'I4omfzm9' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 11}, "success": {"collect": false, "percentage": 86}}, "logs": {"crashed": {"collect": false, "percentage": 92}, "success": {"collect": false, "percentage": 56}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '3xtvyunl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'mNBDsqkZ' \
    --namespace $AB_NAMESPACE \
    --count '76' \
    --offset '60' \
    --reason 'VNEZow8G' \
    --region 'ImuteiHW' \
    --serverId 'V5PoaM8Y' \
    --sortDirection 'WQTLaGiH' \
    --status 'icMnxUGy' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'TOWRh1OT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'vXP9dtvm' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["QxY1OVxN", "wcknsqB9", "HO9vscbt"], "isProtected": true, "name": "cWl0Q58W", "removedTags": ["6fEqvwOv", "MdbabtL5", "hPCl6YJS"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status '6l65f3vI' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'ylR8P5iE' \
    --body '{"status": "DSCgA1Oa"}' \
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
    --serverID 'aMxfeD1r' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'MvpWtwwg' \
    > test.out 2>&1
eval_tap $? 28 'FleetServerConnectionInfo' test.out

#- 29 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'VNp9zPQ4' \
    > test.out 2>&1
eval_tap $? 29 'ServerHistory' test.out

#- 30 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'InfoSupportedInstances' test.out

#- 31 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'AccountGet' test.out

#- 32 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'KWR5D2Qr' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "hzvwrvr1", "sessionId": "MHkEaZDX"}' \
    > test.out 2>&1
eval_tap $? 32 'FleetClaimByID' test.out

#- 33 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'HPgD4oBc' \
    > test.out 2>&1
eval_tap $? 33 'LocalWatchdogConnect' test.out

#- 34 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["XIvst05u", "fT8LDrRN", "qvl9zA7Q"], "regions": ["ggzt7Vhd", "EAQgBW88", "lhC6OzOP"], "sessionId": "xMiY1Q6G"}' \
    > test.out 2>&1
eval_tap $? 34 'FleetClaimByKeys' test.out

#- 35 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'bGcDwCLr' \
    > test.out 2>&1
eval_tap $? 35 'WatchdogConnect' test.out

#- 36 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 36 'UploadURLGet' test.out

#- 37 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 37 'Func1' test.out

#- 38 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 38 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE