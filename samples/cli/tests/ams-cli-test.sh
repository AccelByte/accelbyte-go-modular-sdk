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
    --body '{"name": "EFzjb7zmMcCTKfyF"}' \
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
    --body '{"token": "dsBcQsKDZtsaf9jp"}' \
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
    --body '{"active": true, "claimKeys": ["bHxJSr92aQSHzsGz", "3pQeLgUFRQO9L68D", "MgrgPZJdDAQ05YAV"], "dsHostConfiguration": {"instanceId": "MbicmmAUEoYb49gE", "instanceType": "BddlDyR2RTIEmRXp", "serversPerVm": 63}, "imageDeploymentProfile": {"commandLine": "PwnejHubDv48TlIK", "imageId": "OCbFi6HTyoeOXKFZ", "portConfigurations": [{"name": "citHPFkMtvYpite5", "protocol": "RAJNyOONc4bWuEeA"}, {"name": "QaO8bnpOjpiuSr6t", "protocol": "x9DM0e9nFDJc0G0N"}, {"name": "EEWHbs4NFkCmcCRf", "protocol": "w8VhrEQGFfUPXoZS"}], "timeout": {"creation": 85, "drain": 12, "session": 70, "unresponsive": 18}}, "name": "4Ufm2N1cCGYzIfHf", "regions": [{"bufferSize": 21, "maxServerCount": 32, "minServerCount": 17, "region": "y6gXuPkDGqI4Erke"}, {"bufferSize": 1, "maxServerCount": 86, "minServerCount": 34, "region": "t6hCwNXgJHyaN9lc"}, {"bufferSize": 82, "maxServerCount": 71, "minServerCount": 91, "region": "iTnUOzyTci4ygTzT"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'HaHlsE0DIUo2BSl0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'esmfjtVWuFuG3HML' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["68fnO9t2PT8yRCRw", "FS3g2Md5PAyoFKMU", "aNIB9evYsmIyG2Yg"], "dsHostConfiguration": {"instanceId": "PWfmqC95FurXjYhQ", "instanceType": "9RiFvaaVCnS6a8yk", "serversPerVm": 36}, "imageDeploymentProfile": {"commandLine": "SScJAoAkGN2vCFMp", "imageId": "OntmzO1Y3Vsw9gES", "portConfigurations": [{"name": "ktft5OJ9ayZVvfvz", "protocol": "RCLya4y6yvMM9Fqs"}, {"name": "imL1wCFb1Iy9Ihqx", "protocol": "MeMDQq91wkwhrjyQ"}, {"name": "ibfdjYcVm8d8vqZb", "protocol": "Tu7nETvzHdPvznkV"}], "timeout": {"creation": 83, "drain": 93, "session": 16, "unresponsive": 9}}, "name": "EfLeeCAzGGndhQhr", "regions": [{"bufferSize": 6, "maxServerCount": 56, "minServerCount": 32, "region": "58N0zcetc4OaDAfh"}, {"bufferSize": 68, "maxServerCount": 55, "minServerCount": 65, "region": "a4UFFaSo3HscvUef"}, {"bufferSize": 61, "maxServerCount": 50, "minServerCount": 73, "region": "QvMUWjnKaNI2DY9D"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'uvEFVwVGHqrZF50p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'YgSaqzSVro5Wk64X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'DClHjhMC1k9cOZsT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'FleetServerHistory' test.out

#- 13 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ImageList' test.out

#- 14 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'TyNPwcCwCVytZgai' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'IC6gF44ptc8tZo5M' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["s4TjmHNtdRHOTebB", "gkMC3ptvfa3uWnv0", "QR5Zm6oE03vb4tRG"], "isProtected": false, "name": "ERqbPxPdFzkcj7Ub", "removedTags": ["NRNbYSixzp8VqN4X", "Dlh3ZdvnXV2B7tmS", "MkqLFZy2KqU6sIeC"]}' \
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
    --serverID 'gxOIx6l4AoQPa4kh' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'JvX0x4rOz17Es954' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'bKXeMuSVONabpszI' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "4cAQSg8nKUZjjfK7"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"region": "WaN7D8U7GZgjauYQ"}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID '7FcVjVoR4r7M3nky' \
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