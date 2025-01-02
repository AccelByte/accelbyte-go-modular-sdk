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
    --deviceType 'HLAVljTx' \
    --endTime 'rEvqrmMZ' \
    --eventId 'SGObbVmw' \
    --eventName 'Jrkjzyb8' \
    --eventPayload 'OpNwxUjs' \
    --flightId 'rzjnsvPE' \
    --limit '50' \
    --offset '36' \
    --startTime 'jW9zLaV9' \
    --userId '8DuaPZCA' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1991-08-27T00:00:00Z", "DeviceType": "XQavAw6D", "EventId": "K8Z5FK1K", "EventName": "Vhtn0STw", "EventNamespace": "5gIay0tU", "EventTimestamp": "1999-09-20T00:00:00Z", "Payload": {"JE3qDzF2": {}, "KSNT8bDF": {}, "rFGwzY2u": {}}}, {"ClientTimestamp": "1992-09-19T00:00:00Z", "DeviceType": "QUSEzCaI", "EventId": "HW11Qijd", "EventName": "Bx6aPeXv", "EventNamespace": "QwhwcLaJ", "EventTimestamp": "1980-08-15T00:00:00Z", "Payload": {"XGcFJgat": {}, "hiIOXLG6": {}, "BGQm868E": {}}}, {"ClientTimestamp": "1972-12-29T00:00:00Z", "DeviceType": "AvnOQt40", "EventId": "nfAoV2ep", "EventName": "z5udYsMn", "EventNamespace": "U3XVrv8j", "EventTimestamp": "1991-05-04T00:00:00Z", "Payload": {"8g1bySV5": {}, "IxE5K68l": {}, "s78NkUQ9": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'CQF85ZtQ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'Kt4rT9ng' \
    --steamId 'XVmt7DK5' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE