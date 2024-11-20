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
    --body '{"name": "bxS63FiK"}' \
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
    --body '{"token": "ng557ypM"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'TQ2qx5Oh' \
    --count '112' \
    --endDate 'VeqPk9zE' \
    --fleetID 'Ugs09Cfu' \
    --imageID 'XPtZdE3k' \
    --maxSize '41' \
    --minSize '55' \
    --offset '99' \
    --region 'rchjkAls' \
    --serverId 'Wcb7DMEB' \
    --sortBy 'KD9XbmiT' \
    --sortDirection 'desc' \
    --startDate 'AsW1BlaC' \
    --status 'xkPvbzhb' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'V8LHUjUa' \
    --fleetId 'sB43U9Oa' \
    --uploadedBefore '1981-05-08' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'b0EUWNdb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'a3oBpkrW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '320' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "2n5ERQup", "expiresAt": "1997-03-15T00:00:00Z", "imageId": "e7dyLmxo", "name": "i5QWZYxn"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'DrGIwKdC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'PSbGK6Xm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'true' \
    --name 'WGVSktsR' \
    --region 'ORiyFNMw' \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["N4tvCpGz", "75h1RYEE", "JUlvOaYb"], "dsHostConfiguration": {"instanceId": "up0W3ZB2", "serversPerVm": 70}, "imageDeploymentProfile": {"commandLine": "GxQeR713", "imageId": "q4pl0n5F", "portConfigurations": [{"name": "5ew9fYOA", "protocol": "f3YizOmU"}, {"name": "IDDCwyjx", "protocol": "EdyxQjYs"}, {"name": "skcNZJNV", "protocol": "S9VqcGzr"}], "timeout": {"claim": 72, "creation": 6, "drain": 83, "session": 81, "unresponsive": 33}}, "name": "wyIrRIew", "onDemand": false, "regions": [{"bufferSize": 34, "dynamicBuffer": false, "maxServerCount": 48, "minServerCount": 80, "region": "Bsztwuvt"}, {"bufferSize": 9, "dynamicBuffer": true, "maxServerCount": 55, "minServerCount": 100, "region": "NOALG1P3"}, {"bufferSize": 1, "dynamicBuffer": true, "maxServerCount": 90, "minServerCount": 93, "region": "YhwXupcO"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 70}}, "logs": {"crashed": {"collect": false, "percentage": 75}, "success": {"collect": false, "percentage": 72}, "unclaimed": {"collect": true, "percentage": 43}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'KlGrz9Yx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'bCE034vj' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["2vn11QQx", "YtIey5uC", "XdWfJVcN"], "dsHostConfiguration": {"instanceId": "O4919QiC", "serversPerVm": 50}, "imageDeploymentProfile": {"commandLine": "o1xYpT8t", "imageId": "J91ouef0", "portConfigurations": [{"name": "VPdQM7v3", "protocol": "OrguTEoR"}, {"name": "fc7HGqfq", "protocol": "DdTqeVkZ"}, {"name": "VKmqoKAY", "protocol": "CiJvXOK3"}], "timeout": {"claim": 9, "creation": 79, "drain": 50, "session": 46, "unresponsive": 47}}, "name": "L1FF7N0w", "onDemand": true, "regions": [{"bufferSize": 41, "dynamicBuffer": false, "maxServerCount": 16, "minServerCount": 84, "region": "voQZZPW4"}, {"bufferSize": 30, "dynamicBuffer": true, "maxServerCount": 75, "minServerCount": 59, "region": "9q9Ii31R"}, {"bufferSize": 8, "dynamicBuffer": true, "maxServerCount": 59, "minServerCount": 9, "region": "sZF5jLOa"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 29}}, "logs": {"crashed": {"collect": false, "percentage": 72}, "success": {"collect": false, "percentage": 22}, "unclaimed": {"collect": true, "percentage": 43}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '3uw6fzwL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'rxfWdwt2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'UPJuPQco' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 93}}, "logs": {"crashed": {"collect": false, "percentage": 92}, "success": {"collect": true, "percentage": 9}, "unclaimed": {"collect": true, "percentage": 69}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '5mYiEp4i' \
    --namespace $AB_NAMESPACE \
    --count '9' \
    --offset '18' \
    --region 'XSvEtX0R' \
    --serverId 'meey2hPG' \
    --sortBy 'SkC4Nps2' \
    --sortDirection 'asc' \
    --status 'claimed' \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'hNNYHDgw' \
    --namespace $AB_NAMESPACE \
    --count '94' \
    --offset '57' \
    --reason 'rczGNPFe' \
    --region '9z92Fpy9' \
    --serverId '7w25NgBa' \
    --sortDirection 'AOSQfwN8' \
    --status 'R7cMISiW' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '88' \
    --inUse 'XZKSwOtS' \
    --isProtected 'true' \
    --name 'M9S5HMze' \
    --offset '93' \
    --sortBy 'gw5afpKP' \
    --sortDirection 'vnDzSEKB' \
    --status 'MuZqmE9C' \
    --tag 'mKflVRvW' \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID '8GzIo9iE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'PMPk9F8O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'nrFtPjaa' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["KfYvPT1A", "mJ4u6h5B", "MwB7dozS"], "isProtected": false, "name": "VAZcpZIx", "removedTags": ["dpwThUxy", "djPwI2PG", "WrzCn0Q5"]}' \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'gib4vsC0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'dWSNv9At' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'CZ2DQEGL' \
    --body '{"status": "d62Ci4zU"}' \
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
    --serverID 'NS2pPje0' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'Y6bp7Mbq' \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'Lw3xsHbF' \
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
    --fleetID 'mbBOzXjs' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "jKiDnPfI", "sessionId": "REi0dZnB"}' \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'eEtx8K9H' \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["PHNR2Tvs", "7svWgZZQ", "iekCBFOn"], "regions": ["o8zsYUCt", "lKxJgBTY", "rw8MrCVh"], "sessionId": "2Ivit3BU"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'VADWNiVz' \
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