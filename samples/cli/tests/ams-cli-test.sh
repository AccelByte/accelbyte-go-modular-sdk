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
    --body '{"name": "X7GrHddS"}' \
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
    --body '{"token": "7q137MkK"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'AnLUW5MF' \
    --count '340' \
    --endDate 'RjZ2BKNp' \
    --fleetID 'K2OiDLfa' \
    --imageID '9d3hGts1' \
    --maxSize '76' \
    --minSize '74' \
    --offset '51' \
    --region 'ZdY8Gdpn' \
    --serverId 'XWgxiS65' \
    --sortBy 'mnoY6eBI' \
    --sortDirection 'asc' \
    --startDate 'uXZbzGJx' \
    --status 'iD36MHFt' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType '8cbDvzPw' \
    --fleetId 'Q792ibX9' \
    --uploadedBefore '1976-06-06' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID '22dDoaIq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'QpO5TQ13' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '451' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "LTOyL73w", "expiresAt": "1997-12-13T00:00:00Z", "imageId": "5gXX59RJ", "name": "hzoSXFZG"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'o4VnVomw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'gdWCInI1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '71' \
    --desc 'desc' \
    --name 'x9zIjz5J' \
    --offset '5' \
    --region 'a4rqrJLk' \
    --sortBy 'active' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["4V5fik9i", "vun84zM9", "zVi4nr5Z"], "dsHostConfiguration": {"instanceId": "SmEwjYY9", "serversPerVm": 84}, "imageDeploymentProfile": {"commandLine": "L7M9A2XD", "imageId": "FQABTHki", "portConfigurations": [{"name": "NmIMMPWP", "protocol": "t9X7CUtv"}, {"name": "rOShnuhI", "protocol": "FM8rswWz"}, {"name": "gg5ABzms", "protocol": "4A5gw8EU"}], "timeout": {"claim": 68, "creation": 78, "drain": 93, "session": 19, "unresponsive": 19}}, "name": "P0PVptKC", "onDemand": true, "regions": [{"bufferSize": 15, "dynamicBuffer": true, "maxServerCount": 79, "minServerCount": 83, "region": "9bRcARln"}, {"bufferSize": 81, "dynamicBuffer": false, "maxServerCount": 23, "minServerCount": 79, "region": "NzxXYDy0"}, {"bufferSize": 38, "dynamicBuffer": true, "maxServerCount": 26, "minServerCount": 98, "region": "uH57Eroe"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 39}}, "logs": {"crashed": {"collect": true, "percentage": 0}, "success": {"collect": false, "percentage": 11}, "unclaimed": {"collect": true, "percentage": 43}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'qLIHlzld' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'kxua7eFJ' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["kWFr72g5", "EQxJr3tY", "jVTgcZir"], "dsHostConfiguration": {"instanceId": "jv14tPvC", "serversPerVm": 100}, "imageDeploymentProfile": {"commandLine": "pRwy4Vps", "imageId": "ayQmRvTg", "portConfigurations": [{"name": "vbmDUitY", "protocol": "j3a4aaMo"}, {"name": "hxIc0N7Y", "protocol": "lgMEgyJC"}, {"name": "785dR8bq", "protocol": "GYUHa4Eo"}], "timeout": {"claim": 52, "creation": 64, "drain": 40, "session": 90, "unresponsive": 14}}, "name": "SIM6HRAX", "onDemand": true, "regions": [{"bufferSize": 63, "dynamicBuffer": true, "maxServerCount": 74, "minServerCount": 1, "region": "OPiDjiby"}, {"bufferSize": 80, "dynamicBuffer": false, "maxServerCount": 66, "minServerCount": 22, "region": "1qoVYc7D"}, {"bufferSize": 11, "dynamicBuffer": true, "maxServerCount": 2, "minServerCount": 15, "region": "RvdCQZ0s"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 32}}, "logs": {"crashed": {"collect": false, "percentage": 51}, "success": {"collect": true, "percentage": 62}, "unclaimed": {"collect": true, "percentage": 28}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 's37p4mLY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'NavfSMwL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'op0vEYTg' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 46}}, "logs": {"crashed": {"collect": true, "percentage": 4}, "success": {"collect": true, "percentage": 37}, "unclaimed": {"collect": true, "percentage": 11}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'uOZXIOKD' \
    --namespace $AB_NAMESPACE \
    --count '84' \
    --offset '37' \
    --region '5JmZv4yG' \
    --serverId 'AG8EgYjl' \
    --sortBy 'jfLJ83gl' \
    --sortDirection 'desc' \
    --status 'draining' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'WIxzWSZr' \
    --namespace $AB_NAMESPACE \
    --count '29' \
    --offset '72' \
    --reason '7xGs4t0a' \
    --region 'MpVyCJAF' \
    --serverId 'VWThAfp6' \
    --sortDirection 'CNlznPI8' \
    --status '03Ukjo4W' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '93' \
    --inUse 'A7Jkk2iM' \
    --isProtected 'false' \
    --name '1uuA5PiC' \
    --offset '31' \
    --sortBy 'E97B2Qfq' \
    --sortDirection '0teCcGy7' \
    --status 'Zf4Nc53a' \
    --tag 'iVXPYo3g' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID '6FlrCLf7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'AtA1Z78Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '9PDeBP5R' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["rUzdYeYG", "WhTPJ9TL", "CT6K990G"], "isProtected": false, "name": "0zkFWOYA", "removedTags": ["uf2swwXR", "XU1CDm1e", "DpvXa3Ba"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'VX9dldtl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'vr7hRaLE' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'mDdHrUxT' \
    --body '{"status": "joPGhIXy"}' \
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
    --serverID 'Xk35BV3N' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'ut8m3vWv' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'jitaeNl0' \
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
    --fleetID '8wub1ZoS' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "LPCPvTKb", "sessionId": "RuhE68Iw"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '091azVFj' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["UzuoARQH", "6yhp2VJy", "Ah8krUHO"], "regions": ["vbumZ4LN", "C8mQgbz5", "S6joiYPx"], "sessionId": "bSA4Avj0"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Bgxbuvc9' \
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