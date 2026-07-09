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
    --deviceType 'b0vYb9Db' \
    --endTime 'c1yFiWNW' \
    --eventId 'GX5L0L4a' \
    --eventName 'dkSZZR4T' \
    --eventPayload 'dyqs97UA' \
    --flightId 'Qb0DzQMj' \
    --limit '35' \
    --offset '12' \
    --startTime 'BvC0guvg' \
    --userId 'WVqwBnsA' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1972-07-07T00:00:00Z", "DeviceType": "l2QXnVDX", "EventId": "6z8fPA8J", "EventName": "oTx2GBEz", "EventNamespace": "iHg6vDug", "EventTimestamp": "1973-01-13T00:00:00Z", "Payload": {"ZREEFQST": {}, "OefeX4LO": {}, "PKqe3uDE": {}}}, {"ClientTimestamp": "1972-08-05T00:00:00Z", "DeviceType": "8GyJRCnm", "EventId": "GpLo3CAn", "EventName": "quB4zaG6", "EventNamespace": "IOI6s1z0", "EventTimestamp": "1987-08-12T00:00:00Z", "Payload": {"rvh0hOm6": {}, "YOTkvrd8": {}, "uE5yNWVk": {}}}, {"ClientTimestamp": "1979-05-14T00:00:00Z", "DeviceType": "KOBsfXSt", "EventId": "nGP4jUKT", "EventName": "WeslhxYD", "EventNamespace": "JvPQkNiu", "EventTimestamp": "1975-02-28T00:00:00Z", "Payload": {"u4lJ7lpN": {}, "jHPc3gIZ": {}, "MvMrl0hR": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'qCHqjGGB' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'obdFzGI8' \
    --steamId 'QIEDa28j' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE