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
    --body '{"name": "MnNiLywk"}' \
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
    --body '{"token": "xPoMlTDq"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'xPSZlmGu' \
    --count '443' \
    --endDate 'ZDYfO8VZ' \
    --fleetID 'fUFzVONW' \
    --imageID 'YKdPX9fT' \
    --maxSize '0' \
    --minSize '42' \
    --offset '57' \
    --region 'Jr18mrUv' \
    --serverId 'SefzTmHG' \
    --sortBy 'JJOI5ABW' \
    --sortDirection 'asc' \
    --startDate 'gU3rZt0x' \
    --status 'eZf3NdiP' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'CYZeuiIZ' \
    --fleetId 'BW8uD5R5' \
    --uploadedBefore '1976-11-08' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'ZHeFYkxY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'Fz0L6xww' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '277' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "kb6ZNyVL", "expiresAt": "1976-09-14T00:00:00Z", "imageId": "6IYsmtRH", "name": "otrjpcjw"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'otcrXCUQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'wIIdLfMf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '49' \
    --name 'Iwct1OZL' \
    --offset '32' \
    --region 'nL8p88FE' \
    --sortBy 'active' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["CSNBeQqM", "GWZGKCn3", "MkZKdn89"], "dsHostConfiguration": {"instanceId": "cUIKNGEW", "serversPerVm": 75}, "fallbackFleet": "N6LkWxZg", "imageDeploymentProfile": {"commandLine": "hoV0Yifh", "imageId": "8fZfkyDF", "portConfigurations": [{"name": "SMrLgzBC", "protocol": "ytJBlS6a"}, {"name": "SR8pQbgy", "protocol": "j8zrWKlZ"}, {"name": "t8OHkHkI", "protocol": "cZAwk643"}], "timeout": {"claim": 26, "creation": 41, "drain": 49, "session": 45, "unresponsive": 83}}, "name": "hxZkXsTK", "onDemand": false, "regions": [{"bufferSize": 49, "dynamicBuffer": true, "maxServerCount": 41, "minServerCount": 26, "region": "Pe8O5QnQ"}, {"bufferSize": 10, "dynamicBuffer": true, "maxServerCount": 98, "minServerCount": 38, "region": "b4nNn57V"}, {"bufferSize": 40, "dynamicBuffer": true, "maxServerCount": 78, "minServerCount": 29, "region": "x3FS4ThZ"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 15}}, "logs": {"crashed": {"collect": true, "percentage": 29}, "success": {"collect": false, "percentage": 97}, "unclaimed": {"collect": true, "percentage": 43}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'lxEuvtcC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'xTKINmo7' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["RLuXHBZc", "xDAxOL6r", "dugfS3GC"], "dsHostConfiguration": {"instanceId": "9oEWPitZ", "serversPerVm": 87}, "fallbackFleet": "A9juCWuD", "imageDeploymentProfile": {"commandLine": "ff6o3hib", "imageId": "mKfAUqFX", "portConfigurations": [{"name": "yv4b117e", "protocol": "t0xNGLVm"}, {"name": "ZdMEs6WN", "protocol": "cUHnV8Sf"}, {"name": "xFOhoeat", "protocol": "eJ76GftG"}], "timeout": {"claim": 88, "creation": 16, "drain": 75, "session": 59, "unresponsive": 15}}, "name": "hdoE47Cm", "onDemand": false, "regions": [{"bufferSize": 6, "dynamicBuffer": false, "maxServerCount": 92, "minServerCount": 53, "region": "lJmuR3ep"}, {"bufferSize": 5, "dynamicBuffer": false, "maxServerCount": 98, "minServerCount": 69, "region": "PHCbP535"}, {"bufferSize": 99, "dynamicBuffer": true, "maxServerCount": 94, "minServerCount": 92, "region": "jULV0Rlk"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 76}}, "logs": {"crashed": {"collect": true, "percentage": 33}, "success": {"collect": true, "percentage": 79}, "unclaimed": {"collect": false, "percentage": 4}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'YI8ICTtw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'XzsLwTZw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'ZJRlXcSN' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 55}}, "logs": {"crashed": {"collect": false, "percentage": 69}, "success": {"collect": true, "percentage": 98}, "unclaimed": {"collect": false, "percentage": 94}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '5TK1XiVT' \
    --namespace $AB_NAMESPACE \
    --count '70' \
    --offset '12' \
    --region 'Lf3fCXL2' \
    --serverId 'QO4bp9lH' \
    --sortBy 'vVfLoUj3' \
    --sortDirection 'desc' \
    --status 'claiming' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'WkFmcttf' \
    --namespace $AB_NAMESPACE \
    --count '99' \
    --offset '91' \
    --reason 'tOZdMial' \
    --region 'tEHaWuwc' \
    --serverId 'oW4RB9Sz' \
    --sortDirection 'LTqx2VKJ' \
    --status 'cgoEwcIK' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '53' \
    --inUse 'UASdS5im' \
    --isProtected 'true' \
    --name 'A1ReHAsm' \
    --offset '51' \
    --sortBy 'S3hCDEfl' \
    --sortDirection '4s7RPLyf' \
    --status '4tEpIneR' \
    --tag 'lOBmWUhT' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'Sa3uIAOf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'Wjr8lyQy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'MB4zA6k5' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["bVKtpZfN", "mEAp2vzB", "fevvVgOe"], "isProtected": true, "name": "wg90qQhz", "removedTags": ["Tkv1TpLL", "RGEB5Rnm", "e2NMoyvW"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'SjncNcmw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'jN7ftT0P' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'OakNktaP' \
    --body '{"status": "hejCvkAc"}' \
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
    --serverID 'cKRVWHVH' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'TFjuihxb' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'elTJsl4z' \
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
    --fleetID '2CGlzEnf' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "MEwuQv2O", "sessionId": "JNVQkCe1"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'PADfI6Kn' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["NXvTqmsN", "0jdRtTlc", "QDEJ5PUn"], "regions": ["ldsN7MaZ", "vJUmWpEI", "QLkkifb5"], "sessionId": "yTQSwrms"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '9eIeTk2c' \
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