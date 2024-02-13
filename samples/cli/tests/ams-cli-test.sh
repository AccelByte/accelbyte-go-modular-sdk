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
echo "1..37"

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
    --body '{"name": "XMgjAabc"}' \
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
    --body '{"token": "fdbnQJKq"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'ZRduCEmV' \
    --count '148' \
    --endDate 'oBGsYOww' \
    --fleetID 'HutZBvN0' \
    --imageID 'pf3b2Oaf' \
    --maxSize '33' \
    --minSize '19' \
    --offset '5' \
    --region 'aIIQ0smH' \
    --serverId 'L4gkW9xc' \
    --startDate 'GlquFGOp' \
    --status 'ZWXcoH07' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'MajhZn4p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID '8RJtDaBh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetList' test.out

#- 13 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["auAjpkD5", "mzbMIxTj", "6e0RWFCN"], "dsHostConfiguration": {"instanceId": "iZadTtjU", "instanceType": "RACsss2g", "serversPerVm": 0}, "imageDeploymentProfile": {"commandLine": "Pg04V6Au", "imageId": "mo1ig6JL", "portConfigurations": [{"name": "FUCFglBY", "protocol": "ouZMpDbr"}, {"name": "WoR6q734", "protocol": "Yn65GsNj"}, {"name": "a4kcgZRm", "protocol": "xyNbA7XP"}], "timeout": {"creation": 26, "drain": 1, "session": 52, "unresponsive": 47}}, "name": "1VFjD6gB", "regions": [{"bufferSize": 91, "maxServerCount": 9, "minServerCount": 82, "region": "Jevb9S3g"}, {"bufferSize": 53, "maxServerCount": 57, "minServerCount": 83, "region": "mElH9xh2"}, {"bufferSize": 28, "maxServerCount": 46, "minServerCount": 95, "region": "5Vsp3TM3"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 93}, "success": {"collect": false, "percentage": 29}}, "logs": {"crashed": {"collect": false, "percentage": 3}, "success": {"collect": false, "percentage": 10}}}}' \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '8r8VbQR0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'TxZ1zRnn' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["gMlMM9t1", "25Yknk2d", "NA47acBG"], "dsHostConfiguration": {"instanceId": "MXPCepKw", "instanceType": "8cg9Ui1R", "serversPerVm": 35}, "imageDeploymentProfile": {"commandLine": "fyRuuHdH", "imageId": "Ai4SqPbz", "portConfigurations": [{"name": "05XPejxi", "protocol": "qiukRB2R"}, {"name": "8iteS1S3", "protocol": "SvJ6OCYM"}, {"name": "E1di1ZtK", "protocol": "IdTEh9B3"}], "timeout": {"creation": 74, "drain": 47, "session": 55, "unresponsive": 39}}, "name": "g62VwxNX", "regions": [{"bufferSize": 61, "maxServerCount": 96, "minServerCount": 99, "region": "m2bNlXFU"}, {"bufferSize": 99, "maxServerCount": 75, "minServerCount": 38, "region": "MFKVgI8E"}, {"bufferSize": 90, "maxServerCount": 88, "minServerCount": 21, "region": "mCLHxmSk"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 38}, "success": {"collect": true, "percentage": 30}}, "logs": {"crashed": {"collect": true, "percentage": 48}, "success": {"collect": true, "percentage": 93}}}}' \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'BimtKsja' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID '9XUbzKqu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'uPSWIyRA' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 63}, "success": {"collect": false, "percentage": 36}}, "logs": {"crashed": {"collect": false, "percentage": 86}, "success": {"collect": true, "percentage": 15}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'fUXeTSgl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID '21wymIBn' \
    --namespace $AB_NAMESPACE \
    --count '28' \
    --offset '33' \
    --reason 'EY7OMM7j' \
    --region 'SorD7r21' \
    --serverId 'U31zs9pM' \
    --sortDirection '5DHYqohI' \
    --status 'asJQKUiq' \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'gaYiV5m1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'DTiRQt0W' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["48hSKvHW", "mAkusoHE", "kJeopA9R"], "isProtected": false, "name": "885y1f4j", "removedTags": ["kOFk2guS", "VXDmZBGf", "y0Aqqucr"]}' \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'ERSVqNKf' \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'Nli3GtID' \
    --body '{"status": "zIT2Xjy9"}' \
    > test.out 2>&1
eval_tap $? 25 'QoSRegionsUpdate' test.out

#- 26 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'InfoRegions' test.out

#- 27 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID '10OWbba7' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '64GYhuZd' \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'AccountGet' test.out

#- 31 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'w0rve4Nx' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "0i2QEWgG", "sessionId": "Np6pcyIh"}' \
    > test.out 2>&1
eval_tap $? 31 'FleetClaimByID' test.out

#- 32 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'dYIyOHsf' \
    > test.out 2>&1
eval_tap $? 32 'LocalWatchdogConnect' test.out

#- 33 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["PNgoO4B3", "IFaplqnJ", "91uYFB2b"], "regions": ["GLCGuFBB", "PuAmAcPl", "aTVpj0WE"], "sessionId": "NQGbFSCg"}' \
    > test.out 2>&1
eval_tap $? 33 'FleetClaimByKeys' test.out

#- 34 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'hyCvsVbz' \
    > test.out 2>&1
eval_tap $? 34 'WatchdogConnect' test.out

#- 35 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 35 'UploadURLGet' test.out

#- 36 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 36 'Func1' test.out

#- 37 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 37 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE