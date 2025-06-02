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
    --deviceType 'dzgeKJOK' \
    --endTime 'I98zoUtS' \
    --eventId '5Ugdnlkk' \
    --eventName 'nTSuJP3N' \
    --eventPayload '7qHx1gT8' \
    --flightId 'w4DEPvsN' \
    --limit '33' \
    --offset '93' \
    --startTime 'gbkhp34n' \
    --userId 'a2Jla18X' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1994-07-24T00:00:00Z", "DeviceType": "ZkA70L1Q", "EventId": "1AXXO1LU", "EventName": "C1NmStTP", "EventNamespace": "xKZGTYnW", "EventTimestamp": "1973-06-16T00:00:00Z", "Payload": {"E9lH4jl2": {}, "pI3IivzA": {}, "0RBbMrTD": {}}}, {"ClientTimestamp": "1997-03-25T00:00:00Z", "DeviceType": "vxIGvPYw", "EventId": "EOe3yJCK", "EventName": "aIeZfo9w", "EventNamespace": "yWDYTIQH", "EventTimestamp": "1992-04-14T00:00:00Z", "Payload": {"Wfia4nkE": {}, "GTl6vjNM": {}, "b1OzlrMp": {}}}, {"ClientTimestamp": "1974-12-07T00:00:00Z", "DeviceType": "nDri1xGB", "EventId": "QaiaxBT6", "EventName": "FHb0leuc", "EventNamespace": "oQCpofKH", "EventTimestamp": "1994-11-15T00:00:00Z", "Payload": {"S8w4f6w4": {}, "q4dLSV21": {}, "X8MOQ9oF": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'oummPH60' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'NjpljaDS' \
    --steamId 'llxKtHvJ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE