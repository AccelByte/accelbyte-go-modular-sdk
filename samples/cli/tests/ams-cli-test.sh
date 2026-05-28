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
    --body '{"name": "2uIpBBMx"}' \
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
    --body '{"token": "kSZj0T70"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'K9gu8pH4' \
    --count '283' \
    --endDate 'dFk65pVH' \
    --fleetID '1mkxPMvK' \
    --imageID 'wcBaySth' \
    --maxSize '47' \
    --minSize '16' \
    --offset '34' \
    --region 'yBGKsDHk' \
    --serverId 'HMEI7N9a' \
    --sortBy 'rgjju9yd' \
    --sortDirection 'desc' \
    --startDate 'RfCEPZ75' \
    --status 'r2a0Nan7' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'UtGJQHt4' \
    --fleetId 'z5HBLJvc' \
    --uploadedBefore '1976-07-05' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'la3k6bfj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'jVaHYi29' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '482' \
    --imageId 'd3y40aCn' \
    --name 'O4v8NWdC' \
    --offset '8' \
    --sortBy 'expires_at' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "np3YB8ml", "expiresAt": "1978-10-11T00:00:00Z", "imageId": "gOvbqKND", "name": "i6lqKgnR"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'ziwpNVpU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'wWsPKrxX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'X8QrRVs3' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "nDzOK8WV", "expiresAt": "1987-02-28T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '34' \
    --name 'X1eQdb4U' \
    --offset '98' \
    --region 'dSaAn9yz' \
    --sortBy 'active' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["8klFY6Mh", "G2vlyH36", "ybgRcXxz"], "dsHostConfiguration": {"instanceId": "HnNhMuIZ", "serversPerVm": 3}, "fallbackFleet": "WZ1gC54b", "hibernateAfterPeriod": "hmWMDMIz", "imageDeploymentProfile": {"commandLine": "Nycz8B2b", "imageId": "1EsLW3Xv", "portConfigurations": [{"name": "F4ULBrTP", "protocol": "6oy14jLp"}, {"name": "GbI2Ksgr", "protocol": "slXCG967"}, {"name": "9zkzpJv1", "protocol": "5Wjn7oVU"}], "timeout": {"claim": 27, "creation": 28, "drain": 23, "session": 57, "unresponsive": 48}}, "name": "Ish1kvWW", "onDemand": false, "regions": [{"bufferSize": 36, "dynamicBuffer": true, "maxServerCount": 98, "minServerCount": 81, "region": "PUHi7up6"}, {"bufferSize": 89, "dynamicBuffer": true, "maxServerCount": 57, "minServerCount": 8, "region": "LnfhkTYJ"}, {"bufferSize": 36, "dynamicBuffer": false, "maxServerCount": 24, "minServerCount": 58, "region": "aTr4wA18"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 49}}, "logs": {"crashed": {"collect": true, "percentage": 24}, "success": {"collect": false, "percentage": 100}, "unclaimed": {"collect": false, "percentage": 8}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["1dp0vS3H", "xFiyaayt", "v7Ov36F6"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '5NCkIylE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'D1D7oria' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["7MyAeRuy", "I12CvMaQ", "oVQM7OBc"], "dsHostConfiguration": {"instanceId": "OGwr0GBN", "serversPerVm": 11}, "fallbackFleet": "G7jUpsWm", "hibernateAfterPeriod": "bGq68M8C", "imageDeploymentProfile": {"commandLine": "3z2Z3xOO", "imageId": "NFvDfXie", "portConfigurations": [{"name": "wLIC7oLK", "protocol": "ev1EVkWJ"}, {"name": "rB0Li4ko", "protocol": "5hasY7Vp"}, {"name": "t7imyHXH", "protocol": "qdAPRmWg"}], "timeout": {"claim": 80, "creation": 56, "drain": 34, "session": 10, "unresponsive": 47}}, "name": "LnBRVuoO", "onDemand": true, "regions": [{"bufferSize": 77, "dynamicBuffer": true, "maxServerCount": 75, "minServerCount": 84, "region": "tgXYMikn"}, {"bufferSize": 91, "dynamicBuffer": true, "maxServerCount": 75, "minServerCount": 60, "region": "KUZzPAXE"}, {"bufferSize": 36, "dynamicBuffer": false, "maxServerCount": 0, "minServerCount": 83, "region": "RgP9y0Ye"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 73}}, "logs": {"crashed": {"collect": true, "percentage": 79}, "success": {"collect": true, "percentage": 9}, "unclaimed": {"collect": true, "percentage": 58}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'GDk7u7Ys' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'QVO4zGLD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'Q7EBN2EC' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 47}}, "logs": {"crashed": {"collect": false, "percentage": 8}, "success": {"collect": false, "percentage": 8}, "unclaimed": {"collect": false, "percentage": 27}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'gUslm6nj' \
    --namespace $AB_NAMESPACE \
    --count '94' \
    --offset '35' \
    --region 'CVN68kVz' \
    --serverId 'F9Bd4seW' \
    --sortBy 'LtLujuq7' \
    --sortDirection 'asc' \
    --status 'ready' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'duxuIKyM' \
    --namespace $AB_NAMESPACE \
    --count '67' \
    --offset '52' \
    --reason '2XpAwB2X' \
    --region 'Lz0l5ObV' \
    --serverId 'FGxJEqBG' \
    --sortDirection 'ja9cmM3f' \
    --status 'yjUtoyPR' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '29' \
    --inUse 'oxMYHJDD' \
    --isProtected 'true' \
    --name 'AGq2cowk' \
    --offset '24' \
    --sortBy 'clGorNmO' \
    --sortDirection 'Ul8q3J4F' \
    --status 'Lx9Flodt' \
    --tag 'C2sqXGsc' \
    --targetArchitecture 'MHokbiAA' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'Ra3il12v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'FnmZ1zGa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'cSxZm5pW' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["km1Wm24z", "XX72Oz7a", "iXZhq7Qb"], "isProtected": false, "name": "7B5YkPHu", "removedTags": ["dOe3jXf5", "rhbNDmKf", "Hm1hBjiv"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID '8xc1sH6G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'oo8sOu9Z' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'Y4FpwN1K' \
    --body '{"status": "g4wWOvxL"}' \
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
    --serverID 'uVFxODUu' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'ctYiBU6H' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '4ggy3D9n' \
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
    --fleetID 'yJRtzRww' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "pqrwGyw3", "sessionId": "19lbSqRl"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'R5ur6Fcn' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["KfumAruz", "MJw8hb2c", "iwk7C4vr"], "regions": ["tbLtuEgj", "ib8mcUYN", "9bbNg0Zo"], "sessionId": "LPQRhao5"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Dra7USNa' \
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