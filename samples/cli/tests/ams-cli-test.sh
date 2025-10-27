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
    --body '{"name": "5NP7jz0r"}' \
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
    --body '{"token": "9Z7die8l"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'nKuY1VhY' \
    --count '192' \
    --endDate 'KQZth6q5' \
    --fleetID 'yy3Y1Cys' \
    --imageID '5kcOLw8D' \
    --maxSize '95' \
    --minSize '90' \
    --offset '6' \
    --region 'k5BYdpQj' \
    --serverId 'uHxwTZfu' \
    --sortBy 'jCEskYid' \
    --sortDirection 'desc' \
    --startDate 'xMabJ0F4' \
    --status 'IE9IBUMr' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'EQizRkTJ' \
    --fleetId 'm6WoUN5S' \
    --uploadedBefore '1999-12-11' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'PadT0ekz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'vGbyoqGu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '396' \
    --imageId 'aw7k40dg' \
    --name 'CcpW10nC' \
    --offset '96' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "bPt1H9eg", "expiresAt": "1971-02-04T00:00:00Z", "imageId": "GgIzktew", "name": "fOywisGF"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'E9r6W5Da' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'vyGO2A5n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'pJsLSi0B' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "7jhoDDxS", "expiresAt": "1988-07-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '49' \
    --name '6PEnXinS' \
    --offset '34' \
    --region 'cofhQxVE' \
    --sortBy 'active' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["mXMsP2aC", "AfzGaHTA", "odtljuWE"], "dsHostConfiguration": {"instanceId": "WDDX2NfO", "serversPerVm": 46}, "fallbackFleet": "plRqIzpG", "hibernateAfterPeriod": "YQdlX4uk", "imageDeploymentProfile": {"commandLine": "8NGZcKR3", "imageId": "uSSo4WyR", "portConfigurations": [{"name": "6bu9ah0C", "protocol": "2pCCB8sT"}, {"name": "oXDDq3yN", "protocol": "pFS3ZlP5"}, {"name": "bCQgAjsy", "protocol": "SDyLpJyX"}], "timeout": {"claim": 51, "creation": 30, "drain": 87, "session": 48, "unresponsive": 69}}, "name": "x9D9fnxH", "onDemand": false, "regions": [{"bufferSize": 63, "dynamicBuffer": true, "maxServerCount": 67, "minServerCount": 52, "region": "nCVRZDp7"}, {"bufferSize": 95, "dynamicBuffer": true, "maxServerCount": 60, "minServerCount": 77, "region": "b1EWxrLF"}, {"bufferSize": 55, "dynamicBuffer": false, "maxServerCount": 83, "minServerCount": 22, "region": "Lyi3xMGY"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 85}}, "logs": {"crashed": {"collect": false, "percentage": 13}, "success": {"collect": true, "percentage": 15}, "unclaimed": {"collect": true, "percentage": 92}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'k8qRI5Ha' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'z67Tj9jY' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["GOjTCDVY", "DfH0b9DJ", "ImIt5z5Y"], "dsHostConfiguration": {"instanceId": "VfVbw9Qf", "serversPerVm": 5}, "fallbackFleet": "jQPAEboc", "hibernateAfterPeriod": "30AHzGwB", "imageDeploymentProfile": {"commandLine": "v9b3hSR3", "imageId": "jt7v4x8c", "portConfigurations": [{"name": "wFj7UmIC", "protocol": "NcLZ1fcD"}, {"name": "iEjzNJNl", "protocol": "8LKgr1nB"}, {"name": "MWWXNUBy", "protocol": "g9la4gFd"}], "timeout": {"claim": 45, "creation": 69, "drain": 3, "session": 37, "unresponsive": 23}}, "name": "rQBpp4C1", "onDemand": false, "regions": [{"bufferSize": 66, "dynamicBuffer": true, "maxServerCount": 44, "minServerCount": 27, "region": "n8FwASDI"}, {"bufferSize": 87, "dynamicBuffer": true, "maxServerCount": 44, "minServerCount": 16, "region": "rYsPydgN"}, {"bufferSize": 17, "dynamicBuffer": true, "maxServerCount": 16, "minServerCount": 94, "region": "g3DqlbAB"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 64}}, "logs": {"crashed": {"collect": false, "percentage": 35}, "success": {"collect": true, "percentage": 24}, "unclaimed": {"collect": true, "percentage": 100}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'FPqTamcA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'wepegyr0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'ikctKjOo' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 94}}, "logs": {"crashed": {"collect": false, "percentage": 40}, "success": {"collect": true, "percentage": 12}, "unclaimed": {"collect": true, "percentage": 73}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'coK0H4fv' \
    --namespace $AB_NAMESPACE \
    --count '81' \
    --offset '68' \
    --region 'vk9Q4Sl1' \
    --serverId 'cKtJ8g4P' \
    --sortBy 'VPBCz34V' \
    --sortDirection 'asc' \
    --status 'claiming' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'ZMj4HbEF' \
    --namespace $AB_NAMESPACE \
    --count '7' \
    --offset '62' \
    --reason 'KAnpck1b' \
    --region 'vcM8s0Q3' \
    --serverId 'tQVJI824' \
    --sortDirection 'PHsMIu7t' \
    --status '4dzeXcft' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '18' \
    --inUse 'dzmAwviM' \
    --isProtected 'false' \
    --name 'KkPuxfSw' \
    --offset '74' \
    --sortBy 'g91U9SuD' \
    --sortDirection 'cKGi0Pc6' \
    --status '1IRH5wsV' \
    --tag 'gU6qnGog' \
    --targetArchitecture 'i56sFZ1V' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'vuouu3xb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'HuixUZ9O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '8c6PoOlQ' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["XNeal0KN", "9491kRPO", "bUz3eheR"], "isProtected": true, "name": "azsTyuef", "removedTags": ["a0oTDh9Y", "Ps4c5mwc", "PK2jGZdW"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID '9dXyxTFc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'H3zbu7Cu' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region '4sYTYeEY' \
    --body '{"status": "NCDDiRRn"}' \
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
    --serverID 'PT2v7OHj' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'uTwPntlr' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'ao2NEBdV' \
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
    --fleetID 'xJCj6wCN' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "Fl5zNcw3", "sessionId": "pZsVJmtn"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'wNgV1J1R' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["ry76J2zx", "ViJHHXxi", "TgvQOELL"], "regions": ["NlPKjbyH", "ZAcfJxRa", "9aNzZzsB"], "sessionId": "CNsjc5V8"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Cl60CFlf' \
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