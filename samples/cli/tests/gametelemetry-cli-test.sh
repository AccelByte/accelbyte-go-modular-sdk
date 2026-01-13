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
    --deviceType 'n6akicSl' \
    --endTime 'A56u2HKb' \
    --eventId 'Ra6jNtU7' \
    --eventName 'KWDFIKPw' \
    --eventPayload 'iaBbxRwh' \
    --flightId 'TjUSA7c6' \
    --limit '48' \
    --offset '14' \
    --startTime 'Aq1n9Z4i' \
    --userId 'plf0Q9B7' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1974-11-03T00:00:00Z", "DeviceType": "GIaZxleZ", "EventId": "Ofck5DfV", "EventName": "kYvfjEUy", "EventNamespace": "lyzpH25T", "EventTimestamp": "1976-04-15T00:00:00Z", "Payload": {"4a6Dz8yA": {}, "95gVzsQx": {}, "qtkmjTQU": {}}}, {"ClientTimestamp": "1994-06-10T00:00:00Z", "DeviceType": "wkihIgN3", "EventId": "odDABVQ4", "EventName": "LfLpYKUp", "EventNamespace": "lOUaecUN", "EventTimestamp": "1980-04-08T00:00:00Z", "Payload": {"vZS8YUhh": {}, "lyfvvHAX": {}, "6ld8qCS6": {}}}, {"ClientTimestamp": "1985-02-17T00:00:00Z", "DeviceType": "E8rwbb0L", "EventId": "nd8rYQtJ", "EventName": "jNkuKdNA", "EventNamespace": "uTUXoKSw", "EventTimestamp": "1988-10-09T00:00:00Z", "Payload": {"A7mcBKLB": {}, "dDG6TUKr": {}, "PxKiRJdk": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '1jkVvKnC' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime '3UWo9a94' \
    --steamId 'Z15oAGCt' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE