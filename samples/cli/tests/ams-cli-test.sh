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
    --body '{"name": "ETioHJ0G"}' \
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
    --body '{"token": "AzZ6DRz7"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'kRAWhp3U' \
    --count '16' \
    --endDate 'oXl4607W' \
    --fleetID 'sM3TkZVd' \
    --imageID 'gnpiDwfM' \
    --maxSize '5' \
    --minSize '27' \
    --offset '23' \
    --region '8OyUnqFa' \
    --serverId 'NYSCqP1a' \
    --sortBy 'rdsnqWhp' \
    --sortDirection 'asc' \
    --startDate 'A9UrSa3d' \
    --status 'WeeNkfpS' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'r4giJbOc' \
    --fleetId '3GX2NSpf' \
    --uploadedBefore '1971-09-27' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'g5yBl5b5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'KOXfegkV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '410' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "ilsOL7ne", "expiresAt": "1982-05-17T00:00:00Z", "imageId": "gyCq0kbf", "name": "ynnt5Juy"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'cn1bDXTl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'nRfEccoT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '61' \
    --desc 'asc' \
    --name '0QAsvGbG' \
    --offset '24' \
    --region 's319vhsg' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["9NfgcDfC", "KcbNt73o", "eVUWoE2v"], "dsHostConfiguration": {"instanceId": "Bt24uM7E", "serversPerVm": 1}, "imageDeploymentProfile": {"commandLine": "EAuxlsLH", "imageId": "fZzhVI9v", "portConfigurations": [{"name": "yvbfpjlt", "protocol": "k5WkSEM6"}, {"name": "sZJGuGV5", "protocol": "OCYlhXhB"}, {"name": "4By9ivwi", "protocol": "Gr3h1XQt"}], "timeout": {"claim": 31, "creation": 81, "drain": 25, "session": 27, "unresponsive": 27}}, "name": "ui6Rcq2G", "onDemand": false, "regions": [{"bufferSize": 47, "dynamicBuffer": false, "maxServerCount": 28, "minServerCount": 34, "region": "tYYnN1NJ"}, {"bufferSize": 56, "dynamicBuffer": true, "maxServerCount": 52, "minServerCount": 32, "region": "RirqBF1b"}, {"bufferSize": 82, "dynamicBuffer": false, "maxServerCount": 50, "minServerCount": 69, "region": "9lMzqegj"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 34}}, "logs": {"crashed": {"collect": false, "percentage": 12}, "success": {"collect": true, "percentage": 36}, "unclaimed": {"collect": false, "percentage": 86}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'uYDnJVFj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '6WbCOekV' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["OcpQKf5x", "OLnlASOm", "kQQDDVcV"], "dsHostConfiguration": {"instanceId": "Ua7ifQPp", "serversPerVm": 97}, "imageDeploymentProfile": {"commandLine": "maZvNM0l", "imageId": "O1PpoJzh", "portConfigurations": [{"name": "u0ain1JA", "protocol": "Udlj6DMQ"}, {"name": "AQPSfTRS", "protocol": "nAx8CR38"}, {"name": "RtixTZ9N", "protocol": "3h4FiZou"}], "timeout": {"claim": 68, "creation": 41, "drain": 56, "session": 99, "unresponsive": 65}}, "name": "3tOgoX3t", "onDemand": true, "regions": [{"bufferSize": 42, "dynamicBuffer": true, "maxServerCount": 56, "minServerCount": 53, "region": "7VtDWcZX"}, {"bufferSize": 0, "dynamicBuffer": false, "maxServerCount": 14, "minServerCount": 49, "region": "aSJmLMqu"}, {"bufferSize": 77, "dynamicBuffer": false, "maxServerCount": 11, "minServerCount": 30, "region": "VkHY5V50"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 80}}, "logs": {"crashed": {"collect": true, "percentage": 57}, "success": {"collect": true, "percentage": 4}, "unclaimed": {"collect": false, "percentage": 20}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'Pg3toyk7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'OaTjRT75' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'pQnqVXdb' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 91}}, "logs": {"crashed": {"collect": false, "percentage": 73}, "success": {"collect": true, "percentage": 2}, "unclaimed": {"collect": false, "percentage": 82}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'qJNVBXu1' \
    --namespace $AB_NAMESPACE \
    --count '69' \
    --offset '0' \
    --region 'JuFAA5NO' \
    --serverId 'bSTC18nU' \
    --sortBy 'Hd6ODVVd' \
    --sortDirection 'desc' \
    --status 'claiming' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '3wNFpOoZ' \
    --namespace $AB_NAMESPACE \
    --count '22' \
    --offset '14' \
    --reason 'pbjZBPQO' \
    --region 'UCslj5gG' \
    --serverId 'mty285jz' \
    --sortDirection 'iJmh3mge' \
    --status 'apTbBEdS' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '55' \
    --inUse '3zuJ3mlu' \
    --isProtected 'false' \
    --name '0QrKyvjI' \
    --offset '35' \
    --sortBy 'MXrFPRC7' \
    --sortDirection 'UxkwxMqv' \
    --status 'OoGlzyia' \
    --tag 'Zfut10Mh' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'Qac24glh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'YVJ6q6XP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'U5TBqPYn' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["IIJXJkUs", "oJHCp3rq", "YRRqcC57"], "isProtected": false, "name": "zy02Qujd", "removedTags": ["GpOkqUzU", "eCx0jlUe", "rYYsT1Se"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'Z6UhDGOI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status '4tkwUgcx' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'lm3CIvUd' \
    --body '{"status": "yCI3QJ6M"}' \
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
    --serverID 'SpOOsDKN' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'uRrzS4jZ' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'tX8WVong' \
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
    --fleetID 'aiAZqTLP' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "AA35nIf5", "sessionId": "FNIWkmRS"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'vgNBye0i' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["la5dCgAV", "wKN9QVk2", "S1ptE90o"], "regions": ["d8rkzTbz", "Q7H8Z1Gu", "fho5FR8o"], "sessionId": "VINZ3Tib"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Io9vDNdC' \
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