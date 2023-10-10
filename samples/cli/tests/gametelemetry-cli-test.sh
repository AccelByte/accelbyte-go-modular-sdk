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
    --endTime 'JZnwzgcl' \
    --eventId 'Ayq3hmZ9' \
    --eventName '2jGJ9zip' \
    --eventPayload '6AjfVp6u' \
    --limit '41' \
    --offset '42' \
    --startTime '8qCL8KGs' \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1974-01-23T00:00:00Z", "EventId": "e4HXAf5v", "EventName": "DZ2iyadN", "EventNamespace": "tCVpBR1S", "EventTimestamp": "1974-12-13T00:00:00Z", "Payload": {"oSNLxInX": {}, "XBHjAVho": {}, "K0WkQbMA": {}}}, {"ClientTimestamp": "1985-11-26T00:00:00Z", "EventId": "yS9rDUdb", "EventName": "vbxJlOgc", "EventNamespace": "T3DTEMts", "EventTimestamp": "1984-05-09T00:00:00Z", "Payload": {"2M4BzLQ5": {}, "p9EpyeTP": {}, "VVnvEBSG": {}}}, {"ClientTimestamp": "1990-02-04T00:00:00Z", "EventId": "iFriU33j", "EventName": "nDmClIQs", "EventNamespace": "5aQoTU1Z", "EventTimestamp": "1974-10-12T00:00:00Z", "Payload": {"Agl34NMI": {}, "qTXjj4fs": {}, "gf7xd2AH": {}}}]' \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId 'itC4n9kT' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'mbH3Ij0i' \
    --steamId 'F72ay5HQ' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE