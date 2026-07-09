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
    --body '{"name": "K5Okig4L"}' \
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
    --body '{"token": "4Td6PIdP"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'hft2hISF' \
    --count '234' \
    --endDate 'Fx0NEj5G' \
    --fleetID 'GcZZ9fN2' \
    --imageID 'WwEWw5Ru' \
    --maxSize '28' \
    --minSize '88' \
    --offset '3' \
    --region 'BHqj2bXe' \
    --serverId 'N1HSTR3x' \
    --sortBy 'cXwCL4ME' \
    --sortDirection 'desc' \
    --startDate 'vCW49mMQ' \
    --status 'QcxBe525' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'FzFPH5GG' \
    --fleetId '4n2jq9fr' \
    --uploadedBefore '1990-08-19' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'q2aBYswt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'fLDnuNrD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '54' \
    --imageId 'gnksBEgA' \
    --name 'XC9T24nI' \
    --offset '98' \
    --sortBy 'created_at' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "3n4KdMKp", "expiresAt": "1997-01-23T00:00:00Z", "imageId": "95v2xARm", "name": "2WAddZmQ"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'AKBVpyvR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'Z1UkJeHl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'braP49VG' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "X9plbxvS", "expiresAt": "1972-02-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '64' \
    --includeInactiveRegions 'true' \
    --name 'BtpowyJ3' \
    --offset '30' \
    --region 'n1G2D2eF' \
    --sortBy 'active' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["U87BbS6M", "7mM1XGBi", "4HjaQRE8"], "dsHostConfiguration": {"instanceId": "YuQFXoJc", "serversPerVm": 91}, "fallbackFleet": "iaNimDFz", "hibernateAfterPeriod": "lf9WdRUK", "imageDeploymentProfile": {"commandLine": "j0Xt6v59", "imageId": "MhdF9YA3", "portConfigurations": [{"name": "KaJCjzW4", "protocol": "Wfv0sDSY"}, {"name": "IO5RkUqo", "protocol": "sySzK3QP"}, {"name": "gHyQorlM", "protocol": "kapf6xsW"}], "timeout": {"claim": 30, "creation": 16, "drain": 18, "session": 16, "unresponsive": 86}}, "name": "knEny2PP", "onDemand": false, "regions": [{"bufferSize": 96, "dynamicBuffer": false, "maxServerCount": 38, "minServerCount": 22, "region": "OhwIVqp2", "state": "1mEutzSS"}, {"bufferSize": 93, "dynamicBuffer": false, "maxServerCount": 48, "minServerCount": 9, "region": "Mfk0qeYu", "state": "1l9AhUYL"}, {"bufferSize": 61, "dynamicBuffer": true, "maxServerCount": 89, "minServerCount": 28, "region": "rlHQbK4z", "state": "XiI1uEJO"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 49}}, "logs": {"crashed": {"collect": false, "percentage": 70}, "success": {"collect": true, "percentage": 34}, "unclaimed": {"collect": false, "percentage": 8}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["PwpUJrIc", "siITUffq", "M60Gbn9R"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'XHZ9Di37' \
    --namespace $AB_NAMESPACE \
    --includeInactiveRegions 'true' \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'vyB6m8i0' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["0I01QuJH", "eROd9daR", "UrLPzm1p"], "dsHostConfiguration": {"instanceId": "ZEYGgCrE", "serversPerVm": 98}, "fallbackFleet": "rI1Myk6x", "hibernateAfterPeriod": "S70IZdH5", "imageDeploymentProfile": {"commandLine": "qvoqvdCd", "imageId": "8lPVIdco", "portConfigurations": [{"name": "HOrTa2Gi", "protocol": "7m29zNJX"}, {"name": "O6Kd7puS", "protocol": "EE16hkhg"}, {"name": "bglRLHSd", "protocol": "dusWItpu"}], "timeout": {"claim": 67, "creation": 5, "drain": 9, "session": 42, "unresponsive": 74}}, "name": "783TK9jM", "onDemand": false, "regions": [{"bufferSize": 56, "dynamicBuffer": false, "maxServerCount": 58, "minServerCount": 67, "region": "vAT8FyjE", "state": "Cf8GUX10"}, {"bufferSize": 89, "dynamicBuffer": true, "maxServerCount": 16, "minServerCount": 32, "region": "2AyRNuwQ", "state": "w4dWJFLG"}, {"bufferSize": 4, "dynamicBuffer": true, "maxServerCount": 69, "minServerCount": 36, "region": "IYq3kr2P", "state": "8RLcq0pe"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 91}}, "logs": {"crashed": {"collect": false, "percentage": 20}, "success": {"collect": true, "percentage": 15}, "unclaimed": {"collect": false, "percentage": 8}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'f7Iema5X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'SwpNuWra' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'UWXixS0g' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 56}}, "logs": {"crashed": {"collect": false, "percentage": 41}, "success": {"collect": false, "percentage": 100}, "unclaimed": {"collect": true, "percentage": 74}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'WcqC9J7K' \
    --namespace $AB_NAMESPACE \
    --count '75' \
    --offset '32' \
    --region 'QuTvaggz' \
    --serverId 'WUQ1Zeb3' \
    --sortBy 'Fm9ixq8O' \
    --sortDirection 'desc' \
    --status 'creating' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'dEtkaJ8U' \
    --namespace $AB_NAMESPACE \
    --count '25' \
    --offset '34' \
    --reason '9qOJV9SV' \
    --region '25dCb58r' \
    --serverId '3xNbGxRy' \
    --sortDirection 'AN3tjNKo' \
    --status 'mZ99jFc7' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '55' \
    --inUse 'K1VMoYfp' \
    --isProtected 'true' \
    --name 'SB2ESu4f' \
    --offset '33' \
    --sortBy 'FCLB55oN' \
    --sortDirection 'ng4uNcFn' \
    --status 'Zuo356w0' \
    --tag 'i5zSHs3p' \
    --targetArchitecture 'Q2uXcpb2' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'y6tJ9vIH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'wsyWFmUa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'VFxF5ZEw' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["baIgIWoh", "8wblw7Yn", "gFlB272E"], "isProtected": true, "name": "kmedv3t9", "removedTags": ["7zbAGih0", "2z2xEs6B", "1OM7b8lU"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'oGjwvI8h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'dLPSksnt' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'a15hzw9a' \
    --body '{"status": "ndJ1NpvW"}' \
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
    --serverID 'iSHMLIE4' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'mFfU8yqB' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'xPjwIQiR' \
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
    --fleetID 'JidI5m5o' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "3K79fR5v", "sessionId": "19Obnf9x"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'YZieJ5vS' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["0pBhYzMI", "0Ko5njT9", "gYhgsown"], "regions": ["CiTZPVzu", "SMCvJIwd", "xmMSpnSY"], "sessionId": "xC5GAElD"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'nrsqsCna' \
    > test.out 2>&1
eval_tap $? 45 'WatchdogConnect' test.out

#- 46 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 46 'UploadURLGet' test.out

#- 47 VersionInfo
samples/cli/sample-apps Ams versionInfo \
    > test.out 2>&1
eval_tap $? 47 'VersionInfo' test.out

#- 48 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 48 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE