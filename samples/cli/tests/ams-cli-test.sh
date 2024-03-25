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
    --body '{"name": "JNdZ8LxF"}' \
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
    --body '{"token": "nftWbmtT"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'jYq36v9D' \
    --count '401' \
    --endDate 'u4zW3N1o' \
    --fleetID 'HGAVsXPR' \
    --imageID 'qMxwJpnv' \
    --maxSize '74' \
    --minSize '0' \
    --offset '25' \
    --region 'kiSoLJmn' \
    --serverId 'Xd3QN9Zz' \
    --startDate 'rlZx8rzN' \
    --status '4n7nK5N6' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'al6CYr7r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID '8HoisEVF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DevelopmentServerConfigurationList' test.out

#- 13 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLine": "V7NPdJ3X", "imageId": "xSK57Tif", "name": "6V7oLqSn"}' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationCreate' test.out

#- 14 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'gkjH2lKh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationGet' test.out

#- 15 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'sSDXZE1Y' \
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
    --body '{"active": true, "claimKeys": ["2W3ad7C0", "M8gnspdd", "QHcsbui9"], "dsHostConfiguration": {"instanceId": "girhWC8s", "instanceType": "7QdUDOag", "serversPerVm": 94}, "imageDeploymentProfile": {"commandLine": "Q6LctCKV", "imageId": "ttfvlqAF", "portConfigurations": [{"name": "hpl3LUpd", "protocol": "ZClzmNtF"}, {"name": "T7wB0BdW", "protocol": "TNdewXu5"}, {"name": "9xufkQDa", "protocol": "0ZAuRdf6"}], "timeout": {"creation": 17, "drain": 100, "session": 24, "unresponsive": 27}}, "name": "7qIbfDgj", "regions": [{"bufferSize": 85, "maxServerCount": 43, "minServerCount": 99, "region": "y8ldcYpC"}, {"bufferSize": 64, "maxServerCount": 53, "minServerCount": 34, "region": "p99p14KU"}, {"bufferSize": 48, "maxServerCount": 97, "minServerCount": 40, "region": "LnhmVkF3"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 55}, "success": {"collect": false, "percentage": 2}}, "logs": {"crashed": {"collect": true, "percentage": 6}, "success": {"collect": false, "percentage": 6}}}}' \
    > test.out 2>&1
eval_tap $? 17 'FleetCreate' test.out

#- 18 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'wnvd4cVp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'FleetGet' test.out

#- 19 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '7K6JJR1j' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["gvTLeVP1", "2o8fdxl6", "yKrBxDxt"], "dsHostConfiguration": {"instanceId": "PeYDmQzH", "instanceType": "evQmioog", "serversPerVm": 79}, "imageDeploymentProfile": {"commandLine": "NPvrULMd", "imageId": "RwJizqwu", "portConfigurations": [{"name": "gqTSPKrT", "protocol": "Lj2RM2D6"}, {"name": "TZjr36Cz", "protocol": "DUcbldpM"}, {"name": "qmpbFc6C", "protocol": "88qJyxbN"}], "timeout": {"creation": 56, "drain": 3, "session": 38, "unresponsive": 40}}, "name": "pFLKGbxx", "regions": [{"bufferSize": 40, "maxServerCount": 73, "minServerCount": 57, "region": "VM1rOGRp"}, {"bufferSize": 55, "maxServerCount": 100, "minServerCount": 92, "region": "AojENodK"}, {"bufferSize": 14, "maxServerCount": 25, "minServerCount": 94, "region": "oKCE5R9E"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 34}, "success": {"collect": false, "percentage": 23}}, "logs": {"crashed": {"collect": true, "percentage": 43}, "success": {"collect": true, "percentage": 11}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetUpdate' test.out

#- 20 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'OYWfjDdR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'FleetDelete' test.out

#- 21 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '54rdQOU7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetArtifactSamplingRulesGet' test.out

#- 22 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID '5rVlfPFp' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 19}, "success": {"collect": true, "percentage": 47}}, "logs": {"crashed": {"collect": true, "percentage": 83}, "success": {"collect": true, "percentage": 23}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesSet' test.out

#- 23 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'xKM9133d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetServers' test.out

#- 24 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'AqbBhWoc' \
    --namespace $AB_NAMESPACE \
    --count '74' \
    --offset '32' \
    --reason 'OKs80mpM' \
    --region '0D8Klptt' \
    --serverId 'KdK3AIUs' \
    --sortDirection 'XLW2HI2v' \
    --status 'TC4z1Uii' \
    > test.out 2>&1
eval_tap $? 24 'FleetServerHistory' test.out

#- 25 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'ImageList' test.out

#- 26 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'IQIBdag0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageGet' test.out

#- 27 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'bYpE4uR8' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["AXJ8WXh4", "LpNDPwbp", "4WBlEaz3"], "isProtected": false, "name": "wbjiLWrF", "removedTags": ["DkKQjMnT", "hzKI6v4y", "ZVWL2gug"]}' \
    > test.out 2>&1
eval_tap $? 27 'ImagePatch' test.out

#- 28 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'JjdrYxZb' \
    > test.out 2>&1
eval_tap $? 28 'QoSRegionsGet' test.out

#- 29 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'NizWebR1' \
    --body '{"status": "Y2pj90iZ"}' \
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
    --serverID 'kQrN0lNH' \
    > test.out 2>&1
eval_tap $? 31 'FleetServerInfo' test.out

#- 32 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'RRwUZEnd' \
    > test.out 2>&1
eval_tap $? 32 'FleetServerConnectionInfo' test.out

#- 33 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'CG4NHkcA' \
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
    --fleetID 'ZxoXSYL4' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "C56H6Llr", "sessionId": "U705mA4L"}' \
    > test.out 2>&1
eval_tap $? 36 'FleetClaimByID' test.out

#- 37 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'cV2kNqTH' \
    > test.out 2>&1
eval_tap $? 37 'LocalWatchdogConnect' test.out

#- 38 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["xEqzssea", "g4HmztdT", "4mqgYHHp"], "regions": ["vHbzbhBH", "CjTpnVva", "GCxQL1lr"], "sessionId": "Bplbrbar"}' \
    > test.out 2>&1
eval_tap $? 38 'FleetClaimByKeys' test.out

#- 39 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'clsOIDgM' \
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