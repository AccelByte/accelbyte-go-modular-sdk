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
    --body '{"name": "8ATQGBbOCKoRt1Mi"}' \
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
    --body '{"token": "wNmeaFLYfMtgyKyL"}' \
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
    --body '{"active": false, "claimKeys": ["ExVTWZrb0HF9zQBz", "pcFKAqDfpNBf4El4", "zZ4yDkHp4ATcvoOt"], "dsHostConfiguration": {"instanceId": "kMOcoKnVpgP3dpAP", "instanceType": "KQROEm69c6Qtda9i", "serversPerVm": 21}, "imageDeploymentProfile": {"commandLine": "MVpPjZorWTHdXMJ8", "imageId": "R8ffUSG63GTxweki", "portConfigurations": [{"name": "s5ngq4DYfrPuwzpa", "protocol": "ea7LJx9cyQx5joXI"}, {"name": "P2su7mJLnKPRCmwW", "protocol": "Fe2cZYsCNmMbOvzU"}, {"name": "xb8L2AtM1CXHycHv", "protocol": "2bmYEQISANPLRuPx"}], "timeout": {"creation": 18, "drain": 35, "session": 3, "unresponsive": 53}}, "name": "yV5snqzFP1xrZnIQ", "regions": [{"bufferSize": 87, "maxServerCount": 72, "minServerCount": 55, "region": "LxqrJMl0dqFxu9Bp"}, {"bufferSize": 54, "maxServerCount": 17, "minServerCount": 48, "region": "heVPfxf1PBGlrcBg"}, {"bufferSize": 56, "maxServerCount": 13, "minServerCount": 38, "region": "Qh1tIzV7HBYWkQ50"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'Oyft1rgvQNolWrA7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'CFYLdBHpaSHxICQL' \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "claimKeys": ["1dWVFStZvxrn2CdY", "Jzmr8Ht56DL6VlvO", "GMUmRLx6HHk6s3i0"], "dsHostConfiguration": {"instanceId": "V3z6QmjqPQDMS71A", "instanceType": "LYFaY79giBgEGHOh", "serversPerVm": 64}, "imageDeploymentProfile": {"commandLine": "K8GTlB4TXAmcgyMh", "imageId": "V1jNrzszs1AAM9eY", "portConfigurations": [{"name": "6zVSc6DZQHcjdEao", "protocol": "sy9RC59lkU55CBsX"}, {"name": "ENODolhguhU7wYc1", "protocol": "vhv0wdVcWrB97LnD"}, {"name": "srmfmkeiCrZzAgcT", "protocol": "ruHxcH6W3heCnt8p"}], "timeout": {"creation": 18, "drain": 48, "session": 41, "unresponsive": 8}}, "name": "6IQJVZAgJvQqQGBW", "regions": [{"bufferSize": 31, "maxServerCount": 95, "minServerCount": 12, "region": "viauu7bK843qLm2v"}, {"bufferSize": 79, "maxServerCount": 16, "minServerCount": 68, "region": "OzoinXPIKTfND1oN"}, {"bufferSize": 28, "maxServerCount": 43, "minServerCount": 80, "region": "UNFIDX1CDed2PUkn"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID '2q4JwKf2t7hdRnu3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID 'jjgr1Eaual0rNqnG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'pJYMO6qYJ5NK3gSZ' \
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
    --imageID 'Myfv4vRxApj8juI2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'omXWYEc7spjzsCjX' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["OYxCyJSn2oJmI5CN", "80WGakNBVq5nAQUW", "B46Xqu5mR13IUlun"], "isProtected": true, "name": "TeYyP1SmBy1jYk3R", "removedTags": ["sAmjW2jARthYc3qp", "5XEF1zl71Dg05Gud", "yUP9EQTCYdL0dp3c"]}' \
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
    --serverID 'cuxTWOnsrgSGPj8x' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'buZZzxDMO6enLEtc' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'WmPBDvC6W6j947lQ' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "vcCUuTHnDy2BVDIo"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"region": "M8tu3c8uaEYz4c60"}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'T3WzWWcA3f8PwbDr' \
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