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
    --deviceType 'gUEDiiS2' \
    --endTime 'p8jlw7ns' \
    --eventId 'EIOymyXv' \
    --eventName 'Qj6GUUpA' \
    --eventPayload 'Q09FqWHe' \
    --flightId '8PR4Q2lN' \
    --limit '41' \
    --offset '75' \
    --startTime 'NsKSLpgw' \
    --userId 'd782Eid0' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1981-07-07T00:00:00Z", "DeviceType": "oxj8xVW1", "EventId": "Lvx2HikL", "EventName": "u9sqSx6K", "EventNamespace": "hgqjrLDi", "EventTimestamp": "1977-03-06T00:00:00Z", "Payload": {"F8v1LdvN": {}, "3EXtSh4C": {}, "JSA0eHOT": {}}}, {"ClientTimestamp": "1998-01-17T00:00:00Z", "DeviceType": "KViZZZCB", "EventId": "TueSxgB0", "EventName": "NGtL9duS", "EventNamespace": "yWAKgmJ7", "EventTimestamp": "1988-12-13T00:00:00Z", "Payload": {"W39fcgAq": {}, "NpBEWrU8": {}, "b62P8pJJ": {}}}, {"ClientTimestamp": "1979-07-25T00:00:00Z", "DeviceType": "2RkdmhVl", "EventId": "KJHokmZP", "EventName": "GOa807o1", "EventNamespace": "QE1koER7", "EventTimestamp": "1991-04-15T00:00:00Z", "Payload": {"vP5TQizx": {}, "eR29F8d2": {}, "Qie7zb3v": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '1Fk6IdNF' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'sppvodXu' \
    --steamId '0a7mJWMu' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE