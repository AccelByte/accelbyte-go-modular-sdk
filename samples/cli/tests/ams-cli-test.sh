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
    --body '{"name": "8GgkGzNZ"}' \
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
    --body '{"token": "LZxxKzgm"}' \
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
    --body '{"active": false, "claimKeys": ["z5HTgz13", "Z3f4ao9t", "NKzkAtRW"], "dsHostConfiguration": {"instanceId": "JJis0u5Q", "instanceType": "vWaFG8mP", "serversPerVm": 70}, "imageDeploymentProfile": {"commandLine": "tmAzJKMO", "imageId": "f664Nl2e", "portConfigurations": [{"name": "rXDRXY1J", "protocol": "AKfnERho"}, {"name": "Sms4cB5g", "protocol": "ABnn1CzH"}, {"name": "QpmJG3u8", "protocol": "ivXpZ8up"}], "timeout": {"creation": 0, "drain": 82, "session": 94, "unresponsive": 37}}, "name": "OxesDeyf", "regions": [{"bufferSize": 38, "maxServerCount": 10, "minServerCount": 32, "region": "zqPTdlnq"}, {"bufferSize": 71, "maxServerCount": 96, "minServerCount": 92, "region": "yAsi3GSj"}, {"bufferSize": 5, "maxServerCount": 6, "minServerCount": 10, "region": "ECNS69GL"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'knhmDar8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '0uOg1Mib' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["kpVPywrJ", "HY8NE9u7", "L3Sx2lNp"], "dsHostConfiguration": {"instanceId": "rjlfFJQr", "instanceType": "iYm7xjwC", "serversPerVm": 30}, "imageDeploymentProfile": {"commandLine": "cFGWdkM8", "imageId": "NoaR30U5", "portConfigurations": [{"name": "AEfwn5ee", "protocol": "kyDlApnE"}, {"name": "bk0k6CaU", "protocol": "B8egPVzn"}, {"name": "4OZGmSEv", "protocol": "eCAZGxKY"}], "timeout": {"creation": 6, "drain": 86, "session": 19, "unresponsive": 35}}, "name": "mRctvnSj", "regions": [{"bufferSize": 27, "maxServerCount": 100, "minServerCount": 92, "region": "5ZSO7ejV"}, {"bufferSize": 82, "maxServerCount": 76, "minServerCount": 34, "region": "kAxK519v"}, {"bufferSize": 30, "maxServerCount": 0, "minServerCount": 61, "region": "AjaPKKBc"}]}' \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'G710wa0z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'bS2dZZZF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'pSjmtpYP' \
    --namespace $AB_NAMESPACE \
    --count '9' \
    --offset '13' \
    --reason 'Ml48zJBq' \
    --region 'Ks57UBQB' \
    --serverId 'mPpzB6bu' \
    --sortDirection 'gBxOMNOb' \
    --status 'AThblpvJ' \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'uuTQ0sj9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'hZirqvc7' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["4HsCarvb", "hQHbP6lA", "mpiNKrGH"], "isProtected": false, "name": "eDKF5Dmt", "removedTags": ["KGjdlV5D", "KOiX0uyq", "w3RwlQEo"]}' \
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
    --serverID 'fh0OB4kR' \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'hFH6OuO3' \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'ZZfqQgUe' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "QLuInVXS"}' \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'vJYr5MEw' \
    > test.out 2>&1
eval_tap $? 23 'LocalWatchdogConnect' test.out

#- 24 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["bQje1nr5", "aDZB6oXy", "WY6L0Ncy"], "regions": ["IDLps6xL", "wyT2JW0O", "OVIguyEH"]}' \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByKeys' test.out

#- 25 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'cRtKOpQI' \
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