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
    --deviceType 'x6MfU4JJ' \
    --endTime '8P6GffbK' \
    --eventId 'dXHeyCEJ' \
    --eventName 'hSgaitMW' \
    --eventPayload 'r6sUNa5X' \
    --flightId 'JGq7jzHu' \
    --limit '97' \
    --offset '68' \
    --startTime 'yE3D0NNl' \
    --userId 'xRsKZktG' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1973-05-29T00:00:00Z", "DeviceType": "hKUoNvsQ", "EventId": "HH8Co2kO", "EventName": "xW5RGbhO", "EventNamespace": "rY2r1v9s", "EventTimestamp": "1971-05-11T00:00:00Z", "Payload": {"EYiSRQBW": {}, "rUeQGEYJ": {}, "MnARt98c": {}}}, {"ClientTimestamp": "1972-05-03T00:00:00Z", "DeviceType": "N8N2FjEF", "EventId": "JUXkg65M", "EventName": "dajrcU2u", "EventNamespace": "STzqBzf8", "EventTimestamp": "1983-08-23T00:00:00Z", "Payload": {"wMXvxgrK": {}, "Lv8pd3t2": {}, "2mTSJdzj": {}}}, {"ClientTimestamp": "1983-05-03T00:00:00Z", "DeviceType": "9maSnrIH", "EventId": "uFbBOJ0g", "EventName": "6A5dWbhu", "EventNamespace": "dspMtZ9V", "EventTimestamp": "1974-03-25T00:00:00Z", "Payload": {"Q2v6tiQL": {}, "tQzdeckx": {}, "VefiztBF": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'biqijSD7' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'X69n4NoD' \
    --steamId 'PDrhwtTj' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE