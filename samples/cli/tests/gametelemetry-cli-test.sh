#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..5"

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

#- 2 GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet
samples/cli/sample-apps Gametelemetry getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet \
    --namespace $AB_NAMESPACE \
    --endTime 'qpDZKu0QSi5057xD' \
    --eventId 'IL7F7zeGSEO2IvmU' \
    --eventName 'YqdUhjeENGSaqa9j' \
    --eventPayload 'JhDWcORpoUi0DFaC' \
    --limit '11' \
    --offset '25' \
    --startTime 'ejhJKU1DR00mOf7l' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "gwEs945aetdhBUcw", "EventName": "brw2B3YssLMQ5QV5", "EventNamespace": "UmLwqpJVS8XaWJpN", "EventTimestamp": "1978-01-12T00:00:00Z", "Payload": {"4O3GIdL1poJ8YzSS": {}, "8qzg9JXJlhsiqcdW": {}, "vTbNdK515GmdloUF": {}}}, {"EventId": "aMXKlGOvLfgPuMaS", "EventName": "N62qmPyD0LTq3GY9", "EventNamespace": "lfI8Ddw3sK6vyaSA", "EventTimestamp": "1979-09-10T00:00:00Z", "Payload": {"XKXdBoZdsepEKysh": {}, "YkVoPe9uOTvS3zbj": {}, "ZOfC5JzRrxGsJ8Km": {}}}, {"EventId": "CmTwbqC5DDbSU3jf", "EventName": "2R7lhMJRDmpLjZQI", "EventNamespace": "WjqcOmgvtpPSUkP6", "EventTimestamp": "1971-06-10T00:00:00Z", "Payload": {"nqTLWFMhT9q9NfrR": {}, "ACHpEtiUDe1IXJe5": {}, "FQl0o2r5mqbdqRtJ": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'D2nshNi2o1ouzrFg' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'uekuuci4vaWql6kf' \
    --steamId 'abns8lrqq2HjLnZC' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE