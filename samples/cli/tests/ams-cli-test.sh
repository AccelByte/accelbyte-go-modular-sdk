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
    --body '{"name": "1MWbHp09"}' \
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
    --body '{"token": "E8mWPZDS"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'SDrNjiaK' \
    --count '55' \
    --endDate 'fo8RhQIV' \
    --fleetID 'y8iI0If5' \
    --imageID 'VqsicJMJ' \
    --maxSize '53' \
    --minSize '6' \
    --offset '43' \
    --region 'afNG7cal' \
    --serverId 'KCrWihy1' \
    --sortBy '5Wx1fHI1' \
    --sortDirection 'desc' \
    --startDate 'TAuFruD3' \
    --status 'xEm1XZs4' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'Y5HpWJYg' \
    --fleetId 'W58XCeZR' \
    --uploadedBefore '1993-05-18' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'bAJJfuaY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'xxllcDVo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '297' \
    --imageId '4IigIBvH' \
    --name 'yVja0JHp' \
    --offset '42' \
    --sortBy 'expires_at' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "93duSlau", "expiresAt": "1972-02-09T00:00:00Z", "imageId": "QUaidnUS", "name": "dCJMHFRs"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'cRKTm9lD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'QAHZXoGM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'TPu28ltR' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "Cqye7A4x", "expiresAt": "1976-11-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '35' \
    --name 'UZk0JQPT' \
    --offset '79' \
    --region 'ErNJhch1' \
    --sortBy 'active' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["ZQTkC6yJ", "SxPB6znD", "OMzhjVAs"], "dsHostConfiguration": {"instanceId": "fD884gKn", "serversPerVm": 54}, "fallbackFleet": "1DHAR7yx", "hibernateAfterPeriod": "sQ1oheG1", "imageDeploymentProfile": {"commandLine": "SxxIQKg3", "imageId": "WA5lOYd7", "portConfigurations": [{"name": "mjLsttBK", "protocol": "UAPc8jWA"}, {"name": "QYorJr4T", "protocol": "I2v7INuj"}, {"name": "eRhMdcxi", "protocol": "q25bliC2"}], "timeout": {"claim": 30, "creation": 38, "drain": 2, "session": 89, "unresponsive": 88}}, "name": "5cuRbL3D", "onDemand": true, "regions": [{"bufferSize": 91, "dynamicBuffer": true, "maxServerCount": 2, "minServerCount": 31, "region": "ybsnTGjS"}, {"bufferSize": 90, "dynamicBuffer": true, "maxServerCount": 59, "minServerCount": 94, "region": "1nB6D8ry"}, {"bufferSize": 97, "dynamicBuffer": true, "maxServerCount": 15, "minServerCount": 21, "region": "FXtrKKrl"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 14}}, "logs": {"crashed": {"collect": true, "percentage": 99}, "success": {"collect": true, "percentage": 76}, "unclaimed": {"collect": false, "percentage": 34}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'baN5ixUl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'U3HnVLAM' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["KwFP9m5s", "aOSxaHMv", "EWqfW7dF"], "dsHostConfiguration": {"instanceId": "DVpsiBNS", "serversPerVm": 9}, "fallbackFleet": "bhp8zq65", "hibernateAfterPeriod": "wP2tCexD", "imageDeploymentProfile": {"commandLine": "jYeG1T3g", "imageId": "dQzcSsn6", "portConfigurations": [{"name": "g6dEOJcP", "protocol": "fTBCDOoV"}, {"name": "OGNgXhix", "protocol": "qpdvrlZv"}, {"name": "o0iTcJmB", "protocol": "Yj70HMwK"}], "timeout": {"claim": 1, "creation": 8, "drain": 30, "session": 84, "unresponsive": 89}}, "name": "Sw7Oiy6j", "onDemand": true, "regions": [{"bufferSize": 88, "dynamicBuffer": false, "maxServerCount": 93, "minServerCount": 93, "region": "YxliUruP"}, {"bufferSize": 46, "dynamicBuffer": true, "maxServerCount": 58, "minServerCount": 44, "region": "ItFiWWzG"}, {"bufferSize": 41, "dynamicBuffer": true, "maxServerCount": 44, "minServerCount": 33, "region": "qV9MQ5h1"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 16}}, "logs": {"crashed": {"collect": true, "percentage": 38}, "success": {"collect": true, "percentage": 4}, "unclaimed": {"collect": true, "percentage": 91}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'pi3bIExY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'qcf7d5O0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'ewOFBtnp' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 71}}, "logs": {"crashed": {"collect": true, "percentage": 13}, "success": {"collect": false, "percentage": 63}, "unclaimed": {"collect": false, "percentage": 82}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '71zPeZaH' \
    --namespace $AB_NAMESPACE \
    --count '68' \
    --offset '27' \
    --region 'DvpKl4Ke' \
    --serverId 'ASWdx4Jh' \
    --sortBy '5JnhBo4Y' \
    --sortDirection 'asc' \
    --status 'draining' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '84W6lUJj' \
    --namespace $AB_NAMESPACE \
    --count '64' \
    --offset '50' \
    --reason 'TwWO4tHS' \
    --region 'xCBmfhOO' \
    --serverId 'eNBSzZdB' \
    --sortDirection 'DxjUi1V0' \
    --status '3Fvu8Bny' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '79' \
    --inUse 'qygMHqp1' \
    --isProtected 'true' \
    --name 'gFAnCI1m' \
    --offset '24' \
    --sortBy 'v2k5yqqV' \
    --sortDirection 'HSPS3pEk' \
    --status 'iO3PBqGX' \
    --tag 'RVSrsTdM' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID '62tInzZ8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'tNGUFjKb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'Bv656mBM' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["XzMI7w9z", "RLoWfh7H", "0NyBzTb3"], "isProtected": false, "name": "RpXQZc0K", "removedTags": ["mYkVdX1m", "kkP5VbDi", "6lTS5EEt"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'BmH1I2TG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status '0IU8hmwl' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'Kw3N4GFP' \
    --body '{"status": "HKrqHwBF"}' \
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
    --serverID '8aEKIFMy' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'hNGWixUu' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'pJIMIc0o' \
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
    --fleetID 'mpHc3Vd5' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "eiMNJr6y", "sessionId": "wbCpjbsE"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'JsUVhqvH' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["eekisk7c", "2W0n6mPD", "RJBNlw7y"], "regions": ["Z0BRVmBz", "9GxHXrkv", "0ngfrJVn"], "sessionId": "2BFocZe5"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'aIBF2sHw' \
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