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
    --body '{"name": "GzVPQ5qt"}' \
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
    --body '{"token": "1pQkSi94"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType '5alHn9V7' \
    --count '203' \
    --endDate 'YJhtDcSS' \
    --fleetID 'yWSXKYy3' \
    --imageID 'w74cFULV' \
    --maxSize '42' \
    --minSize '35' \
    --offset '94' \
    --region 'OcTeNIoV' \
    --serverId 'wR4Vhlzs' \
    --startDate 'FQJwr4Io' \
    --status 'UUke3Pws' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'f6CLd3jE' \
    --fleetId '3nRUbcDk' \
    --uploadedBefore '1972-06-27' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'OGsy1TZn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'fY8FCrJp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '94' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "ZXtQgPZm", "imageId": "f9i6iej7", "name": "8hIwK6q0"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'ZPeQX2Zv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'NXKFYTfz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["2SgCppKm", "wLHmje6I", "XO3EKKqB"], "dsHostConfiguration": {"instanceId": "dussyfFZ", "instanceType": "YK21CeRX", "serversPerVm": 60}, "imageDeploymentProfile": {"commandLine": "0kN1ldsd", "imageId": "7AQ5tW5e", "portConfigurations": [{"name": "GbHUE47k", "protocol": "968VMpQ6"}, {"name": "f3Y7f3fp", "protocol": "LX2gD9E7"}, {"name": "apTB8kzd", "protocol": "A7BnuGft"}], "timeout": {"creation": 87, "drain": 51, "session": 63, "unresponsive": 36}}, "name": "utBC01Ui", "onDemand": false, "regions": [{"bufferSize": 8, "dynamicBuffer": true, "maxServerCount": 37, "minServerCount": 69, "region": "M2SZErJQ"}, {"bufferSize": 86, "dynamicBuffer": false, "maxServerCount": 43, "minServerCount": 6, "region": "1fQAVG9p"}, {"bufferSize": 64, "dynamicBuffer": true, "maxServerCount": 50, "minServerCount": 72, "region": "BZV1CfcE"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 51}, "success": {"collect": true, "percentage": 33}}, "logs": {"crashed": {"collect": false, "percentage": 99}, "success": {"collect": true, "percentage": 97}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'Ioo80N71' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'mZNY8HDY' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["oBV6gwRQ", "fCCuR5qG", "GCOL3PFI"], "dsHostConfiguration": {"instanceId": "a3JeUsdD", "instanceType": "fMkbsawS", "serversPerVm": 57}, "imageDeploymentProfile": {"commandLine": "de9BC1jK", "imageId": "xinICmMX", "portConfigurations": [{"name": "AYKUoEft", "protocol": "C5VOHTzG"}, {"name": "yGezjlgc", "protocol": "uqiLI2Zn"}, {"name": "C1tCrH2n", "protocol": "EDbghZQ2"}], "timeout": {"creation": 16, "drain": 92, "session": 13, "unresponsive": 61}}, "name": "PArOwq1y", "onDemand": false, "regions": [{"bufferSize": 57, "dynamicBuffer": true, "maxServerCount": 96, "minServerCount": 85, "region": "b3duD4Hr"}, {"bufferSize": 94, "dynamicBuffer": false, "maxServerCount": 94, "minServerCount": 76, "region": "wNthm9gS"}, {"bufferSize": 64, "dynamicBuffer": true, "maxServerCount": 96, "minServerCount": 23, "region": "e189CnsP"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 42}, "success": {"collect": true, "percentage": 15}}, "logs": {"crashed": {"collect": false, "percentage": 61}, "success": {"collect": false, "percentage": 37}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '128Rj4Zo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'hi03acNi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'hFuWSVFD' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 63}, "success": {"collect": false, "percentage": 48}}, "logs": {"crashed": {"collect": false, "percentage": 3}, "success": {"collect": true, "percentage": 95}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '9RuBc3KK' \
    --namespace $AB_NAMESPACE \
    --count 'N7zY7Ots' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'WZ0tyW55' \
    --namespace $AB_NAMESPACE \
    --count '54' \
    --offset '93' \
    --reason '6V6i51p9' \
    --region '8S3upzwt' \
    --serverId 'yjwbCfI5' \
    --sortDirection 'g0tM26IN' \
    --status 'aE4JU5Gz' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'CKy9wzpD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID '11XvPYul' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'TvA3JL5Z' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["IYRIPRpG", "d7feYJtQ", "hyxtgl1n"], "isProtected": false, "name": "SGKrvSc8", "removedTags": ["41mChC4f", "4tAItsBT", "0iIvt1kf"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'TzWFbOD7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'EBgDPSon' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'hIKU5jtj' \
    --body '{"status": "SPJP3jgV"}' \
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
    --serverID '5AJWB4MG' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'dQU9h7FE' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'H6FtbcsL' \
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
    --fleetID 'eC4Ewm0a' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "YIcITxvF", "sessionId": "6couI8Qh"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'RDv4oeY1' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["Jm8L8yjH", "6HOI8rWM", "FwSbjv8L"], "regions": ["JfMXJmfI", "ml60U1CY", "V7ygQAUE"], "sessionId": "Yhm484Ls"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'a8TQ6E9u' \
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