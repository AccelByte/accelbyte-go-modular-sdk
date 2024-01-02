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
echo "1..35"

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
    --body '{"name": "RSbszBGm"}' \
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
    --body '{"token": "jp64KW2a"}' \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'A63PkE0Y' \
    --endDate 'FLLlj7FJ' \
    --fleetID 'SK8e76uT' \
    --imageID '79vSYDv1' \
    --maxSize '61' \
    --minSize '99' \
    --region '9XI9SoXq' \
    --startDate 'uMPKkF1s' \
    --status 'J2zlvH0e' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'UtZIsQeU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID '2G5jY6cc' \
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
    --body '{"active": false, "claimKeys": ["wUEcYV4J", "jyKApLHX", "hO6CaF0o"], "dsHostConfiguration": {"instanceId": "5qOuoA3l", "instanceType": "9RZuCTPN", "serversPerVm": 93}, "imageDeploymentProfile": {"commandLine": "5AhIdWC4", "imageId": "AFkLzrEU", "portConfigurations": [{"name": "LxOf8ci7", "protocol": "urvSaT15"}, {"name": "jfU63zhW", "protocol": "2PAfbQwp"}, {"name": "SCoVKcTc", "protocol": "OlxqHekm"}], "timeout": {"creation": 43, "drain": 84, "session": 21, "unresponsive": 50}}, "name": "kxO6F6x7", "regions": [{"bufferSize": 63, "maxServerCount": 92, "minServerCount": 77, "region": "ifMSmn79"}, {"bufferSize": 5, "maxServerCount": 73, "minServerCount": 54, "region": "IWRNjxI7"}, {"bufferSize": 9, "maxServerCount": 34, "minServerCount": 46, "region": "tlJ2qDAs"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 92}, "success": {"collect": false, "percentage": 70}}, "logs": {"crashed": {"collect": true, "percentage": 41}, "success": {"collect": true, "percentage": 63}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'cFAJbPaL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'ymAtNe1T' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["MwIbGH2x", "nlkGIOPM", "nPElEe75"], "dsHostConfiguration": {"instanceId": "3gXTuVnT", "instanceType": "SEsaGVTd", "serversPerVm": 98}, "imageDeploymentProfile": {"commandLine": "4bTxQtcw", "imageId": "3yInRXg7", "portConfigurations": [{"name": "3znbW96f", "protocol": "OH9bFVSx"}, {"name": "Csis3SNB", "protocol": "HWKMRXuS"}, {"name": "LCcdzncw", "protocol": "UifISiBG"}], "timeout": {"creation": 45, "drain": 59, "session": 39, "unresponsive": 22}}, "name": "KB2aYfKC", "regions": [{"bufferSize": 84, "maxServerCount": 68, "minServerCount": 9, "region": "PLZgx5GF"}, {"bufferSize": 8, "maxServerCount": 99, "minServerCount": 16, "region": "J6WaCNLg"}, {"bufferSize": 86, "maxServerCount": 17, "minServerCount": 7, "region": "cdHyzjxJ"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 44}, "success": {"collect": true, "percentage": 8}}, "logs": {"crashed": {"collect": true, "percentage": 74}, "success": {"collect": true, "percentage": 70}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'woM3ccDp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'gZ12fnCH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'DkIuwung' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 96}, "success": {"collect": true, "percentage": 21}}, "logs": {"crashed": {"collect": false, "percentage": 15}, "success": {"collect": false, "percentage": 68}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'A5bugvoc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'kc31ScY1' \
    --namespace $AB_NAMESPACE \
    --count '41' \
    --offset '0' \
    --reason '3GXroozO' \
    --region 'XV8c1Pdt' \
    --serverId 'bfTp0N49' \
    --sortDirection 'mZiDzaGR' \
    --status 'rCoR9ItE' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'boELxApS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'LMaCsF7q' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["ApKqEJia", "H9WtJbrN", "8XCe25FW"], "isProtected": false, "name": "f7ue7rs3", "removedTags": ["TfAA2cHN", "kLhuQu5v", "3JkOMjJn"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'Edgb0PaX' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'FO37P9T5' \
    --body '{"status": "KlHNlFcl"}' \
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
    --serverID '06JG6AY5' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'qVTtT4WX' \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'TEagI8Ot' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "JyujPPTp"}' \
    > test.out 2>&1
eval_tap $? 30 'FleetClaimByID' test.out

#- 31 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '4vWh0bsm' \
    > test.out 2>&1
eval_tap $? 31 'LocalWatchdogConnect' test.out

#- 32 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["pkZCsOpi", "DsJBh1Jb", "suNkw0qA"], "regions": ["65keN1lD", "JmFwE4Zt", "DVO0BMBj"]}' \
    > test.out 2>&1
eval_tap $? 32 'FleetClaimByKeys' test.out

#- 33 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'OchIyltW' \
    > test.out 2>&1
eval_tap $? 33 'WatchdogConnect' test.out

#- 34 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 34 'Func1' test.out

#- 35 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 35 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE