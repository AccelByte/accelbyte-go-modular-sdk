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
    --body '{"name": "iY18yM4R"}' \
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
    --body '{"token": "eOneknvz"}' \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'QKKJUXL9' \
    --endDate '1VXzKDcR' \
    --fleetID 'M82I3FkV' \
    --imageID 'Zbg4zAyB' \
    --maxSize '77' \
    --minSize '83' \
    --region '2XZuPLXS' \
    --startDate '2rSkipWS' \
    --status '3ypMEQko' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'CXjka1HS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'Veq4PoUT' \
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
    --body '{"active": false, "claimKeys": ["bnbpMF8m", "0tTWnYde", "JNTm4yXI"], "dsHostConfiguration": {"instanceId": "Y5hzMWeI", "instanceType": "EbpVjdQL", "serversPerVm": 90}, "imageDeploymentProfile": {"commandLine": "RA2QyXxt", "imageId": "hRALZhMi", "portConfigurations": [{"name": "ZMPx2smn", "protocol": "V3o7DKSN"}, {"name": "ykTn5r2P", "protocol": "ikpU7STU"}, {"name": "fhih6BaJ", "protocol": "jiJVXb0R"}], "timeout": {"creation": 14, "drain": 10, "session": 18, "unresponsive": 86}}, "name": "B3ijiVxa", "regions": [{"bufferSize": 70, "maxServerCount": 98, "minServerCount": 86, "region": "wReTpXuB"}, {"bufferSize": 37, "maxServerCount": 28, "minServerCount": 13, "region": "aeNQzGGh"}, {"bufferSize": 53, "maxServerCount": 80, "minServerCount": 49, "region": "Ut1EqJfV"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 12}, "success": {"collect": true, "percentage": 91}}, "logs": {"crashed": {"collect": false, "percentage": 47}, "success": {"collect": true, "percentage": 76}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'GdDD9YfA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'diFafe3c' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["DMUvoBVM", "ynv6zYcw", "8yyKfdrw"], "dsHostConfiguration": {"instanceId": "XwYXpTyR", "instanceType": "Yn1p9XIT", "serversPerVm": 56}, "imageDeploymentProfile": {"commandLine": "0CXV6Czx", "imageId": "zVAD33kr", "portConfigurations": [{"name": "6qekQUSs", "protocol": "KMd0wypq"}, {"name": "dmNc3GYZ", "protocol": "yXf3E2Dq"}, {"name": "il8PomFu", "protocol": "QTSoSmiD"}], "timeout": {"creation": 43, "drain": 45, "session": 47, "unresponsive": 47}}, "name": "48vxsjuH", "regions": [{"bufferSize": 19, "maxServerCount": 70, "minServerCount": 24, "region": "8tAdHBbL"}, {"bufferSize": 24, "maxServerCount": 80, "minServerCount": 7, "region": "x4DzYV9o"}, {"bufferSize": 44, "maxServerCount": 9, "minServerCount": 58, "region": "msWUoKyu"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 83}, "success": {"collect": true, "percentage": 50}}, "logs": {"crashed": {"collect": true, "percentage": 18}, "success": {"collect": true, "percentage": 0}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '4V48dPwN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '8NtUR18G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'dyXlwTHK' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 21}, "success": {"collect": false, "percentage": 25}}, "logs": {"crashed": {"collect": true, "percentage": 96}, "success": {"collect": true, "percentage": 13}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'YiU1DqQh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'zhYACYoa' \
    --namespace $AB_NAMESPACE \
    --count '28' \
    --offset '16' \
    --reason 'l3DIfgKs' \
    --region 'YfgRJ6yM' \
    --serverId 'rw1l5IeZ' \
    --sortDirection 'oo2RXlbb' \
    --status 'zciXAbFB' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'eRZRBr2i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 's0nHLVk8' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["dHyANKub", "sfb3zp4g", "SvFybJzl"], "isProtected": false, "name": "qxmOWO5S", "removedTags": ["aNl69vWF", "1RBWmzgb", "Q2VcTenM"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'MSV4gEA2' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'k0Dmg8qK' \
    --body '{"status": "Ca2HNQmy"}' \
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
    --serverID 'n4OMXyVd' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '2HrIKe2U' \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'XJKm9sAN' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "VbQoJerf"}' \
    > test.out 2>&1
eval_tap $? 30 'FleetClaimByID' test.out

#- 31 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'IP16Ty85' \
    > test.out 2>&1
eval_tap $? 31 'LocalWatchdogConnect' test.out

#- 32 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["VnIkMJuo", "wRCDtX4q", "nVjGrRaW"], "regions": ["gLb6pUtC", "gqUlXNjU", "fj9ddVV9"]}' \
    > test.out 2>&1
eval_tap $? 32 'FleetClaimByKeys' test.out

#- 33 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'XjURY4xW' \
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