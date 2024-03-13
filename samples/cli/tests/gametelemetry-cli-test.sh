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
    --endTime 'nX9nqPKx' \
    --eventId 'hRyLHpub' \
    --eventName 'SnmPveBv' \
    --eventPayload 'yPUZ9e80' \
    --flightId 'MBHeugdQ' \
    --limit '13' \
    --offset '47' \
    --startTime 'MByf3U1Z' \
    --userId 'B2YvjKqp' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1981-12-19T00:00:00Z", "EventId": "RUq1lC0k", "EventName": "KEcuEbXg", "EventNamespace": "VPy5m9vL", "EventTimestamp": "1983-08-20T00:00:00Z", "Payload": {"e434lgQF": {}, "T5ZXJxQD": {}, "FBsBEyI5": {}}}, {"ClientTimestamp": "1997-11-10T00:00:00Z", "EventId": "HIufomE4", "EventName": "wZrtpx0R", "EventNamespace": "RQKFmyCF", "EventTimestamp": "1996-09-19T00:00:00Z", "Payload": {"hBkm2DOq": {}, "UfO8UwH0": {}, "7mY4xIkq": {}}}, {"ClientTimestamp": "1975-04-23T00:00:00Z", "EventId": "pA0ttHdV", "EventName": "unf5Agen", "EventNamespace": "RccCvOS2", "EventTimestamp": "1980-01-17T00:00:00Z", "Payload": {"mAuY2OCm": {}, "z3Vd3k6Q": {}, "olBpKwSo": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'GoI2O6o8' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'uABdY07N' \
    --steamId 'z1uYyhAQ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE