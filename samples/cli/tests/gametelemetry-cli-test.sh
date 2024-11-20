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
    --deviceType 'DhWmB8e2' \
    --endTime 'UqUbGMQ9' \
    --eventId 'gO0nmQsi' \
    --eventName 'v3zJcbe7' \
    --eventPayload 'TmM2szP7' \
    --flightId 'FIUTUFOz' \
    --limit '21' \
    --offset '61' \
    --startTime 'KgB8vcdP' \
    --userId 'ygtlMPcu' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1997-11-16T00:00:00Z", "DeviceType": "k37jkRMZ", "EventId": "moTAe0UE", "EventName": "1FUn85R5", "EventNamespace": "eq6snxWN", "EventTimestamp": "1975-06-04T00:00:00Z", "Payload": {"ipsxVFir": {}, "xEK74EZY": {}, "vBOyUMGG": {}}}, {"ClientTimestamp": "1975-02-16T00:00:00Z", "DeviceType": "vPTIvVxX", "EventId": "4aiZJ9F0", "EventName": "N90oR0tP", "EventNamespace": "bUBzgOdX", "EventTimestamp": "1989-04-25T00:00:00Z", "Payload": {"mwO0z1Ld": {}, "7J4AIF4e": {}, "yZuxwvcC": {}}}, {"ClientTimestamp": "1990-11-13T00:00:00Z", "DeviceType": "ZQHQW42k", "EventId": "0YbgfifO", "EventName": "YQ0kCFs3", "EventNamespace": "hn4C3rij", "EventTimestamp": "1988-09-08T00:00:00Z", "Payload": {"xrtcSuWP": {}, "ABnURiDU": {}, "BBWNsZzE": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'AL6Nxs6z' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'qd9nRDNj' \
    --steamId 'hsfMCwzC' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE