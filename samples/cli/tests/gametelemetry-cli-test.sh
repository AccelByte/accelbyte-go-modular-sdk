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
    --deviceType 'pfLljE0X' \
    --endTime 'ZS8Q54Ll' \
    --eventId 'dOZw5wiW' \
    --eventName 'HkEzjQuG' \
    --eventPayload 'mWGMXKus' \
    --flightId '9aWfNTvl' \
    --limit '6' \
    --offset '93' \
    --startTime 'u7u5mav2' \
    --userId '1XuvMJN1' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1987-11-26T00:00:00Z", "DeviceType": "ZYN1H3k6", "EventId": "8c0T0exM", "EventName": "0ql1tXEk", "EventNamespace": "Sfsmo4si", "EventTimestamp": "1982-04-20T00:00:00Z", "Payload": {"qHpGosb1": {}, "lTKXoGcD": {}, "2sWBYOMX": {}}}, {"ClientTimestamp": "1972-01-01T00:00:00Z", "DeviceType": "j1N2Aj7p", "EventId": "6pgeKPuI", "EventName": "cKquK1mO", "EventNamespace": "t04D9koc", "EventTimestamp": "1997-08-24T00:00:00Z", "Payload": {"gSgpKX0H": {}, "lvillTTv": {}, "6uj6nItn": {}}}, {"ClientTimestamp": "1990-11-17T00:00:00Z", "DeviceType": "9VtqzKGj", "EventId": "1fdi79sj", "EventName": "B9JhixXA", "EventNamespace": "EcH224yV", "EventTimestamp": "1986-02-01T00:00:00Z", "Payload": {"xuCg7qMK": {}, "sLotjM4D": {}, "SWeLsVFH": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'TU5HNDoc' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'dVdZUNhu' \
    --steamId 'SuRvPH8i' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE