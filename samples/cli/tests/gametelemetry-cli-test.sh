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
    --deviceType 'oOHLtQh4' \
    --endTime 'hTaRbn18' \
    --eventId 'a0mdnsAM' \
    --eventName 'fw7m8Iuz' \
    --eventPayload '0Fy3LPxh' \
    --flightId 'qfic8DVP' \
    --limit '70' \
    --offset '46' \
    --startTime 'HsyUlQme' \
    --userId 'm3Gkag18' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1996-04-26T00:00:00Z", "DeviceType": "RTbjnWOT", "EventId": "gCL52Fb1", "EventName": "h9v1aodY", "EventNamespace": "qjzO3ATj", "EventTimestamp": "1974-09-11T00:00:00Z", "Payload": {"cFkSitvz": {}, "lF5d7fLu": {}, "ykVAXaxb": {}}}, {"ClientTimestamp": "1979-03-06T00:00:00Z", "DeviceType": "Wy3zRgif", "EventId": "zcqNhOiO", "EventName": "NlmcPd2t", "EventNamespace": "6e4fUtJx", "EventTimestamp": "1988-10-10T00:00:00Z", "Payload": {"AnSBjZy4": {}, "fwXHH69i": {}, "YfMm7MbM": {}}}, {"ClientTimestamp": "1983-02-20T00:00:00Z", "DeviceType": "5QEqF6NF", "EventId": "G9Eq8cCq", "EventName": "M31Mn36f", "EventNamespace": "MjkDWmYN", "EventTimestamp": "1999-01-11T00:00:00Z", "Payload": {"fWdlo0tO": {}, "xeuAoYX2": {}, "AD8OpBqr": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '3GlgdGUw' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime '6Z9VCwls' \
    --steamId 'Jc13tUlQ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE