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
    --deviceType 'a5ULqlvn' \
    --endTime 'wTAwJl4X' \
    --eventId 'ObuCvgfB' \
    --eventName 'PXGoiAX8' \
    --eventPayload 'laJz1VAS' \
    --flightId 'PYnXQm9f' \
    --limit '82' \
    --offset '54' \
    --startTime 'no1HQigC' \
    --userId 'RHGVkEhv' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1983-02-18T00:00:00Z", "DeviceType": "jxdRVNOg", "EventId": "PCPjwv8C", "EventName": "oRpataK2", "EventNamespace": "t6J5fZAk", "EventTimestamp": "1976-06-10T00:00:00Z", "Payload": {"uoGK41BQ": {}, "psgyjLzZ": {}, "NbO9t9D8": {}}}, {"ClientTimestamp": "1981-11-14T00:00:00Z", "DeviceType": "Qj5roMNV", "EventId": "sI03uGly", "EventName": "VyI3PCJp", "EventNamespace": "nnjDcy4z", "EventTimestamp": "1981-12-09T00:00:00Z", "Payload": {"kWfbtJ8i": {}, "WfCvI6Yq": {}, "qI7IzUB1": {}}}, {"ClientTimestamp": "1993-10-21T00:00:00Z", "DeviceType": "MvadQkXW", "EventId": "M6HoKbcI", "EventName": "wOgqxeCB", "EventNamespace": "pLN46b8j", "EventTimestamp": "1995-11-13T00:00:00Z", "Payload": {"IrHRXbEs": {}, "dqZrIA5a": {}, "pyEoGf8E": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'nn4xp2Bv' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'quygCqMA' \
    --steamId 'Tl6ZBQEG' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE