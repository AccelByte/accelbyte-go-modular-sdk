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
    --deviceType 'B0DJKMka' \
    --endTime 'apByR93m' \
    --eventId 'ClNSEW0l' \
    --eventName 'xBcyOlEQ' \
    --eventPayload 'l1OKtqbe' \
    --flightId '8CumIR5E' \
    --limit '59' \
    --offset '26' \
    --startTime '2VIJ5v1A' \
    --userId 'IcwGZ8Hv' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1982-11-13T00:00:00Z", "DeviceType": "F1XL03uW", "EventId": "9fFnTBZC", "EventName": "cYLX2S9v", "EventNamespace": "RGBN8qr5", "EventTimestamp": "1981-06-29T00:00:00Z", "Payload": {"1abQXx6V": {}, "sW8LjCjz": {}, "Dm2kugds": {}}}, {"ClientTimestamp": "1997-03-14T00:00:00Z", "DeviceType": "mHRNjGcQ", "EventId": "FbRZP8Ax", "EventName": "qJ27Z1Ha", "EventNamespace": "f3j18pfE", "EventTimestamp": "1985-02-13T00:00:00Z", "Payload": {"rNYlayL5": {}, "pIwo3BZK": {}, "d07QlBb0": {}}}, {"ClientTimestamp": "1983-03-16T00:00:00Z", "DeviceType": "Sq4ShdJi", "EventId": "amrDZhr1", "EventName": "Ze5NJnEa", "EventNamespace": "tdwLFWnj", "EventTimestamp": "1974-06-16T00:00:00Z", "Payload": {"9Z02R9lP": {}, "8DPTjPO3": {}, "zHkwUTSu": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'Cj7Exbsz' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'MaXwm1Gn' \
    --steamId 'zSJ7l07C' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE