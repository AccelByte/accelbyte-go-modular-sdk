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
    --body '{"name": "1CynBH9V"}' \
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
    --body '{"token": "4SWOo8Dl"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'gd7zDTYm' \
    --count '343' \
    --endDate 'shi8cf1E' \
    --fleetID 'BFYfoHvu' \
    --imageID '7q2OwnXq' \
    --maxSize '57' \
    --minSize '74' \
    --offset '64' \
    --region 'wgU4c1LT' \
    --serverId 'R30nknoR' \
    --sortBy '9WzpmiQv' \
    --sortDirection 'desc' \
    --startDate 'g9BTIeTM' \
    --status 's8HpzgAF' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'MrGKedKr' \
    --fleetId 'ZwjTHyio' \
    --uploadedBefore '1986-05-09' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'PMBYqOJj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'Ir1aQZoi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '493' \
    --imageId 'ntSvhQYI' \
    --name 'aKsa2a7O' \
    --offset '63' \
    --sortBy 'expires_at' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "swazp0Aq", "expiresAt": "1972-04-07T00:00:00Z", "imageId": "b5zYkwSw", "name": "0AThD3Hf"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID '9h8V6bqy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'jC8fFCWl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'onIvUuPj' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "0bJqGgqw", "expiresAt": "1972-07-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '28' \
    --name 'O7tJZZ73' \
    --offset '37' \
    --region 'UqJpNq7Q' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["xDSeFmK3", "GtgSCAEr", "FjLgsl3s"], "dsHostConfiguration": {"instanceId": "x3DCb28V", "serversPerVm": 73}, "fallbackFleet": "viNi9dkT", "hibernateAfterPeriod": "yjPuLQ9L", "imageDeploymentProfile": {"commandLine": "e02YEAMa", "imageId": "ge0ZWYjE", "portConfigurations": [{"name": "rMLKUk6O", "protocol": "0RTcK7K9"}, {"name": "xBR9fVy1", "protocol": "mpiFw3Gw"}, {"name": "Z92sgQWl", "protocol": "F60sLCTw"}], "timeout": {"claim": 57, "creation": 52, "drain": 37, "session": 6, "unresponsive": 44}}, "name": "NmzfJtqp", "onDemand": true, "regions": [{"bufferSize": 52, "dynamicBuffer": true, "maxServerCount": 11, "minServerCount": 71, "region": "F9a26Cch"}, {"bufferSize": 90, "dynamicBuffer": true, "maxServerCount": 54, "minServerCount": 3, "region": "zgg2Dn17"}, {"bufferSize": 97, "dynamicBuffer": true, "maxServerCount": 49, "minServerCount": 34, "region": "BfIQGS6N"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 43}}, "logs": {"crashed": {"collect": false, "percentage": 73}, "success": {"collect": true, "percentage": 38}, "unclaimed": {"collect": false, "percentage": 85}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["dJTI6zYu", "PXwlevTq", "6T5H6jaf"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'aK66IrKL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'zt9PgLnY' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["fHWMG6rP", "XDCtzwZP", "raOCkYr9"], "dsHostConfiguration": {"instanceId": "rzUbbipJ", "serversPerVm": 7}, "fallbackFleet": "kx7NvveD", "hibernateAfterPeriod": "gRSmQ0jf", "imageDeploymentProfile": {"commandLine": "vAnxcfJF", "imageId": "pf56pYuG", "portConfigurations": [{"name": "lefxWJJg", "protocol": "6S4n3nmi"}, {"name": "c12Jzghb", "protocol": "H7FEZ6bp"}, {"name": "UwjtMkGX", "protocol": "EOyCydbO"}], "timeout": {"claim": 12, "creation": 95, "drain": 34, "session": 100, "unresponsive": 45}}, "name": "Cjr1UaGw", "onDemand": true, "regions": [{"bufferSize": 64, "dynamicBuffer": true, "maxServerCount": 69, "minServerCount": 44, "region": "ByNSZw0v"}, {"bufferSize": 67, "dynamicBuffer": true, "maxServerCount": 85, "minServerCount": 36, "region": "ZpkbPTkU"}, {"bufferSize": 22, "dynamicBuffer": false, "maxServerCount": 77, "minServerCount": 80, "region": "QogEzJMk"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 87}}, "logs": {"crashed": {"collect": false, "percentage": 40}, "success": {"collect": false, "percentage": 71}, "unclaimed": {"collect": false, "percentage": 89}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'KrvnoAQo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'OQPkm052' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'lBxhzzLq' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 23}}, "logs": {"crashed": {"collect": false, "percentage": 86}, "success": {"collect": false, "percentage": 30}, "unclaimed": {"collect": true, "percentage": 42}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'F05GAiOH' \
    --namespace $AB_NAMESPACE \
    --count '43' \
    --offset '1' \
    --region 'PYNQfRnB' \
    --serverId 'AzPd87T7' \
    --sortBy 'ANjt5Yaf' \
    --sortDirection 'desc' \
    --status 'unresponsive' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'n9mFGdI9' \
    --namespace $AB_NAMESPACE \
    --count '36' \
    --offset '31' \
    --reason 'oovNfyES' \
    --region 'bpplPix3' \
    --serverId 'egTuz6SK' \
    --sortDirection 'nFFWklNY' \
    --status 'Vy7ltc2C' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '11' \
    --inUse '3fImJgLG' \
    --isProtected 'true' \
    --name 'a8ED8HbC' \
    --offset '75' \
    --sortBy 'PURv8ul8' \
    --sortDirection 'DA5RYVjB' \
    --status 'AYQMRYVf' \
    --tag 'C2k61xou' \
    --targetArchitecture 'I455eL6W' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'ZUpJhZF1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'wYEhblj7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'FvqcWfcd' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["AW1qDW2d", "tDLyaEjg", "eG7K0euB"], "isProtected": false, "name": "TtG054gh", "removedTags": ["yuBn34Mx", "gg8OXqSH", "hlxkZ5VU"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'tWh2bGXx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'BlFav6Tv' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'LGsY5o0S' \
    --body '{"status": "Mdz2P1P4"}' \
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
    --serverID 'EE72dgRK' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'Yz0en0cc' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '02AC3mJH' \
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
    --fleetID 'APX0Ww3i' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "LAUqsgDF", "sessionId": "P5xFwABe"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Bg8NDmpK' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["S4i1h4YA", "5isoTw5c", "2FVgGsrw"], "regions": ["rs3mv7it", "Wnqpahav", "yf5QAB8R"], "sessionId": "5gjCzP38"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '5pPEXfFk' \
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