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
    --endTime 'grGF35iS7268tWR7' \
    --eventId '8pv4meGFNrj90lKJ' \
    --eventName 'QdufsJLzUtoG9ZeY' \
    --eventPayload 'qKEkBb2ft3pNZ67B' \
    --limit '0' \
    --offset '77' \
    --startTime 'ct8uvN2LWnKf2gnD' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "junV9Ebr2oNSuh1L", "EventName": "fXNskOzt0XpGIwoT", "EventNamespace": "2NQoodErqWJeB0XO", "EventTimestamp": "1997-09-22T00:00:00Z", "Payload": {"my7pSUq58dtdoai1": {}, "uBtARnoueXCFHPfN": {}, "jx5BTiA1h26i9zKj": {}}}, {"EventId": "ouB3TZ2wHk1Uy2cC", "EventName": "nfvyLerGbXzsCC5M", "EventNamespace": "9cLNOccwoBupa8lZ", "EventTimestamp": "1989-12-14T00:00:00Z", "Payload": {"I6y62IF7MTn9nyfB": {}, "3d023BZIwUKLLEDK": {}, "ehIGCCPdngCebBj0": {}}}, {"EventId": "P8VbUs8kZ0BWyXjG", "EventName": "jXPw8NbMUZVSKvqN", "EventNamespace": "RmFHTuyH0Bcj2iRL", "EventTimestamp": "1999-02-16T00:00:00Z", "Payload": {"bw6fyZwEI1a74jmZ": {}, "9RG2CBywXZbkyfgw": {}, "Di2q4YESG204PDbj": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'ZNefFzBhGLim4WDD' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime '6R0CtaJDHXnLyLfZ' \
    --steamId 'I2d9PbXOGoI1wZAd' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE