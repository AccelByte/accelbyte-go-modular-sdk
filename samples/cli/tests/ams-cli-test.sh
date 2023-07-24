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
    --body '{"name": "G8i8M3VvxbKjoEc8"}' \
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
    --body '{"token": "akDgqwU9pW3ndOyK"}' \
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
    --body '{"active": false, "claimKeys": ["CTblPAxHtcwy3mY9", "fysXBHaNIsiKv6uI", "6rJrS7qJYpcCPcta"], "dsHostConfiguration": {"instanceId": "3RskuwOBzpzI3SWM", "instanceType": "8oIy4lA1HWBquaX9", "serversPerVm": 20}, "imageDeploymentProfile": {"commandLine": "4banTwY1iLTpyyhQ", "imageId": "UQ6pzMrdAASxl2MW", "portConfigurations": [{"name": "SWynLiAWzacONe2M", "protocol": "vvu9PKElhNmsJ5ME"}, {"name": "4WHrVuCK4Tm8hkSb", "protocol": "LAb6nFGXFCbgiFLD"}, {"name": "UmgA0WbuIII2PZda", "protocol": "ofJ3UuDMirPRYzMK"}], "timeout": {"creation": 46, "drain": 18, "session": 26, "unresponsive": 18}}, "name": "FcpHDbCMkgM9TPCR", "regions": [{"bufferSize": 8, "maxServerCount": 23, "minServerCount": 23, "region": "u43iwtju3LW4Angz"}, {"bufferSize": 30, "maxServerCount": 2, "minServerCount": 51, "region": "XZGigfxuloPBgqVV"}, {"bufferSize": 65, "maxServerCount": 25, "minServerCount": 3, "region": "kqh5tPu7O4ndf8on"}]}' \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'UjkPfiYGptecOouj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'QemhRigsj95SeGR5' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["VZjQ5f9wEj1VTM8Y", "SWD7neaYKbhXWwiP", "LobEJNWKcBKBpsUa"], "dsHostConfiguration": {"instanceId": "oNV6KQAmTx1ffU8r", "instanceType": "UojPMVMsEXrjKpEv", "serversPerVm": 90}, "imageDeploymentProfile": {"commandLine": "MVwDDC1XjbpjaPme", "imageId": "poNoxcRjTVIUYiHz", "portConfigurations": [{"name": "BiQCsTjVADtUVzpN", "protocol": "KniSU0ATXKj7rFni"}, {"name": "BzfgXkjbNxA9yopY", "protocol": "CUw2UVwCd8Hi80fh"}, {"name": "yBRvfUG7MPen5hBd", "protocol": "yPjLmnTwySfPMhW3"}], "timeout": {"creation": 44, "drain": 4, "session": 89, "unresponsive": 38}}, "name": "UGoGAqGK6jLvswV3", "regions": [{"bufferSize": 44, "maxServerCount": 17, "minServerCount": 18, "region": "WAwQKjaxXwlXEQYp"}, {"bufferSize": 87, "maxServerCount": 90, "minServerCount": 73, "region": "K7JVOdIsPZvX4GGl"}, {"bufferSize": 80, "maxServerCount": 91, "minServerCount": 7, "region": "Dxwya0DO5CtPmYTC"}]}' \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'zag63vJJK8HBIIjW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '65nC8k4JuNss209n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'jtu42FLWfXLdJbK5' \
    --namespace $AB_NAMESPACE \
    --count '19' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 12 'FleetServerHistory' test.out

#- 13 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ImageList' test.out

#- 14 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'rFohw1SoT09PQISt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'SD7qbuK47bvvXTjj' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["0dnHqAAMIzqWIxRC", "E2EZCZiVemV6PoiU", "0QiBJfUsC1RJyHs1"], "isProtected": true, "name": "hblxixPP5bMcm4Rd", "removedTags": ["r5VLK06xC5uIp6iX", "TgKUvowIzhS3kIeH", "SApRZta8XfDqVPmF"]}' \
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
    --serverID 'KKpBeiXW0tI7yXmO' \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID '4J878div37WTxUQa' \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'mF6BMAWroCt1Mz2h' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "kVHAhAbnKXbJeWMB"}' \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["i2n3T19Axpk8nphz", "rCO8dOO68MAz3QTb", "Yutaos5tf5Ha5vz9"], "regions": ["xtQ0wAhpY41M2MkA", "RBsHbwsiP5UvUNBW", "gZGK6c2I6N2VJfn1"]}' \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'aiXB6y0xEjZhPEEr' \
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