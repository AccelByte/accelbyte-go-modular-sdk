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
    --body '{"name": "N7pSg6Si"}' \
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
    --body '{"token": "Ej4owDZ9"}' \
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
    --body '{"active": true, "claimKeys": ["I1syKdoE", "c60MbAtN", "Leladi0x"], "dsHostConfiguration": {"instanceId": "HX5D5ZZ0", "instanceType": "STL3BSkw", "serversPerVm": 94}, "imageDeploymentProfile": {"commandLine": "M5Q28rYN", "imageId": "du5EUEmy", "portConfigurations": [{"name": "6vo9ElhL", "protocol": "SAUAcW0D"}, {"name": "W5txTfYS", "protocol": "y8NtOXE0"}, {"name": "H9F9q5mz", "protocol": "C0B38qTE"}], "timeout": {"creation": 31, "drain": 44, "session": 44, "unresponsive": 51}}, "name": "a8d2Z2fs", "regions": [{"bufferSize": 85, "maxServerCount": 61, "minServerCount": 26, "region": "QGXo6pPs"}, {"bufferSize": 47, "maxServerCount": 31, "minServerCount": 71, "region": "W6Bv23te"}, {"bufferSize": 4, "maxServerCount": 58, "minServerCount": 36, "region": "p1NXQ09S"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'lDKo4x0v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'qj27drOn' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["6WpbOKfG", "wmrmSVNo", "lWjrNh8V"], "dsHostConfiguration": {"instanceId": "7aTK8VWt", "instanceType": "XSFlVa3V", "serversPerVm": 95}, "imageDeploymentProfile": {"commandLine": "TMnLbiu9", "imageId": "q28KFeOZ", "portConfigurations": [{"name": "IZLHtzah", "protocol": "huWgY76C"}, {"name": "FkVRf2nH", "protocol": "LiPo9BZ1"}, {"name": "gEn6L1o7", "protocol": "jo8vGqf6"}], "timeout": {"creation": 21, "drain": 2, "session": 75, "unresponsive": 88}}, "name": "6hNPXzu8", "regions": [{"bufferSize": 84, "maxServerCount": 100, "minServerCount": 81, "region": "UHoV3BDp"}, {"bufferSize": 48, "maxServerCount": 64, "minServerCount": 54, "region": "ZS4sOOfH"}, {"bufferSize": 73, "maxServerCount": 29, "minServerCount": 12, "region": "vuKdOFVY"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'zymkjPKq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'wfoVyDEg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetArtifactSamplingRulesGet' test.out

#- 14 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'sxgGibLQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetServers' test.out

#- 15 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'Nb9F1ycS' \
    --namespace $AB_NAMESPACE \
    --count '51' \
    --offset '6' \
    --reason 'BqZfjAVm' \
    --region 'HVZmhs4S' \
    --serverId 'ctls9UT3' \
    --sortDirection 'bVy4tRXT' \
    --status '48A3kj4a' \
    > test.out 2>&1
eval_tap $? 15 'FleetServerHistory' test.out

#- 16 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageList' test.out

#- 17 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'EsNrgRWq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'ImageGet' test.out

#- 18 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '0Te2i9K1' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["y12kdM7t", "Z5KDzRvE", "buxYVQRn"], "isProtected": true, "name": "6t8Lxwgj", "removedTags": ["yBMPbnFH", "P98HNRHe", "afIpj2Y0"]}' \
    > test.out 2>&1
eval_tap $? 18 'ImagePatch' test.out

#- 19 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region '4zel2ba2' \
    --body '{"status": "yvqAtOH3"}' \
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
    --serverID 'ymcQF9Rw' \
    > test.out 2>&1
eval_tap $? 21 'FleetServerInfo' test.out

#- 22 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'q6UJPSbP' \
    > test.out 2>&1
eval_tap $? 22 'ServerHistory' test.out

#- 23 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'InfoSupportedInstances' test.out

#- 24 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'ezzIZBdu' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "eLqV2Df6"}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByID' test.out

#- 25 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '31jvxyTj' \
    > test.out 2>&1
eval_tap $? 25 'LocalWatchdogConnect' test.out

#- 26 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'SOfoklnm' \
    > test.out 2>&1
eval_tap $? 26 'QoSRegionsGet' test.out

#- 27 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["KrW4JKJ7", "mnB8PAQ0", "iaI9FncW"], "regions": ["2KSYzPoY", "b7U4N20a", "kQfcVV6o"]}' \
    > test.out 2>&1
eval_tap $? 27 'FleetClaimByKeys' test.out

#- 28 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'GWvYj7WA' \
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