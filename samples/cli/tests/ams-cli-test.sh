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
echo "1..27"

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

#- 4 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AccountGet' test.out

#- 5 AccountCreate
samples/cli/sample-apps Ams accountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "QTbeZ5DQ"}' \
    > test.out 2>&1
eval_tap $? 5 'AccountCreate' test.out

#- 6 AccountLinkTokenGet
samples/cli/sample-apps Ams accountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AccountLinkTokenGet' test.out

#- 7 AccountLink
samples/cli/sample-apps Ams accountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "z9Nqu2ny"}' \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

#- 8 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetList' test.out

#- 9 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["YW7wIdyE", "i47AQlvu", "3p0tSLk2"], "dsHostConfiguration": {"instanceId": "ZDbJnB2b", "instanceType": "m13zdrbO", "serversPerVm": 20}, "imageDeploymentProfile": {"commandLine": "WyvVBwyD", "imageId": "A47mwTzO", "portConfigurations": [{"name": "xcE5Mezg", "protocol": "T6W4nf9l"}, {"name": "fATF5IWU", "protocol": "oVSslVsW"}, {"name": "39VLgOE5", "protocol": "LRSYHtUi"}], "timeout": {"creation": 83, "drain": 79, "session": 73, "unresponsive": 75}}, "name": "QkPXeCtv", "regions": [{"bufferSize": 74, "maxServerCount": 11, "minServerCount": 29, "region": "e6IkIxAu"}, {"bufferSize": 35, "maxServerCount": 83, "minServerCount": 82, "region": "mk30XQrO"}, {"bufferSize": 58, "maxServerCount": 6, "minServerCount": 5, "region": "7aKE7HIW"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID '792PjUJ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'm59i4LMh' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["SeaDxV8x", "3SeAdqhs", "IrKTIVG0"], "dsHostConfiguration": {"instanceId": "KjLcqv9w", "instanceType": "uHTgF5Mj", "serversPerVm": 60}, "imageDeploymentProfile": {"commandLine": "jK7pgyNI", "imageId": "w2q5oIwJ", "portConfigurations": [{"name": "viUjjhOF", "protocol": "JnOPPOiu"}, {"name": "dpdyuO6U", "protocol": "6ovl87MG"}, {"name": "8r02vRNT", "protocol": "aogCsRYt"}], "timeout": {"creation": 21, "drain": 34, "session": 97, "unresponsive": 48}}, "name": "JqxZMjL0", "regions": [{"bufferSize": 25, "maxServerCount": 51, "minServerCount": 35, "region": "xzSlxuCe"}, {"bufferSize": 0, "maxServerCount": 22, "minServerCount": 43, "region": "otDdTjUI"}, {"bufferSize": 85, "maxServerCount": 95, "minServerCount": 29, "region": "Sy3HiA0c"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'nbNpRHu3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'hQIuFJZ1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'FA8rI3XM' \
    --namespace $AB_NAMESPACE \
    --count '3' \
    --offset '79' \
    --reason 'oep6B7fl' \
    --region 'pBbgawR2' \
    --serverId 'CMxYarOZ' \
    --sortDirection '718BQMuL' \
    --status 'ThT1Dbk3' \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'KnypMmgN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'izVQ4HF4' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["1XIE52Af", "4joGKGdR", "NVGBNoFF"], "isProtected": true, "name": "VA7FnRnK", "removedTags": ["6UySDNRd", "GBbsistl", "BC9psZ1b"]}' \
    > test.out 2>&1
eval_tap $? 17 'ImagePatch' test.out

#- 18 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'InfoRegions' test.out

#- 19 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'JnR5UcKY' \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'HTwDmLAt' \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'W75ZvJxy' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "9oCufFgm"}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'pRDI5sRL' \
    > test.out 2>&1
eval_tap $? 23 'LocalWatchdogConnect' test.out

#- 24 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["zqr0dILM", "F1hVt9VZ", "lTGEvhUx"], "regions": ["claJvt7k", "HugrFGoB", "Ba4M893B"]}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByKeys' test.out

#- 25 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'YXDjO6bw' \
    > test.out 2>&1
eval_tap $? 25 'WatchdogConnect' test.out

#- 26 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 26 'Func1' test.out

#- 27 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 27 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE