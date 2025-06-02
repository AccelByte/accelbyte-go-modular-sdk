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
    --body '{"name": "qjndlDwL"}' \
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
    --body '{"token": "4LJLqNFY"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'Q9OIfvmb' \
    --count '471' \
    --endDate 'u1P3nZEl' \
    --fleetID 'egkkCSod' \
    --imageID 'K3Zjd226' \
    --maxSize '42' \
    --minSize '59' \
    --offset '34' \
    --region 'Prf1UNKJ' \
    --serverId 'NR5dhMMf' \
    --sortBy 'npTNyPlT' \
    --sortDirection 'desc' \
    --startDate 'JiiIky6T' \
    --status 'rIq1n39h' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'aNwcEef5' \
    --fleetId 'JuBBHFCa' \
    --uploadedBefore '1983-03-31' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'aGLBYuZy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'R0DZ8wpw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '498' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "nMuLUHk3", "expiresAt": "1992-06-23T00:00:00Z", "imageId": "WiE8wHq5", "name": "9gFoLG1Q"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'J4qRycAQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID '6xnElRGm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'WSqwx0hV' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "7llFOglI", "expiresAt": "1997-06-06T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '82' \
    --name '8v0xSJrV' \
    --offset '53' \
    --region 'dMJOeM33' \
    --sortBy 'active' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["km8d2Ket", "fLRPq1PY", "031UVlEq"], "dsHostConfiguration": {"instanceId": "xoTtoBMX", "serversPerVm": 54}, "fallbackFleet": "4BlCnSGG", "imageDeploymentProfile": {"commandLine": "sciWjDst", "imageId": "daF2AXZl", "portConfigurations": [{"name": "Txs4w2T1", "protocol": "bL1DAyAd"}, {"name": "ww8D3xk1", "protocol": "74XeYTWG"}, {"name": "ZWCw0YKo", "protocol": "nbUHZTK2"}], "timeout": {"claim": 55, "creation": 84, "drain": 76, "session": 41, "unresponsive": 63}}, "name": "vwj6VhSj", "onDemand": false, "regions": [{"bufferSize": 17, "dynamicBuffer": false, "maxServerCount": 14, "minServerCount": 70, "region": "fhyJoVgc"}, {"bufferSize": 58, "dynamicBuffer": true, "maxServerCount": 91, "minServerCount": 77, "region": "7FD5DFvv"}, {"bufferSize": 95, "dynamicBuffer": false, "maxServerCount": 34, "minServerCount": 47, "region": "ePQriVew"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 71}}, "logs": {"crashed": {"collect": true, "percentage": 11}, "success": {"collect": false, "percentage": 67}, "unclaimed": {"collect": true, "percentage": 79}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'ZywC2VgT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'NlOmk7BD' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["mOegzQKI", "gD4cXdMI", "SSlKrP9y"], "dsHostConfiguration": {"instanceId": "v5o4tuAm", "serversPerVm": 0}, "fallbackFleet": "FJESRurg", "imageDeploymentProfile": {"commandLine": "1QKmMsUl", "imageId": "6WMbFwyy", "portConfigurations": [{"name": "gVXC8eqX", "protocol": "kTvxTqT9"}, {"name": "EyPSng3K", "protocol": "V2RFjbuX"}, {"name": "xSQAH9bu", "protocol": "ib6x0DBK"}], "timeout": {"claim": 29, "creation": 61, "drain": 24, "session": 7, "unresponsive": 84}}, "name": "UjlDh4km", "onDemand": false, "regions": [{"bufferSize": 60, "dynamicBuffer": false, "maxServerCount": 6, "minServerCount": 69, "region": "fpFExvs7"}, {"bufferSize": 66, "dynamicBuffer": true, "maxServerCount": 6, "minServerCount": 93, "region": "AMdIvki6"}, {"bufferSize": 100, "dynamicBuffer": true, "maxServerCount": 77, "minServerCount": 30, "region": "339aoSIE"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 25}}, "logs": {"crashed": {"collect": false, "percentage": 0}, "success": {"collect": true, "percentage": 25}, "unclaimed": {"collect": true, "percentage": 96}}}}' \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'hvwgibn8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'VtLhgQbv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'Nl4OkEjR' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 92}}, "logs": {"crashed": {"collect": false, "percentage": 11}, "success": {"collect": false, "percentage": 42}, "unclaimed": {"collect": false, "percentage": 53}}}' \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'Spi94PGA' \
    --namespace $AB_NAMESPACE \
    --count '11' \
    --offset '59' \
    --region 'ncxLnzGq' \
    --serverId 'Eh4u3Dmy' \
    --sortBy '09kgYegp' \
    --sortDirection 'asc' \
    --status 'claimed' \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'Kw4Jc8dE' \
    --namespace $AB_NAMESPACE \
    --count '14' \
    --offset '1' \
    --reason 'E531zzxl' \
    --region 'KwyREo5i' \
    --serverId 'qQtxXcue' \
    --sortDirection 'dSoxZJ5m' \
    --status 'N5rDZGoo' \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '77' \
    --inUse 'x1hfjsJP' \
    --isProtected 'true' \
    --name 'kE03OdSL' \
    --offset '97' \
    --sortBy 'x4qnVRCT' \
    --sortDirection 'JJeibKyb' \
    --status 'RdatYuGJ' \
    --tag 'kiv8WmFa' \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'maGF312u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'IRzGKtLh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'zvLOASA1' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["Klq527w1", "xi21hfH3", "ueEdIGA3"], "isProtected": true, "name": "yjM7QB2w", "removedTags": ["EzAXTay1", "RgALqosN", "ngvLJK3i"]}' \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'BuBgyU6J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'GKDhQ42P' \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region '4hXp5uU0' \
    --body '{"status": "XsDfuAN1"}' \
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
    --serverID 'NQwseMHo' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'gQLa8NeS' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'Iup3EMzo' \
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
    --fleetID 'OAikkVe6' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "SQTZkWvM", "sessionId": "glixtRyq"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'jtMNLkDO' \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["TiPQ4fxM", "P0XJuyVQ", "50TwVedg"], "regions": ["CNexFw3x", "7TPubYJi", "0EwzUMGW"], "sessionId": "t3os2siC"}' \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'A35cqTIT' \
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