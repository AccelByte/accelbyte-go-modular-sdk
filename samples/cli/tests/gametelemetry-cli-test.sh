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
    --deviceType '96G9mlLF' \
    --endTime '3Zc6gfd0' \
    --eventId 'mjbK69lz' \
    --eventName '1LUYhUha' \
    --eventPayload 'XDv2jTsN' \
    --flightId 'dmmmRvR1' \
    --limit '4' \
    --offset '33' \
    --startTime '7RvCk6N7' \
    --userId 'VWELa3NX' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1991-01-02T00:00:00Z", "DeviceType": "1HoAoMmj", "EventId": "iPpgHSwo", "EventName": "sPnfa2ea", "EventNamespace": "WG6ISgKO", "EventTimestamp": "1991-09-30T00:00:00Z", "Payload": {"DTY9VUyO": {}, "1ATshjCB": {}, "4WBdMRCU": {}}}, {"ClientTimestamp": "1994-01-02T00:00:00Z", "DeviceType": "FgdSZlVT", "EventId": "d127nMlB", "EventName": "0Il03p9P", "EventNamespace": "QbblD1zC", "EventTimestamp": "1994-10-27T00:00:00Z", "Payload": {"Q9EU5wEg": {}, "1u7RCUfe": {}, "MqNYN2iZ": {}}}, {"ClientTimestamp": "1974-12-02T00:00:00Z", "DeviceType": "pX6cvU7m", "EventId": "zL77YPyC", "EventName": "c8qScscV", "EventNamespace": "GBCv69le", "EventTimestamp": "1974-11-07T00:00:00Z", "Payload": {"Z33dpkjC": {}, "YRijFDuI": {}, "nPUxNHjQ": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '7Bt1oKj9' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'idRkzwgy' \
    --steamId '81HQUFyc' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE