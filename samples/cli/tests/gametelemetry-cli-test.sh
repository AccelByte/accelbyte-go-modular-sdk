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
    --endTime '1BbTsJuNj26tXoOe' \
    --eventId 'xykaHhyc9Wn3ZheB' \
    --eventName 'hAEzQLEBBFwLSkB5' \
    --eventPayload 'bVyDIqxUxWAoBYbv' \
    --limit '52' \
    --offset '5' \
    --startTime 'Z5HuZprIEA4AJifu' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"EventId": "IW1PCAW9p6Hiq01J", "EventName": "bhXyKHs9XSlSp1OH", "EventNamespace": "EPOMIXQm3iJ2WWG0", "EventTimestamp": "1996-10-28T00:00:00Z", "Payload": {"3qctetaIWWei6UYb": {}, "Mau47WXP6vZjYkOR": {}, "JYyF4dt8KVgBLGMS": {}}}, {"EventId": "UDZBqjp0EWtPgbMj", "EventName": "VnROBr3lTXdomHUI", "EventNamespace": "Bgz1SLLxlPb8a17K", "EventTimestamp": "1997-04-09T00:00:00Z", "Payload": {"0APLjWenLsLKtGP8": {}, "a88PP1yrB0mPs8dC": {}, "qY5oL1pP3lbcf0Pw": {}}}, {"EventId": "RG9LP8FS2IwA6UbQ", "EventName": "X6SYSmE9gf6aKf4J", "EventNamespace": "bgpFS44suhjhdfW4", "EventTimestamp": "1975-05-19T00:00:00Z", "Payload": {"MMLLbgzNiogkKg3a": {}, "r1oilVMqrC3hXhLc": {}, "UPBAU8b6x0iUFOpX": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'yd1wKEXjsvngtVZT' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'pEiD4f52XXJMb324' \
    --steamId 'L6D5a1H2hwsHWs2l' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE