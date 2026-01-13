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
    --body '{"name": "o66Gpbfb"}' \
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
    --body '{"token": "OodqWpuc"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'rsjBSwTq' \
    --count '322' \
    --endDate 'Qwjo8KaH' \
    --fleetID 'rbJLdMdv' \
    --imageID 'FDFCVdM8' \
    --maxSize '10' \
    --minSize '88' \
    --offset '4' \
    --region 'yDUV4efZ' \
    --serverId 'vc5M8mDz' \
    --sortBy 'cnkWJdgw' \
    --sortDirection 'asc' \
    --startDate 'd1iQPr49' \
    --status 'j40VCtuh' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'aDM0n5QP' \
    --fleetId '9vHI3Cwu' \
    --uploadedBefore '1981-03-21' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'tJdLPV7r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'YvKWlmaY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '158' \
    --imageId '0QdCKkvv' \
    --name 'f788tkyr' \
    --offset '10' \
    --sortBy 'name' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "ZUqn8K1j", "expiresAt": "1989-02-19T00:00:00Z", "imageId": "n1EYYuGb", "name": "Rw2ar84A"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'u8RABA9O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'gB9rKQxD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'vfm7vlDI' \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "qRbPjAE8", "expiresAt": "1991-02-23T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    --active 'false' \
    --count '24' \
    --name 'Gl6Yt8Bs' \
    --offset '73' \
    --region 'EvUHIjQb' \
    --sortBy 'active' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["NqzsUMui", "KLZfLeF1", "qlHxN4kG"], "dsHostConfiguration": {"instanceId": "WRV7sLSV", "serversPerVm": 89}, "fallbackFleet": "r6jBKtpE", "hibernateAfterPeriod": "tYkxMixO", "imageDeploymentProfile": {"commandLine": "VcMKr7yu", "imageId": "b5sEZp8D", "portConfigurations": [{"name": "NiPHeBf0", "protocol": "W51KxmSI"}, {"name": "Jo1gr8e1", "protocol": "dOSgclJJ"}, {"name": "42mSwXYO", "protocol": "RZHG9nHV"}], "timeout": {"claim": 15, "creation": 92, "drain": 63, "session": 18, "unresponsive": 98}}, "name": "Y8B6pwhR", "onDemand": true, "regions": [{"bufferSize": 49, "dynamicBuffer": false, "maxServerCount": 16, "minServerCount": 99, "region": "wMkGo0mO"}, {"bufferSize": 71, "dynamicBuffer": true, "maxServerCount": 63, "minServerCount": 82, "region": "pIXxkuu6"}, {"bufferSize": 27, "dynamicBuffer": false, "maxServerCount": 71, "minServerCount": 94, "region": "9XVQ7I1L"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 76}}, "logs": {"crashed": {"collect": true, "percentage": 90}, "success": {"collect": false, "percentage": 12}, "unclaimed": {"collect": false, "percentage": 11}}}}' \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace $AB_NAMESPACE \
    --body '{"fleetIds": ["VAWGgAsC", "Yvt3ZODd", "vzuX417w"]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'RDjWmpKL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'l05RxnUT' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["qfzFTHrC", "k8q0xN42", "OgcyBg1Y"], "dsHostConfiguration": {"instanceId": "3sDbq4Pb", "serversPerVm": 23}, "fallbackFleet": "K5tcfziw", "hibernateAfterPeriod": "yI422IuA", "imageDeploymentProfile": {"commandLine": "KwR7bBnc", "imageId": "B2JqOAdy", "portConfigurations": [{"name": "MUcNAn6x", "protocol": "nWfjeI5y"}, {"name": "zz2uHOZU", "protocol": "pDiMgbt7"}, {"name": "8lOSinia", "protocol": "ttsQyeTc"}], "timeout": {"claim": 12, "creation": 100, "drain": 33, "session": 51, "unresponsive": 92}}, "name": "9YGGjOzj", "onDemand": false, "regions": [{"bufferSize": 47, "dynamicBuffer": false, "maxServerCount": 63, "minServerCount": 35, "region": "WVUKMuzy"}, {"bufferSize": 14, "dynamicBuffer": true, "maxServerCount": 37, "minServerCount": 94, "region": "icuqb52H"}, {"bufferSize": 11, "dynamicBuffer": false, "maxServerCount": 89, "minServerCount": 71, "region": "56o7RFaa"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 11}}, "logs": {"crashed": {"collect": false, "percentage": 40}, "success": {"collect": true, "percentage": 9}, "unclaimed": {"collect": false, "percentage": 76}}}}' \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'rqJPhtp3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'IEaXeDXd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'WQxjjWPb' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": true, "percentage": 94}}, "logs": {"crashed": {"collect": false, "percentage": 88}, "success": {"collect": false, "percentage": 76}, "unclaimed": {"collect": false, "percentage": 28}}}' \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'V0FuxB6E' \
    --namespace $AB_NAMESPACE \
    --count '30' \
    --offset '75' \
    --region 'etBOLl2z' \
    --serverId 'rxmhYYbi' \
    --sortBy 'QCrVeuoP' \
    --sortDirection 'desc' \
    --status 'crash backoff' \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'KPdeQO4c' \
    --namespace $AB_NAMESPACE \
    --count '79' \
    --offset '30' \
    --reason 'LhKGqNLn' \
    --region 'Lv0Qbvay' \
    --serverId '1RvpgBaf' \
    --sortDirection 'N0TReYf3' \
    --status 'EZE7LdJP' \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    --count '31' \
    --inUse 'fOCDLTAq' \
    --isProtected 'false' \
    --name 'mN5v6nJC' \
    --offset '36' \
    --sortBy 'XneMe3ys' \
    --sortDirection 'rYwH05SY' \
    --status 'fuN4q743' \
    --tag 'bSomE24t' \
    --targetArchitecture 'HhcwWiwh' \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
samples/cli/sample-apps Ams imagesStorage \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'o4fuga6T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'nZeHEuS9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'hiXocLoW' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["gNKWiBRZ", "lqOab5Kf", "c6BE2LOU"], "isProtected": true, "name": "w6J80Drl", "removedTags": ["kPP7LTG2", "bBhBhDZu", "zuAetig5"]}' \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'MaP714in' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status '7e9vPgT8' \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region 'OHGIHtUJ' \
    --body '{"status": "QqRjWsrJ"}' \
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
    --serverID 'np6jZcMe' \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'x1ikUUZq' \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'T0vuApIg' \
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
    --fleetID 'LMRtOnQB' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "o2U9mjIt", "sessionId": "Jwj8Q9MO"}' \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'I6M2Za8h' \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["PmQn4c1D", "zAJQebwN", "ftPiTPyf"], "regions": ["0MiCYdqP", "ylVLm90O", "X0coqMP7"], "sessionId": "QlFKOXaU"}' \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'm3pEP8CD' \
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