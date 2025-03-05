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
echo "1..6"

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

#- 2 GetNamespacesGameTelemetryV1AdminNamespacesGet
samples/cli/sample-apps Gametelemetry getNamespacesGameTelemetryV1AdminNamespacesGet \
    > test.out 2>&1
eval_tap $? 2 'GetNamespacesGameTelemetryV1AdminNamespacesGet' test.out

#- 3 GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet
samples/cli/sample-apps Gametelemetry getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet \
    --namespace $AB_NAMESPACE \
    --deviceType 'ozl5Wjlv' \
    --endTime 'eNSVJFM6' \
    --eventId 'nexDrKfa' \
    --eventName 'pLW9cs2R' \
    --eventPayload '82wXjfcY' \
    --flightId 'htvAz8bD' \
    --limit '19' \
    --offset '13' \
    --startTime 'tR43CIpa' \
    --userId 'A6sZi5AG' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1983-12-30T00:00:00Z", "DeviceType": "ZVi35Il7", "EventId": "WwJ1CdOn", "EventName": "THvQGG0F", "EventNamespace": "KugRGikh", "EventTimestamp": "1974-03-15T00:00:00Z", "Payload": {"RUopL4GT": {}, "YNmdjE0o": {}, "pFD4iPaj": {}}}, {"ClientTimestamp": "1987-09-29T00:00:00Z", "DeviceType": "UI0HMYhB", "EventId": "lMtppE3y", "EventName": "yzbUx3b9", "EventNamespace": "H4yalPqy", "EventTimestamp": "1971-05-09T00:00:00Z", "Payload": {"UrT83Sa1": {}, "xzkul0Os": {}, "9gUuRiCE": {}}}, {"ClientTimestamp": "1983-09-30T00:00:00Z", "DeviceType": "Z8vKSlwW", "EventId": "KI7bJsZv", "EventName": "w81yDaxJ", "EventNamespace": "mhSPyyGx", "EventTimestamp": "1974-10-09T00:00:00Z", "Payload": {"Gf7Tp40g": {}, "TMEhjeIr": {}, "qKC5Sp5h": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'EJRmKVOG' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime '6JO0eWOU' \
    --steamId 'xD7ntthe' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE