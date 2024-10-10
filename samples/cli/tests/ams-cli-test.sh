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
echo "1..46"

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
    --body '{"name": "lLgtgZgB"}' \
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
    --body '{"token": "iBgDjguB"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'ulgpj7J6' \
    --count '210' \
    --endDate 'rcCTHwvE' \
    --fleetID 'lF3g3TOn' \
    --imageID 'TiWTrc1L' \
    --maxSize '27' \
    --minSize '46' \
    --offset '82' \
    --region 'nNyZq1Y4' \
    --serverId 'KoJzKkcX' \
    --startDate '26X2zbk6' \
    --status 'OkI1WT7O' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'GPidwvac' \
    --fleetId 'WM9WqeVa' \
    --uploadedBefore '1986-05-18' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'CMyVDPuB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'j32SurOO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '264' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "5oHIDVfg", "expiresAt": "1984-04-30T00:00:00Z", "imageId": "Sibf0sZ1", "name": "2xOgzPnj"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID '4ioCt94U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'uOX4VEhZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["jNDsolSy", "t0r0VG5v", "tB736IQb"], "dsHostConfiguration": {"instanceId": "v5PuaWx2", "serversPerVm": 67}, "imageDeploymentProfile": {"commandLine": "s0XHzOwM", "imageId": "5oU2kD7S", "portConfigurations": [{"name": "v4nUlVAW", "protocol": "wcl4pD7W"}, {"name": "WhmHDuTd", "protocol": "NfU7osQb"}, {"name": "IWTTx2kE", "protocol": "hMzoybkN"}], "timeout": {"creation": 51, "drain": 82, "session": 80, "unresponsive": 86}}, "name": "d3mcWNwe", "onDemand": false, "regions": [{"bufferSize": 54, "dynamicBuffer": true, "maxServerCount": 48, "minServerCount": 27, "region": "ear4EpcN"}, {"bufferSize": 28, "dynamicBuffer": false, "maxServerCount": 71, "minServerCount": 55, "region": "YC74j18y"}, {"bufferSize": 91, "dynamicBuffer": false, "maxServerCount": 46, "minServerCount": 85, "region": "WrAgyLEX"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 78}, "success": {"collect": false, "percentage": 69}}, "logs": {"crashed": {"collect": false, "percentage": 89}, "success": {"collect": false, "percentage": 23}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'e81gWEyn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'SyRwrzsK' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["57CZzTDe", "PNq9MSBS", "Cs5k1poD"], "dsHostConfiguration": {"instanceId": "nsSn9Wso", "serversPerVm": 16}, "imageDeploymentProfile": {"commandLine": "ELWwnFUT", "imageId": "laNJywOZ", "portConfigurations": [{"name": "Iulfcqfi", "protocol": "RUrMA1jO"}, {"name": "cD4cZGdp", "protocol": "7njA0b87"}, {"name": "37XuFS34", "protocol": "Nwp7I5YH"}], "timeout": {"creation": 42, "drain": 19, "session": 34, "unresponsive": 67}}, "name": "I1mQgEFB", "onDemand": false, "regions": [{"bufferSize": 46, "dynamicBuffer": true, "maxServerCount": 10, "minServerCount": 0, "region": "vATph1lA"}, {"bufferSize": 86, "dynamicBuffer": false, "maxServerCount": 75, "minServerCount": 24, "region": "a3tXFrq5"}, {"bufferSize": 43, "dynamicBuffer": true, "maxServerCount": 68, "minServerCount": 73, "region": "HQSds9pj"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 69}, "success": {"collect": true, "percentage": 48}}, "logs": {"crashed": {"collect": false, "percentage": 40}, "success": {"collect": true, "percentage": 0}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'RndKJ9mJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '6hhEcH8G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'FeurllTU' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 88}, "success": {"collect": false, "percentage": 75}}, "logs": {"crashed": {"collect": true, "percentage": 54}, "success": {"collect": false, "percentage": 70}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'rxd1zEq0' \
    --namespace $AB_NAMESPACE \
    --count '26' \
    --offset '6' \
    --region 'gAVDL8eP' \
    --serverId 'bCvZ2amB' \
    --sortBy 'BeVLVrUQ' \
    --sortDirection 'desc' \
    --status 'claiming' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '7QVuR8Jv' \
    --namespace $AB_NAMESPACE \
    --count '5' \
    --offset '9' \
    --reason '2JCG6dVf' \
    --region 'gIfYQSik' \
    --serverId 'SOeseNZ2' \
    --sortDirection 'KULnHeMr' \
    --status 'TRQAJsvA' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'QLPYkiVS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID '98zYr5Ax' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '3VjTN7tM' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["yBYYdHHu", "R4lFGTn8", "UwDv2E24"], "isProtected": false, "name": "pNSIgpAX", "removedTags": ["kbusY7Iw", "PwccfP84", "3ZeCZ8EY"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID '8KiM8Go6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'fmBC2bJN' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'OVUa8F2J' \
    --body '{"status": "lO3zx6Ov"}' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsUpdate' test.out

#- 34 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'InfoRegions' test.out

#- 35 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'hIPPoJ1R' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID '84Vkn26r' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'sWeUA3ff' \
    > test.out 2>&1
eval_tap $? 37 'ServerHistory' test.out

#- 38 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'InfoSupportedInstances' test.out

#- 39 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'AccountGet' test.out

#- 40 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'OW0cjlcY' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "1y9KjRL1", "sessionId": "6tsGavF3"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'wXBYfr6m' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["dF4d7Xf6", "xM27COa9", "UiqWhTaP"], "regions": ["M8CAY1XZ", "Rkc5tUtA", "1OGk21dp"], "sessionId": "xB4gw1K6"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'FjG8EUlD' \
    > test.out 2>&1
eval_tap $? 43 'WatchdogConnect' test.out

#- 44 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 44 'UploadURLGet' test.out

#- 45 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 45 'Func1' test.out

#- 46 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 46 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE