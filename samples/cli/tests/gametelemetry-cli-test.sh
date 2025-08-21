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
    --deviceType 'MJpUvfwN' \
    --endTime '31GfiM8R' \
    --eventId 'YI1Pz1et' \
    --eventName 'O3kkPBeX' \
    --eventPayload 'Tj14udYd' \
    --flightId 'dQJitmuy' \
    --limit '25' \
    --offset '96' \
    --startTime '77FQDjtC' \
    --userId 'e5kaZjoC' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1989-10-16T00:00:00Z", "DeviceType": "IKHlJW95", "EventId": "RhW0Y2fJ", "EventName": "tLiQXHiK", "EventNamespace": "Atq6ve0Q", "EventTimestamp": "1997-09-03T00:00:00Z", "Payload": {"18KEJHWo": {}, "Rm5bRj7t": {}, "j1U8YwkR": {}}}, {"ClientTimestamp": "1989-03-26T00:00:00Z", "DeviceType": "nJrkBUo7", "EventId": "xXukxu56", "EventName": "1KGD1qTN", "EventNamespace": "zxMAUtUl", "EventTimestamp": "1976-01-04T00:00:00Z", "Payload": {"0INirmZE": {}, "MaUJANBI": {}, "R6TrEVLc": {}}}, {"ClientTimestamp": "1984-10-04T00:00:00Z", "DeviceType": "xoEjm3Fj", "EventId": "o6rWb5Zj", "EventName": "t7SnMjoB", "EventNamespace": "3bGkxaSf", "EventTimestamp": "1982-11-30T00:00:00Z", "Payload": {"69s6Y2b0": {}, "uFayQPfb": {}, "zSRpEq5O": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'QxOptFjS' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'd2zoolo9' \
    --steamId 'SsZkHk99' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE