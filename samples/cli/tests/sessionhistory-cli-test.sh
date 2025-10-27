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
echo "1..3"

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

#- 2 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "5Cb8c7eG", "activeAllianceRule": {"max_number": 61, "min_number": 45, "player_max_number": 99, "player_min_number": 74}, "activeMatchingRule": [{"attribute": "BI6x5InM", "criteria": "hk5Fw1Y1", "reference": 0.7255871521228268}, {"attribute": "62QlbBsI", "criteria": "XpPoCbFE", "reference": 0.976120064262899}, {"attribute": "1BOEU8xq", "criteria": "KSjZpCsH", "reference": 0.4467947887585485}], "function": "3nZeyBj9", "gameMode": "l1oknsot", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 68, "matchID": "CN9hsqLB", "namespace": "OQMNwieU", "remainingPlayersPerTicket": [46, 57, 36], "remainingTickets": 8, "sessionTickID": "ZY9x5w8s", "tickID": 18, "ticketID": "VY6LJCij", "timeToMatchSec": 0.45112508499507953, "timestamp": "1996-09-13T00:00:00Z", "unbackfillReason": "plGO93wP", "unmatchReason": "9PVDQWrW"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "mQK8EFXf", "activeAllianceRule": {"max_number": 22, "min_number": 64, "player_max_number": 61, "player_min_number": 13}, "activeMatchingRule": [{"attribute": "CeBi045a", "criteria": "msZ9VSrI", "reference": 0.5494719778343345}, {"attribute": "mG6QjbEG", "criteria": "Ccgp0OlM", "reference": 0.3300593738657235}, {"attribute": "X9x3z7Jg", "criteria": "wx5Q0cPz", "reference": 0.7974319373711098}], "function": "zTYF7TPf", "gameMode": "lrFdmTjQ", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 43, "matchID": "NglhrGTV", "namespace": "luXtZglG", "remainingPlayersPerTicket": [74, 8, 38], "remainingTickets": 77, "sessionTickID": "JisBZdI3", "tickID": 80, "ticketID": "4KvutrX5", "timeToMatchSec": 0.7446028575404714, "timestamp": "1977-12-31T00:00:00Z", "unbackfillReason": "ENL95zSE", "unmatchReason": "PKEEubkN"}, {"action": "9dAz17bv", "activeAllianceRule": {"max_number": 39, "min_number": 5, "player_max_number": 6, "player_min_number": 19}, "activeMatchingRule": [{"attribute": "r2ThSU4q", "criteria": "Dv6ioYAg", "reference": 0.4978713527757449}, {"attribute": "eyxuqRxW", "criteria": "wi4kENU2", "reference": 0.01931029874858281}, {"attribute": "8roYZsv3", "criteria": "bg8tIxLo", "reference": 0.7763579221225747}], "function": "mUaDf8En", "gameMode": "pEUxtjUL", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 51, "matchID": "BaQl2ijo", "namespace": "QlpOOojm", "remainingPlayersPerTicket": [46, 47, 4], "remainingTickets": 83, "sessionTickID": "dW1cqxqM", "tickID": 40, "ticketID": "yaZnvcNo", "timeToMatchSec": 0.11332690261543621, "timestamp": "1987-10-09T00:00:00Z", "unbackfillReason": "L4HO2xzu", "unmatchReason": "qYXXZmm5"}, {"action": "gcAG6xQN", "activeAllianceRule": {"max_number": 2, "min_number": 92, "player_max_number": 13, "player_min_number": 12}, "activeMatchingRule": [{"attribute": "3X1ktyf9", "criteria": "BMjIQMVk", "reference": 0.550862642288218}, {"attribute": "DR5kUN55", "criteria": "4HSskXF4", "reference": 0.8842070108780493}, {"attribute": "xotHW3c1", "criteria": "lZ952LE5", "reference": 0.7949310896719648}], "function": "7VOpZewn", "gameMode": "a6ms2uVr", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 28, "matchID": "AYw6ywnI", "namespace": "yQw4gq7K", "remainingPlayersPerTicket": [95, 23, 47], "remainingTickets": 36, "sessionTickID": "y25EJNT2", "tickID": 0, "ticketID": "fDXw1SDe", "timeToMatchSec": 0.14678036124771854, "timestamp": "1995-04-20T00:00:00Z", "unbackfillReason": "Qx6DaL8z", "unmatchReason": "u3XARNyF"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE