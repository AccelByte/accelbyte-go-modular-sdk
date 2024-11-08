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
    --deviceType '4zqLOJCd' \
    --endTime 'CTLyslc4' \
    --eventId 'icGvK6H6' \
    --eventName 'C7Kn2CId' \
    --eventPayload 'Y9ZQI4aM' \
    --flightId 'ZU1PTSAz' \
    --limit '31' \
    --offset '13' \
    --startTime 'kuVqxASB' \
    --userId '2mgLTULs' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1998-08-02T00:00:00Z", "DeviceType": "OBPVeEtw", "EventId": "Gw2qRwUK", "EventName": "It3DUVOP", "EventNamespace": "yPqGzzb2", "EventTimestamp": "1972-04-26T00:00:00Z", "Payload": {"YfjyX9UF": {}, "fh1Wz5xt": {}, "0O0RjS8j": {}}}, {"ClientTimestamp": "1982-05-29T00:00:00Z", "DeviceType": "4JQWgoIo", "EventId": "WQJlmBRJ", "EventName": "7cxukP8q", "EventNamespace": "9Vktd22N", "EventTimestamp": "1973-03-16T00:00:00Z", "Payload": {"LWkH0FBH": {}, "ApETmjYz": {}, "D4IknSeT": {}}}, {"ClientTimestamp": "1985-06-26T00:00:00Z", "DeviceType": "jLaJYmzy", "EventId": "FPy4WWH6", "EventName": "ksTHIWOP", "EventNamespace": "TSWkUIwp", "EventTimestamp": "1991-02-24T00:00:00Z", "Payload": {"1BvIr3uV": {}, "4nhErXFW": {}, "qZb7qYjv": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'EFgfYVbP' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'o5U7hdar' \
    --steamId '2Pg4BneS' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE