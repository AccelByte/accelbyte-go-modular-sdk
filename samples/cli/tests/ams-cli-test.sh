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
    --body '{"name": "LWA8cb5F"}' \
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
    --body '{"token": "IAltR2KJ"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'Rp5Lslch' \
    --count '216' \
    --endDate 'DsRyhhxy' \
    --fleetID 'ZL0sj1Kb' \
    --imageID 'SyiZybM8' \
    --maxSize '83' \
    --minSize '11' \
    --offset '75' \
    --region 'UzdzFPn4' \
    --serverId '5bvxhaYm' \
    --sortBy 'rCk6mClt' \
    --sortDirection 'asc' \
    --startDate '4STYkd0Q' \
    --status 'UTxwfQZJ' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'AXjTdOKE' \
    --fleetId 'McKVyPzk' \
    --uploadedBefore '1974-11-07' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID '2zAgZFzW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'BT8Zn33l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '395' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "saiSz2GC", "expiresAt": "1997-11-27T00:00:00Z", "imageId": "oAd70VpD", "name": "PCdjs8v5"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'J36UJ3jk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'BSvS0dZ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --count '22' \
    --name '2YI0ZmzV' \
    --offset '93' \
    --region '5m8RwsID' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["m0NSYofi", "d88Hs7yC", "N5Tgl9zz"], "dsHostConfiguration": {"instanceId": "jmusNlbW", "serversPerVm": 42}, "fallbackFleet": "IOkKilbx", "imageDeploymentProfile": {"commandLine": "0ra4TnPz", "imageId": "EGC7dSKI", "portConfigurations": [{"name": "zzqYhkqp", "protocol": "fAuFRPG2"}, {"name": "pHdYd3dX", "protocol": "ITl8u00F"}, {"name": "1Q3s4EWF", "protocol": "DvPyiLuw"}], "timeout": {"claim": 10, "creation": 77, "drain": 16, "session": 9, "unresponsive": 83}}, "name": "IRHRw8K9", "onDemand": false, "regions": [{"bufferSize": 55, "dynamicBuffer": true, "maxServerCount": 32, "minServerCount": 65, "region": "mSmBJAxg"}, {"bufferSize": 13, "dynamicBuffer": false, "maxServerCount": 56, "minServerCount": 8, "region": "VlNJkceN"}, {"bufferSize": 68, "dynamicBuffer": false, "maxServerCount": 17, "minServerCount": 66, "region": "Nk0kxMwn"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 71}}, "logs": {"crashed": {"collect": true, "percentage": 37}, "success": {"collect": true, "percentage": 18}, "unclaimed": {"collect": false, "percentage": 65}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'e7A8wAmW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'KMjJzrip' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["4eYbPvPf", "8RuHQN3S", "dkeiMJcM"], "dsHostConfiguration": {"instanceId": "s0BNinDr", "serversPerVm": 13}, "fallbackFleet": "16jORE6h", "imageDeploymentProfile": {"commandLine": "IOITNkED", "imageId": "LwyR9BNh", "portConfigurations": [{"name": "50bmBR1N", "protocol": "5sUsytLa"}, {"name": "Pdlw337Q", "protocol": "tyEHYg7u"}, {"name": "UKqK57ib", "protocol": "g9XPUhg2"}], "timeout": {"claim": 53, "creation": 48, "drain": 18, "session": 71, "unresponsive": 99}}, "name": "d23UxDWd", "onDemand": false, "regions": [{"bufferSize": 73, "dynamicBuffer": true, "maxServerCount": 34, "minServerCount": 100, "region": "EDx6E7gg"}, {"bufferSize": 81, "dynamicBuffer": false, "maxServerCount": 97, "minServerCount": 60, "region": "dfZRn0MQ"}, {"bufferSize": 3, "dynamicBuffer": true, "maxServerCount": 57, "minServerCount": 69, "region": "xMOz6BIh"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 96}}, "logs": {"crashed": {"collect": false, "percentage": 58}, "success": {"collect": false, "percentage": 79}, "unclaimed": {"collect": false, "percentage": 16}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'IinEXSFi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '6wEc5z7B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'uZSS1gUl' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 41}}, "logs": {"crashed": {"collect": false, "percentage": 24}, "success": {"collect": false, "percentage": 48}, "unclaimed": {"collect": false, "percentage": 4}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '8ArdK6FE' \
    --namespace $AB_NAMESPACE \
    --count '46' \
    --offset '74' \
    --region 'JF0vdcLS' \
    --serverId '1kMJr2I7' \
    --sortBy 'ldv8PLHB' \
    --sortDirection 'desc' \
    --status 'draining' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'z43l2u8U' \
    --namespace $AB_NAMESPACE \
    --count '49' \
    --offset '78' \
    --reason 'ZLq3t8JA' \
    --region 'UNi8VUXe' \
    --serverId 'dyPdUIZj' \
    --sortDirection 'F8dq6sRX' \
    --status 'AjKgkESK' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '39' \
    --inUse 'AHGrOyLT' \
    --isProtected 'false' \
    --name 'jKwhlr5Z' \
    --offset '74' \
    --sortBy 'PRzZZXtY' \
    --sortDirection 'F4Ll3UAn' \
    --status '7Rtq6w4J' \
    --tag 'DBNyzq2Y' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'sidrxN4E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID '1pEHj4rt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '9I2kIx5R' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["vihMzgtb", "jOCdEjCM", "Ve0kbeyf"], "isProtected": true, "name": "ysxnpWEI", "removedTags": ["RCqsjGPd", "wp1ZdvEf", "cgeVcDZI"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'dCIBtYNW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'RPzmlTzz' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'TrBaI7aP' \
    --body '{"status": "shrYw5zR"}' \
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
    --serverID 'Al4tMWtQ' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'n0J1PFxy' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '7pJxpbUt' \
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
    --fleetID '4hQdpMoC' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "GmmBSwfV", "sessionId": "6jHtzuO7"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'CMogfJXh' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["1Ra2zci1", "kLw9aoHp", "HPJcxJG7"], "regions": ["GerH6YD9", "JO27RVhp", "GLnEqUOq"], "sessionId": "UiY3nHOY"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'fjvoQJwo' \
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