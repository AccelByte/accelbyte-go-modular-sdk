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
echo "1..42"

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
    --body '{"name": "KEAbBltZ"}' \
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
    --body '{"token": "MejfalsH"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'gm5DKSEw' \
    --count '286' \
    --endDate 'qA67Fk5e' \
    --fleetID 'TvpRpWaT' \
    --imageID 'LpNq7Z1Z' \
    --maxSize '96' \
    --minSize '6' \
    --offset '80' \
    --region 'ljopvVb6' \
    --serverId 'og56aLNy' \
    --startDate 'oWUFrMSa' \
    --status 'BNc7Cpxg' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'oKvPymo4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'FwvON4zN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '100' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 12 'DevelopmentServerConfigurationList' test.out

#- 13 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "yVrmGd3W", "imageId": "G69lzChQ", "name": "Ystw6brC"}' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationCreate' test.out

#- 14 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'mJDCCQFA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationGet' test.out

#- 15 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'sl5JmND7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationDelete' test.out

#- 16 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetList' test.out

#- 17 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["jS0FASh4", "BsbSR4Ax", "d0qMaTiV"], "dsHostConfiguration": {"instanceId": "ikmbICdH", "instanceType": "6rUy7zsB", "serversPerVm": 21}, "imageDeploymentProfile": {"commandLine": "j2INHJOA", "imageId": "m8MvD6MD", "portConfigurations": [{"name": "LBWHphgY", "protocol": "TAYC2jC8"}, {"name": "n4gryRke", "protocol": "jJ1VCUBE"}, {"name": "MLHRf2vx", "protocol": "zzRxzZwF"}], "timeout": {"creation": 36, "drain": 100, "session": 68, "unresponsive": 46}}, "name": "sHMZc6jZ", "onDemand": false, "regions": [{"bufferSize": 43, "maxServerCount": 83, "minServerCount": 91, "region": "BjEdJmFx"}, {"bufferSize": 66, "maxServerCount": 96, "minServerCount": 63, "region": "ZxB62bXP"}, {"bufferSize": 54, "maxServerCount": 43, "minServerCount": 72, "region": "vLI7aA3n"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 33}, "success": {"collect": false, "percentage": 27}}, "logs": {"crashed": {"collect": true, "percentage": 75}, "success": {"collect": true, "percentage": 64}}}}' \
    > test.out 2>&1
eval_tap $? 17 'FleetCreate' test.out

#- 18 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'A1xQx8Dh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'FleetGet' test.out

#- 19 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'ajqCSlRQ' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["OYLOvkg6", "klaAJzN0", "Z7gtOsGA"], "dsHostConfiguration": {"instanceId": "9bce1u75", "instanceType": "XakhwBQh", "serversPerVm": 66}, "imageDeploymentProfile": {"commandLine": "S893663Y", "imageId": "2LpTP7nn", "portConfigurations": [{"name": "hDoFnqCw", "protocol": "ydWiHhD8"}, {"name": "dtL2BZL8", "protocol": "GiMGP5qQ"}, {"name": "UAyoiyxM", "protocol": "u1IkPREh"}], "timeout": {"creation": 81, "drain": 100, "session": 19, "unresponsive": 66}}, "name": "A58ascnN", "onDemand": false, "regions": [{"bufferSize": 51, "maxServerCount": 9, "minServerCount": 45, "region": "zrLQYH56"}, {"bufferSize": 95, "maxServerCount": 65, "minServerCount": 26, "region": "v6D5Are7"}, {"bufferSize": 45, "maxServerCount": 48, "minServerCount": 42, "region": "Jqg16NDB"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 0}, "success": {"collect": true, "percentage": 82}}, "logs": {"crashed": {"collect": true, "percentage": 76}, "success": {"collect": true, "percentage": 45}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetUpdate' test.out

#- 20 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'EiEz8jPz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetDelete' test.out

#- 21 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'LD9aAQOS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetArtifactSamplingRulesGet' test.out

#- 22 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID '2dLK7KFD' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 67}, "success": {"collect": true, "percentage": 14}}, "logs": {"crashed": {"collect": false, "percentage": 12}, "success": {"collect": false, "percentage": 25}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesSet' test.out

#- 23 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'uEg7qR72' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetServers' test.out

#- 24 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'nB9tm9m5' \
    --namespace $AB_NAMESPACE \
    --count '81' \
    --offset '47' \
    --reason '1R6ybgaZ' \
    --region '2Dtf8772' \
    --serverId 'quStHHFs' \
    --sortDirection 'YSRoma1G' \
    --status 'fliW8C7K' \
    > test.out 2>&1
eval_tap $? 24 'FleetServerHistory' test.out

#- 25 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'ImageList' test.out

#- 26 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'nH0Q3F8q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageGet' test.out

#- 27 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'HIXF7vc4' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["y3C906Sv", "N4aGjuSJ", "WrudfRkG"], "isProtected": true, "name": "JTNv0TIF", "removedTags": ["wCcwo3qf", "meEre4gO", "aPJvCC3l"]}' \
    > test.out 2>&1
eval_tap $? 27 'ImagePatch' test.out

#- 28 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'XCfCtW4k' \
    > test.out 2>&1
eval_tap $? 28 'QoSRegionsGet' test.out

#- 29 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region '1qtDLbrm' \
    --body '{"status": "PxEWqfAg"}' \
    > test.out 2>&1
eval_tap $? 29 'QoSRegionsUpdate' test.out

#- 30 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'InfoRegions' test.out

#- 31 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'To8MeYB4' \
    > test.out 2>&1
eval_tap $? 31 'FleetServerInfo' test.out

#- 32 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'fegpHveE' \
    > test.out 2>&1
eval_tap $? 32 'FleetServerConnectionInfo' test.out

#- 33 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '3VuU6kLJ' \
    > test.out 2>&1
eval_tap $? 33 'ServerHistory' test.out

#- 34 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'InfoSupportedInstances' test.out

#- 35 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AccountGet' test.out

#- 36 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'PEy9D7eF' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "9hcnssAS", "sessionId": "5XHPHBCm"}' \
    > test.out 2>&1
eval_tap $? 36 'FleetClaimByID' test.out

#- 37 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'D4304igs' \
    > test.out 2>&1
eval_tap $? 37 'LocalWatchdogConnect' test.out

#- 38 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["TPNEUxQj", "Bh1WWBrN", "EZi8Spkt"], "regions": ["jnTcUqz8", "Xh4ZJgZg", "84iONaVG"], "sessionId": "2UoVf5Nm"}' \
    > test.out 2>&1
eval_tap $? 38 'FleetClaimByKeys' test.out

#- 39 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Q9GvmQ3y' \
    > test.out 2>&1
eval_tap $? 39 'WatchdogConnect' test.out

#- 40 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 40 'UploadURLGet' test.out

#- 41 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 41 'Func1' test.out

#- 42 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 42 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE