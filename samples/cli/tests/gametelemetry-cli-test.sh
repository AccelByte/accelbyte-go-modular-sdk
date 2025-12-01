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
    --deviceType 'aX4zfZHM' \
    --endTime 'a1DYCNFz' \
    --eventId 'nwprcspq' \
    --eventName 'aYgwAptK' \
    --eventPayload 'GE3hr4A5' \
    --flightId 'FeYb2waS' \
    --limit '79' \
    --offset '27' \
    --startTime 'RwWyTbBh' \
    --userId 'qx8iX6ql' \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
samples/cli/sample-apps Gametelemetry protectedSaveEventsGameTelemetryV1ProtectedEventsPost \
    --cookie 'access_token=foo' \
    --body '[{"ClientTimestamp": "1992-03-13T00:00:00Z", "DeviceType": "phLOnfVw", "EventId": "LfP6lNsA", "EventName": "OkwpegAG", "EventNamespace": "pcQLxa6o", "EventTimestamp": "1980-07-04T00:00:00Z", "Payload": {"tu08xskS": {}, "7ICEhcoi": {}, "sOFVbJKW": {}}}, {"ClientTimestamp": "1977-11-08T00:00:00Z", "DeviceType": "QcRNL2H3", "EventId": "waYVa7zS", "EventName": "Emeg2V6Y", "EventNamespace": "tQd12YJm", "EventTimestamp": "1983-05-12T00:00:00Z", "Payload": {"Q7shQyJ1": {}, "WodKPCPu": {}, "1aYNDadL": {}}}, {"ClientTimestamp": "1974-12-05T00:00:00Z", "DeviceType": "Wq5tJuBh", "EventId": "GcOXvnpg", "EventName": "Tt7mNiMM", "EventNamespace": "ZZHtxXc2", "EventTimestamp": "1973-09-27T00:00:00Z", "Payload": {"gm60hdZE": {}, "jf0kJLIr": {}, "PqIyd3Rf": {}}}]' \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
samples/cli/sample-apps Gametelemetry protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet \
    --steamId '23NL6UWG' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
samples/cli/sample-apps Gametelemetry protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut \
    --playtime 'jfeDjAPk' \
    --steamId 'beagMDjf' \
    --cookie 'access_token=foo' \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


rm -f "tmp.dat"

exit $EXIT_CODE