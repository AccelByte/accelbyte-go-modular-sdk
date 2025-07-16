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
    --deviceType 'WGmhClcM' \
    --endTime 'qRxENr8q' \
    --eventId 'OvpA2KPX' \
    --eventName 'xcTAVclr' \
    --eventPayload 'AEn5Jfqf' \
    --flightId '7IjusdDC' \
    --limit '66' \
    --offset '22' \
    --startTime 'CURqujCq' \
    --userId 'z9oU353K' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1973-10-24T00:00:00Z", "DeviceType": "hJHBRAjH", "EventId": "40DN72no", "EventName": "5CitRUaW", "EventNamespace": "4PcpUYWT", "EventTimestamp": "1974-07-21T00:00:00Z", "Payload": {"YfJ50IR2": {}, "5tZbePHc": {}, "I0OOsqFl": {}}}, {"ClientTimestamp": "1983-11-27T00:00:00Z", "DeviceType": "BDCsAiLy", "EventId": "IsRnFyow", "EventName": "rO1wpQiG", "EventNamespace": "CBsjrHai", "EventTimestamp": "1999-06-27T00:00:00Z", "Payload": {"1B6EIi7a": {}, "k2HtS4ZJ": {}, "srcNGo8R": {}}}, {"ClientTimestamp": "1988-06-16T00:00:00Z", "DeviceType": "pTbjJcJG", "EventId": "sab6qqcx", "EventName": "S7kx9kUI", "EventNamespace": "WaJq240X", "EventTimestamp": "1983-12-26T00:00:00Z", "Payload": {"iBj3as6c": {}, "fTdRW1EW": {}, "DJwFePi2": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'reMHcqC8' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'CTmoiodV' \
    --steamId 'jy9OovZk' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE