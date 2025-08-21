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
    --body '{"name": "8bOJdH8X"}' \
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
    --body '{"token": "Qv9BQj7D"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'vxlmc6Ed' \
    --count '306' \
    --endDate 'syw9fL2V' \
    --fleetID 'YGIYiXpi' \
    --imageID 'gfGoI9cX' \
    --maxSize '29' \
    --minSize '40' \
    --offset '70' \
    --region 'MYxcL0ub' \
    --serverId 'Dkw3N7tv' \
    --sortBy 'DMzT8IIE' \
    --sortDirection 'asc' \
    --startDate 'Jm873gkB' \
    --status '8FGEykOU' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'qUbBcQuo' \
    --fleetId '0dI5duVo' \
    --uploadedBefore '1983-05-05' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'SgjjzVlh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'gfgcqHw0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '181' \
    --imageId 'qHYnLA93' \
    --name 'zQsrvKCE' \
    --offset '57' \
    --sortBy 'created_at' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "3MeD3AJo", "expiresAt": "1991-03-10T00:00:00Z", "imageId": "8mtCWhXv", "name": "QmCfUeqR"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'UeKZ44YH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID '2WIEAmTj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'dxGKxnGj' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "I1FyDUog", "expiresAt": "1987-04-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '81' \
    --name 'zEeblNPS' \
    --offset '81' \
    --region 'q9RbdG5a' \
    --sortBy 'name' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["FVmaap27", "bMnVeQKG", "PXv2LVFy"], "dsHostConfiguration": {"instanceId": "5SKgMJXz", "serversPerVm": 100}, "fallbackFleet": "mQPbXLFF", "hibernateAfterPeriod": "wJOq8Cet", "imageDeploymentProfile": {"commandLine": "RgV3oStt", "imageId": "QdJ4CzuN", "portConfigurations": [{"name": "x7YxcuEb", "protocol": "r72GKFTB"}, {"name": "oAC3xkRG", "protocol": "Q2fbJZjJ"}, {"name": "0pBsfLBp", "protocol": "Rl2tMJpM"}], "timeout": {"claim": 85, "creation": 79, "drain": 39, "session": 8, "unresponsive": 21}}, "name": "ZEq4kNVM", "onDemand": true, "regions": [{"bufferSize": 8, "dynamicBuffer": true, "maxServerCount": 81, "minServerCount": 89, "region": "ZENR4rFR"}, {"bufferSize": 78, "dynamicBuffer": false, "maxServerCount": 93, "minServerCount": 32, "region": "ERdLn2GD"}, {"bufferSize": 74, "dynamicBuffer": true, "maxServerCount": 33, "minServerCount": 90, "region": "GWMz2i14"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 20}}, "logs": {"crashed": {"collect": true, "percentage": 27}, "success": {"collect": true, "percentage": 20}, "unclaimed": {"collect": false, "percentage": 35}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'g7NIUePq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'bh02UDLT' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["hoK9SXBy", "Qob8U5M4", "Lt5wz8eF"], "dsHostConfiguration": {"instanceId": "BTaVtBiw", "serversPerVm": 9}, "fallbackFleet": "4lMjX1a0", "hibernateAfterPeriod": "QBhTIop0", "imageDeploymentProfile": {"commandLine": "RJWwRInm", "imageId": "c9AbEmUv", "portConfigurations": [{"name": "mpwkxtq2", "protocol": "hrBLBQa1"}, {"name": "KhAEAXJ4", "protocol": "fxZnX6nU"}, {"name": "TXbInpFI", "protocol": "fuEmA5mM"}], "timeout": {"claim": 30, "creation": 84, "drain": 67, "session": 67, "unresponsive": 43}}, "name": "XVZxGPv2", "onDemand": false, "regions": [{"bufferSize": 66, "dynamicBuffer": true, "maxServerCount": 85, "minServerCount": 36, "region": "0AzJ3skA"}, {"bufferSize": 16, "dynamicBuffer": false, "maxServerCount": 23, "minServerCount": 46, "region": "mVy59BN0"}, {"bufferSize": 56, "dynamicBuffer": true, "maxServerCount": 4, "minServerCount": 0, "region": "7225DiUf"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 28}}, "logs": {"crashed": {"collect": false, "percentage": 49}, "success": {"collect": false, "percentage": 94}, "unclaimed": {"collect": false, "percentage": 65}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '3hDOlWhj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'CV6i93dD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID '1zlajMfy' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 92}}, "logs": {"crashed": {"collect": false, "percentage": 72}, "success": {"collect": false, "percentage": 21}, "unclaimed": {"collect": true, "percentage": 92}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'g4piwVr8' \
    --namespace $AB_NAMESPACE \
    --count '65' \
    --offset '17' \
    --region '5MWwhti3' \
    --serverId 'Kroq4dmG' \
    --sortBy 'i0k9ngi1' \
    --sortDirection 'asc' \
    --status 'unresponsive' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'h027CuKE' \
    --namespace $AB_NAMESPACE \
    --count '20' \
    --offset '88' \
    --reason 'uCCcX4cX' \
    --region 'BkZSaSWK' \
    --serverId '41pOT1Z8' \
    --sortDirection 'cWGwPWxK' \
    --status 'y5B2hA3z' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '29' \
    --inUse 'eadR3zKi' \
    --isProtected 'false' \
    --name 'sZekicy8' \
    --offset '24' \
    --sortBy 'cQ0IlBn9' \
    --sortDirection '51wBllkr' \
    --status 'wRqjxPVl' \
    --tag 'L1tQrJ2b' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'jK69sR3H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'OXLKnncZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'yQFZmflY' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["PthDV3Lw", "kABxDcj5", "5OJVxqsY"], "isProtected": false, "name": "sxbD7adJ", "removedTags": ["EtJ7OdRl", "ONADEz6u", "Md47Kkxx"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'lL10JRq7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status '3AwWudHR' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'hePsdtPU' \
    --body '{"status": "lqYlZIY1"}' \
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
    --serverID 'ReKPgufF' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'D5eXiucU' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '5MC5dUia' \
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
    --fleetID 'fggKW08J' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "Yu9KWKOK", "sessionId": "R1zhYn11"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'NAWn1o2z' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["858mRjkV", "fCFYQ5ZC", "lS3SIfom"], "regions": ["HzsdlHlO", "pEU4s52w", "H4scoNf6"], "sessionId": "xJa7zcWu"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'MhJiCxJ8' \
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