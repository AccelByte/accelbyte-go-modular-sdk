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
    --body '{"name": "6gNBXoVl"}' \
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
    --body '{"token": "dXmYAcvY"}' \
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
    --body '{"active": false, "claimKeys": ["ydYRfwnh", "HegwpRD4", "2GqRXF3v"], "dsHostConfiguration": {"instanceId": "oJ61zGdw", "instanceType": "uO5uMnWY", "serversPerVm": 42}, "imageDeploymentProfile": {"commandLine": "g6IOCSIb", "imageId": "0ibwOEAc", "portConfigurations": [{"name": "ljw0Ihxc", "protocol": "BSsF6dzG"}, {"name": "0jdy7qvN", "protocol": "Il7y7mON"}, {"name": "U3PO0H12", "protocol": "hjhJQkei"}], "timeout": {"creation": 29, "drain": 37, "session": 59, "unresponsive": 96}}, "name": "DpgcA3sk", "regions": [{"bufferSize": 11, "maxServerCount": 95, "minServerCount": 28, "region": "kV5hZTbq"}, {"bufferSize": 31, "maxServerCount": 40, "minServerCount": 10, "region": "fTpDvtRd"}, {"bufferSize": 43, "maxServerCount": 18, "minServerCount": 65, "region": "0UGrnB9x"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '9XqLab0b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'fPIqkz7E' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["ljXCiDME", "3xKvCqgw", "j4uinamq"], "dsHostConfiguration": {"instanceId": "fyQY34in", "instanceType": "3MHdDc0s", "serversPerVm": 98}, "imageDeploymentProfile": {"commandLine": "R7YT0DuD", "imageId": "WWlpnwG6", "portConfigurations": [{"name": "evLNGuP7", "protocol": "WrHgVZXh"}, {"name": "ccmyNCQd", "protocol": "XSvPHk5d"}, {"name": "XQT8w8rI", "protocol": "AzuFdVLI"}], "timeout": {"creation": 69, "drain": 94, "session": 1, "unresponsive": 79}}, "name": "y6TxQ9Ek", "regions": [{"bufferSize": 37, "maxServerCount": 33, "minServerCount": 18, "region": "MBes51OU"}, {"bufferSize": 91, "maxServerCount": 22, "minServerCount": 76, "region": "GChXyJKW"}, {"bufferSize": 11, "maxServerCount": 57, "minServerCount": 14, "region": "sy35vK4A"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'rw7PHVqp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '1j2RkHqg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetArtifactSamplingRulesGet' test.out

#- 14 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '0yktX3RW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetServers' test.out

#- 15 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '89TLWswK' \
    --namespace $AB_NAMESPACE \
    --count '67' \
    --offset '4' \
    --reason 'NYEa4rAj' \
    --region 'KSxKJi2C' \
    --serverId '0wmcrc66' \
    --sortDirection 'ujd0AIz5' \
    --status 'pkWa2p25' \
    > test.out 2>&1
eval_tap $? 15 'FleetServerHistory' test.out

#- 16 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageList' test.out

#- 17 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'kRpCymSi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'ImageGet' test.out

#- 18 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'x8FIMELu' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["mPjm3UXL", "Bb0RYgmV", "S3liyb4o"], "isProtected": true, "name": "eaVc1KhQ", "removedTags": ["q2mVh3lB", "KK6LhyHV", "PoKTtfHn"]}' \
    > test.out 2>&1
eval_tap $? 18 'ImagePatch' test.out

#- 19 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'EGtSVgvK' \
    --body '{"status": "tJblGlHV"}' \
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
    --serverID 'IATZfDAp' \
    > test.out 2>&1
eval_tap $? 21 'FleetServerInfo' test.out

#- 22 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'E6jtw4nn' \
    > test.out 2>&1
eval_tap $? 22 'ServerHistory' test.out

#- 23 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'InfoSupportedInstances' test.out

#- 24 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'CFbeN5Mo' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "PkbS9Qud"}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByID' test.out

#- 25 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Hfmc1C5h' \
    > test.out 2>&1
eval_tap $? 25 'LocalWatchdogConnect' test.out

#- 26 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'SGGdzQmm' \
    > test.out 2>&1
eval_tap $? 26 'QoSRegionsGet' test.out

#- 27 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["AVU0ZRwg", "asA4Axw8", "TUaS9lEi"], "regions": ["nJZ9pgKe", "KfBckPXb", "Q5pugMzV"]}' \
    > test.out 2>&1
eval_tap $? 27 'FleetClaimByKeys' test.out

#- 28 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '2QwRZJGm' \
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