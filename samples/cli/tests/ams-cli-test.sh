#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..24"

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

#- 2 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'AccountGet' test.out

#- 3 AccountCreate
samples/cli/sample-apps Ams accountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "kR59WJLAeFjhm4Iw"}' \
    > test.out 2>&1
eval_tap $? 3 'AccountCreate' test.out

#- 4 AccountLinkTokenGet
samples/cli/sample-apps Ams accountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AccountLinkTokenGet' test.out

#- 5 AccountLink
samples/cli/sample-apps Ams accountLink \
    --namespace $AB_NAMESPACE \
    --body '{"token": "8681nTmzma3nLiAG"}' \
    > test.out 2>&1
eval_tap $? 5 'AccountLink' test.out

#- 6 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'FleetList' test.out

#- 7 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["rcl3WQvudNBbATiW", "3jIliUzqlXzkHOav", "eHRRKhAZi7KTmHN5"], "dsHostConfiguration": {"instanceId": "rEaP1WwwwIskFa34", "instanceType": "mqok1ltjiHBx4lGQ", "serversPerVm": 92}, "imageDeploymentProfile": {"commandLine": "E696fEm2d8rNaa2d", "imageId": "nt2qTDzA0S3xV91k", "portConfigurations": [{"name": "FOZ5X7aU0BE9vnlp", "protocol": "X9Be4Mj58YJB4tMn"}, {"name": "lT3XMDo6p15pEB9w", "protocol": "QrGtyOTwReKPSL87"}, {"name": "odYsm4U1fgajjMDw", "protocol": "sKbZEcIAtMmtXka0"}], "timeout": {"creation": 76, "drain": 86, "session": 31, "unresponsive": 31}}, "name": "jitwGx3DyL74c5Ke", "regions": [{"bufferSize": 36, "maxServerCount": 28, "minServerCount": 94, "region": "FaavfEEaWS1PJp2X"}, {"bufferSize": 13, "maxServerCount": 49, "minServerCount": 71, "region": "0A9O3ZnUk9pNINwC"}, {"bufferSize": 16, "maxServerCount": 17, "minServerCount": 77, "region": "zN353sqR2XRe9pKO"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'lrPDxznmRtk63jQz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'QQKeanJ47PYwCzmx' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["0kZcvNocTJR0rzmV", "9yiJ7FoMxPseGKK8", "BstTZoib7rKhofTa"], "dsHostConfiguration": {"instanceId": "bAtc3el5QE5CKxZ8", "instanceType": "hVEvTh2q7M2I7ro8", "serversPerVm": 17}, "imageDeploymentProfile": {"commandLine": "jfZA2Ux9KK3k1J8g", "imageId": "QAhzDyvbQNXvON98", "portConfigurations": [{"name": "ijJo5gBb9jpoqWy2", "protocol": "FzF9SnPLLe4Pg9Sz"}, {"name": "kpO3BacqInHXmlHO", "protocol": "mpgGmO5FYHRTkXAB"}, {"name": "KhjFfMrTgQnOrnjC", "protocol": "awRIDkjzS2f2l4hL"}], "timeout": {"creation": 77, "drain": 28, "session": 22, "unresponsive": 89}}, "name": "8It3WPf0Ynvgoa5I", "regions": [{"bufferSize": 98, "maxServerCount": 45, "minServerCount": 25, "region": "ECdIUdLFAY6Iea7f"}, {"bufferSize": 46, "maxServerCount": 78, "minServerCount": 0, "region": "9lArPYB6XEM21yDD"}, {"bufferSize": 15, "maxServerCount": 89, "minServerCount": 31, "region": "yoReCSNTNCnxs0KK"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'pGJNTEABm0To21ZQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'KotJfsvGEslyZjFN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'SFt0D1SOicKNfcTY' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 12 'FleetServerHistory' test.out

#- 13 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ImageList' test.out

#- 14 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'J9xaDVZerCqHgWh3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID '6dEoK5q4c7xgtS7D' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["fR2pFkO973D4Jm97", "cPxSndM3qbXtk5J2", "irGJ6tvFZzaqRP5Z"], "isProtected": false, "name": "xaoS1rPPmU6AAKLg", "removedTags": ["XXi0nWQOmzCrRuUS", "34pGYKo51sNy7d4l", "J5LuGBHl4PpZfZTO"]}' \
    > test.out 2>&1
eval_tap $? 15 'ImagePatch' test.out

#- 16 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'InfoRegions' test.out

#- 17 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'QvEaa7YoUknj2brX' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'sfFnU3WF8IBjJADL' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'w9gt3HNJfARH7Tmg' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "m5IMkRkjz1vSZnjV"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["GYmwF5Hvpa2Ksntj", "fkQ2ozXYV6jiv7PA", "2R3CRP9R0uNGFNxO"], "regions": ["0xaBkC09wMIWttBJ", "zsX9Dl60POOeL8AT", "rjVDgDgePJMOQ4VP"]}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'Gjc2F8fB1O0UGp6p' \
    > test.out 2>&1
eval_tap $? 22 'WatchdogConnect' test.out

#- 23 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 23 'Func1' test.out

#- 24 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 24 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE