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
echo "1..48"

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
    --body '{"name": "yyAB7VhP"}' \
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
    --body '{"token": "4x7nBArr"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'S8ZLhm3l' \
    --count '460' \
    --endDate 'oGfFBSKM' \
    --fleetID 'p1dX2qrs' \
    --imageID '9L8tkeZO' \
    --maxSize '24' \
    --minSize '1' \
    --offset '99' \
    --region 'gFw3ofbm' \
    --serverId 'qQvSK4Zc' \
    --sortBy 'xbrYkklG' \
    --sortDirection 'desc' \
    --startDate 'J55YtTia' \
    --status 'wos4cVzr' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType '1gHCSAWy' \
    --fleetId 'gknqpbhX' \
    --uploadedBefore '1984-10-08' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'tiWCDL4U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'woOuw1Ku' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '424' \
    --imageId 'cFV1u6Wr' \
    --name 'EsmAJPxC' \
    --offset '4' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "VHFAQmt0", "expiresAt": "1993-02-24T00:00:00Z", "imageId": "FrgPXIVt", "name": "SmqdGDpo"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'fA3JcwSv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'FAdudquy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'VS7OWl1o' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "e9kNcKKB", "expiresAt": "1990-09-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '21' \
    --name 'IAawMPki' \
    --offset '7' \
    --region '0PuUsXTr' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["5sjErsD7", "ibn31hMb", "igLadQuy"], "dsHostConfiguration": {"instanceId": "oGCoc9yf", "serversPerVm": 37}, "fallbackFleet": "1VYvFRui", "hibernateAfterPeriod": "110l1wtf", "imageDeploymentProfile": {"commandLine": "b1urvaLC", "imageId": "OlaLL5CO", "portConfigurations": [{"name": "XpVycR0T", "protocol": "U5wWEcaB"}, {"name": "AoHt61fV", "protocol": "dcaTTGJc"}, {"name": "pY8eMsfk", "protocol": "R22mZu4e"}], "timeout": {"claim": 30, "creation": 48, "drain": 98, "session": 69, "unresponsive": 46}}, "name": "ZUIl10nO", "onDemand": true, "regions": [{"bufferSize": 80, "dynamicBuffer": false, "maxServerCount": 80, "minServerCount": 37, "region": "ZwoivMel"}, {"bufferSize": 84, "dynamicBuffer": true, "maxServerCount": 15, "minServerCount": 9, "region": "4nsAQwpf"}, {"bufferSize": 53, "dynamicBuffer": true, "maxServerCount": 48, "minServerCount": 20, "region": "PRH5T96W"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 26}}, "logs": {"crashed": {"collect": true, "percentage": 25}, "success": {"collect": true, "percentage": 11}, "unclaimed": {"collect": true, "percentage": 28}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["4ddLG5E4", "jxyOygIb", "EhWsrxbR"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'MjgqM1G5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'oHXUC6gN' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["Ji7MG95p", "VXtB80Th", "SoHEgtHC"], "dsHostConfiguration": {"instanceId": "6hgP97DN", "serversPerVm": 41}, "fallbackFleet": "pz5pBsYe", "hibernateAfterPeriod": "vKUTkzS2", "imageDeploymentProfile": {"commandLine": "2j0M352N", "imageId": "AfqzGMsd", "portConfigurations": [{"name": "Nr8pwnrL", "protocol": "UU7bIsSz"}, {"name": "F3bWD5g3", "protocol": "G227gKZw"}, {"name": "ljlFcblb", "protocol": "OxiYqeIC"}], "timeout": {"claim": 91, "creation": 47, "drain": 49, "session": 44, "unresponsive": 24}}, "name": "AQGP4QWD", "onDemand": true, "regions": [{"bufferSize": 6, "dynamicBuffer": false, "maxServerCount": 51, "minServerCount": 88, "region": "HKkEt1Jh"}, {"bufferSize": 59, "dynamicBuffer": true, "maxServerCount": 70, "minServerCount": 13, "region": "3JZ5ZchR"}, {"bufferSize": 11, "dynamicBuffer": false, "maxServerCount": 70, "minServerCount": 84, "region": "uiqsurQe"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 93}}, "logs": {"crashed": {"collect": true, "percentage": 57}, "success": {"collect": false, "percentage": 12}, "unclaimed": {"collect": false, "percentage": 43}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'EIjbMyhc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'tjn7dupR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'hMYSz2EL' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 100}}, "logs": {"crashed": {"collect": false, "percentage": 39}, "success": {"collect": false, "percentage": 31}, "unclaimed": {"collect": false, "percentage": 94}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'RHtGy4d9' \
    --namespace $AB_NAMESPACE \
    --count '59' \
    --offset '96' \
    --region 'zssvP2mQ' \
    --serverId '9LcoiyTU' \
    --sortBy 'ZSCUaUEO' \
    --sortDirection 'asc' \
    --status 'ready' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'Ns16tyHW' \
    --namespace $AB_NAMESPACE \
    --count '1' \
    --offset '81' \
    --reason 'NNAONPL4' \
    --region '5smq48Ld' \
    --serverId 'FCAODzAK' \
    --sortDirection 'MpW6A43E' \
    --status 'KTr1waUx' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '90' \
    --inUse 'UrdJGG6C' \
    --isProtected 'true' \
    --name '59JQ0VxW' \
    --offset '5' \
    --sortBy 'm5c3uaxN' \
    --sortDirection 'dpxldJEJ' \
    --status '6Yju485c' \
    --tag 'gH4LINGF' \
    --targetArchitecture '3xFkHws0' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'wpo9A528' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'frtJz850' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'TvDIGI75' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["VvG2DAQ0", "bVmbNesZ", "tjI65K6T"], "isProtected": false, "name": "TD47xROh", "removedTags": ["kqBVy6PH", "Z1rcCvWk", "3KtoXU38"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'uY7b7j7W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'v28S8BkX' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'k1GuraOw' \
    --body '{"status": "4rENty7Z"}' \
    > test.out 2>&1
eval_tap $? 35 'QoSRegionsUpdate' test.out

#- 36 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'InfoRegions' test.out

#- 37 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'GPt8pxZl' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID '3a770iBr' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 's5xqx5Ua' \
    > test.out 2>&1
eval_tap $? 39 'ServerHistory' test.out

#- 40 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'InfoSupportedInstances' test.out

#- 41 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AccountGet' test.out

#- 42 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'W9WxNLHP' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "iELxO2wF", "sessionId": "8GRWD8lt"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'f2whpVU9' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["4TH28ThQ", "2hylrMwS", "bBGswxwy"], "regions": ["q1aprqRM", "8rXEYeMD", "EmfBa38d"], "sessionId": "3HUL6BQV"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'aUNCgAMs' \
    > test.out 2>&1
eval_tap $? 45 'WatchdogConnect' test.out

#- 46 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 46 'UploadURLGet' test.out

#- 47 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 47 'Func1' test.out

#- 48 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 48 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE