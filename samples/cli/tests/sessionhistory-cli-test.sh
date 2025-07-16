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
    --body '{"action": "FEVHyp0W", "activeAllianceRule": {"max_number": 13, "min_number": 40, "player_max_number": 97, "player_min_number": 19}, "activeMatchingRule": [{"attribute": "aPKKuMPs", "criteria": "E7ctKbue", "reference": 0.7757750447142869}, {"attribute": "nh4qegpf", "criteria": "I1IWBnzK", "reference": 0.4453719573654473}, {"attribute": "rQxBf0PO", "criteria": "sODLQ3Q6", "reference": 0.4418645449215173}], "function": "svnEdpZH", "gameMode": "7MXhKVd8", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 80, "matchID": "39LwQN6J", "namespace": "RJpfGMqB", "remainingPlayersPerTicket": [77, 3, 81], "remainingTickets": 58, "sessionTickID": "C1Ozj7SY", "tickID": 34, "ticketID": "M9M42qDP", "timeToMatchSec": 0.17711451197140027, "timestamp": "1995-07-11T00:00:00Z", "unbackfillReason": "Kg4SukKY", "unmatchReason": "xnwnHuG0"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "QjrVzHni", "activeAllianceRule": {"max_number": 7, "min_number": 78, "player_max_number": 35, "player_min_number": 67}, "activeMatchingRule": [{"attribute": "mpRqUCMX", "criteria": "0rxDxK74", "reference": 0.3535542607399731}, {"attribute": "q3NmkM4h", "criteria": "Tf4Ka3sy", "reference": 0.11989524480679625}, {"attribute": "eqBh5RJx", "criteria": "DIM0xfoh", "reference": 0.9135418553344434}], "function": "vS62nuHn", "gameMode": "1Eewnd50", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 66, "matchID": "2avjuXlV", "namespace": "47ArhQ0Z", "remainingPlayersPerTicket": [83, 57, 97], "remainingTickets": 80, "sessionTickID": "1S7AFHTF", "tickID": 26, "ticketID": "3R7YomUY", "timeToMatchSec": 0.89300129461949, "timestamp": "1989-03-04T00:00:00Z", "unbackfillReason": "0TifkqbH", "unmatchReason": "1hpDBbjv"}, {"action": "m4LpvXwh", "activeAllianceRule": {"max_number": 43, "min_number": 75, "player_max_number": 77, "player_min_number": 29}, "activeMatchingRule": [{"attribute": "hBI91cPO", "criteria": "xtXSN50l", "reference": 0.2807607603278154}, {"attribute": "E5Xo2lU0", "criteria": "06koQn0C", "reference": 0.5966215594652174}, {"attribute": "a29K9163", "criteria": "1j1YwIJS", "reference": 0.05839812520826926}], "function": "dLJoOXQO", "gameMode": "ySZS969C", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 11, "matchID": "nCbesRo7", "namespace": "1dNIR7V1", "remainingPlayersPerTicket": [94, 36, 81], "remainingTickets": 57, "sessionTickID": "WMYR0HqI", "tickID": 66, "ticketID": "bloUZco4", "timeToMatchSec": 0.9054606818404768, "timestamp": "1975-11-09T00:00:00Z", "unbackfillReason": "5YAJiAgc", "unmatchReason": "joh9MWDX"}, {"action": "pFDVWRiP", "activeAllianceRule": {"max_number": 8, "min_number": 79, "player_max_number": 34, "player_min_number": 52}, "activeMatchingRule": [{"attribute": "H9m4Yjmz", "criteria": "SsSjCh7i", "reference": 0.2489641565508759}, {"attribute": "ZcXCOEu3", "criteria": "xqnA3W8N", "reference": 0.04280588021887188}, {"attribute": "vCPoJ7FD", "criteria": "vvmuZHsP", "reference": 0.4356110086443087}], "function": "vuu5aWvx", "gameMode": "k2V6tXr6", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 80, "matchID": "07Phc4be", "namespace": "JUngoHHT", "remainingPlayersPerTicket": [35, 97, 38], "remainingTickets": 98, "sessionTickID": "Q9MyuNTj", "tickID": 17, "ticketID": "c5Jfge8Z", "timeToMatchSec": 0.9211704052588335, "timestamp": "1979-12-20T00:00:00Z", "unbackfillReason": "CGazS3pm", "unmatchReason": "HluATmPr"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE