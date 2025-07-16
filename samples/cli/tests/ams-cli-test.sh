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
echo "1..47"

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
    --body '{"name": "qlXAiIqW"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
samples/cli/sample-apps Ams adminAccountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLink
samples/cli/sample-apps Ams adminAccountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "awdBLJyL"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'uCi7S8A6' \
    --count '133' \
    --endDate 'XKyMHXF1' \
    --fleetID 'ZUFYE98J' \
    --imageID 'Zf6GMMqt' \
    --maxSize '34' \
    --minSize '79' \
    --offset '17' \
    --region 'gfazCcJD' \
    --serverId 'qaKkMzhp' \
    --sortBy 'wU3nchwJ' \
    --sortDirection 'asc' \
    --startDate 'UXnlLOPk' \
    --status 'QmiZTEcL' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'wTCbLuFo' \
    --fleetId 'ipvZfVLH' \
    --uploadedBefore '1983-02-11' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'PoiUAcl1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'HMMOyGky' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '108' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "Bj4AkooU", "expiresAt": "1975-04-03T00:00:00Z", "imageId": "4JSvlJHA", "name": "5CFT797Q"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'hQtiaEbf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'BWmAgmJ7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID '8YT6IAQB' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "swJAk0y7", "expiresAt": "1971-06-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '56' \
    --name 'PeyJ8RXX' \
    --offset '42' \
    --region 'XSNvtpTv' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["pwWelsUc", "YTmBMcUM", "WtAybTvg"], "dsHostConfiguration": {"instanceId": "WZSQWliH", "serversPerVm": 15}, "fallbackFleet": "bk5kxOsi", "hibernateAfterPeriod": "jfrwNpMf", "imageDeploymentProfile": {"commandLine": "jkZmAbPN", "imageId": "RZMaZp7L", "portConfigurations": [{"name": "lmBVUFFy", "protocol": "ixEQCIWO"}, {"name": "voy925RD", "protocol": "3Dvar6TR"}, {"name": "flwCzI6f", "protocol": "AAx7Z0iM"}], "timeout": {"claim": 44, "creation": 63, "drain": 75, "session": 18, "unresponsive": 55}}, "name": "5TcqzQ7U", "onDemand": false, "regions": [{"bufferSize": 27, "dynamicBuffer": false, "maxServerCount": 94, "minServerCount": 32, "region": "wrdD3zop"}, {"bufferSize": 64, "dynamicBuffer": true, "maxServerCount": 81, "minServerCount": 28, "region": "w8Ebyh4F"}, {"bufferSize": 86, "dynamicBuffer": false, "maxServerCount": 58, "minServerCount": 86, "region": "OnacJR5y"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 3}}, "logs": {"crashed": {"collect": false, "percentage": 66}, "success": {"collect": false, "percentage": 19}, "unclaimed": {"collect": false, "percentage": 15}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'Yki75Alw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '6x8rXDiW' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["rqTKeM3M", "vxDHhumg", "sD51STCc"], "dsHostConfiguration": {"instanceId": "onbZ3J0l", "serversPerVm": 99}, "fallbackFleet": "DD3GVT0K", "hibernateAfterPeriod": "Ra11fOWl", "imageDeploymentProfile": {"commandLine": "Nf034vK1", "imageId": "P84wT0m9", "portConfigurations": [{"name": "TFf6n6e8", "protocol": "gYMhXqqW"}, {"name": "UCykrOtV", "protocol": "SCzvhKPu"}, {"name": "lMFRsBMO", "protocol": "JZLlpsTi"}], "timeout": {"claim": 25, "creation": 52, "drain": 78, "session": 94, "unresponsive": 52}}, "name": "9DKSXytM", "onDemand": true, "regions": [{"bufferSize": 14, "dynamicBuffer": false, "maxServerCount": 13, "minServerCount": 95, "region": "mS7RvkJ0"}, {"bufferSize": 49, "dynamicBuffer": true, "maxServerCount": 73, "minServerCount": 36, "region": "g5j4fB87"}, {"bufferSize": 75, "dynamicBuffer": false, "maxServerCount": 4, "minServerCount": 17, "region": "aQ50rIIK"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 57}}, "logs": {"crashed": {"collect": false, "percentage": 27}, "success": {"collect": false, "percentage": 47}, "unclaimed": {"collect": false, "percentage": 100}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'Gy9zA9Xx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '3XgDnOSG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'MI9Iq252' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 86}}, "logs": {"crashed": {"collect": false, "percentage": 20}, "success": {"collect": false, "percentage": 62}, "unclaimed": {"collect": false, "percentage": 41}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '462Jzskt' \
    --namespace $AB_NAMESPACE \
    --count '75' \
    --offset '2' \
    --region 'EXmxnwYo' \
    --serverId 'TOimFslp' \
    --sortBy 'mJPtE5zu' \
    --sortDirection 'asc' \
    --status 'unresponsive' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'snv2lYyR' \
    --namespace $AB_NAMESPACE \
    --count '0' \
    --offset '85' \
    --reason 'HOb2Vceg' \
    --region 'Ghmap0UX' \
    --serverId 's7PnElJb' \
    --sortDirection 'JFLQZ0XN' \
    --status 'pyX70pbL' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '66' \
    --inUse 'kfygUOAh' \
    --isProtected 'false' \
    --name 'Rv6wiFvM' \
    --offset '78' \
    --sortBy '2wZoEZgd' \
    --sortDirection '7XX9tA0q' \
    --status 'pbKfXKOE' \
    --tag '29uJDLLU' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID '3ARztG7f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'meAJiXQ1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '12DXdz5z' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["6dEqEg1y", "bwoIGPEQ", "HnInBo0b"], "isProtected": false, "name": "gmTPloyO", "removedTags": ["xyxTG7P2", "EYRLWeYB", "xlUcpal7"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'ydZVoa2l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'F79gp6OB' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'VAjwH3la' \
    --body '{"status": "0OwIkhzd"}' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsUpdate' test.out

#- 35 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'InfoRegions' test.out

#- 36 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'JDm2IJ8L' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'KrdgtdJ8' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'YuftDhAC' \
    > test.out 2>&1
eval_tap $? 38 'ServerHistory' test.out

#- 39 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'InfoSupportedInstances' test.out

#- 40 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AccountGet' test.out

#- 41 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'mVsKCP0e' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "SO1pMYmw", "sessionId": "7wWNyohr"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '20nErGzw' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["N2ZcRboj", "6cXY168F", "qWhBYwAl"], "regions": ["tUBuETx6", "yZmh29I7", "XJqAmc3N"], "sessionId": "QIXbUD9G"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'jZVD9bLH' \
    > test.out 2>&1
eval_tap $? 44 'WatchdogConnect' test.out

#- 45 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 45 'UploadURLGet' test.out

#- 46 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 46 'Func1' test.out

#- 47 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 47 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE