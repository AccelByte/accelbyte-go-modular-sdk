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
    --body '{"action": "RNRO7wEW", "activeAllianceRule": {"max_number": 21, "min_number": 76, "player_max_number": 11, "player_min_number": 25}, "activeMatchingRule": [{"attribute": "joig7Ed3", "criteria": "CBZZrRBP", "reference": 0.3266428390539856}, {"attribute": "G7FeAU79", "criteria": "21F40LzS", "reference": 0.07704823466488675}, {"attribute": "tbAi12DI", "criteria": "skpgKlGi", "reference": 0.7742759020490447}], "function": "L9cdZftb", "gameMode": "3kUDA8IY", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 26, "matchID": "1MJGKzDo", "namespace": "BbDfeVXB", "remainingPlayersPerTicket": [14, 81, 37], "remainingTickets": 26, "sessionTickID": "qxUgiuHs", "tickID": 90, "ticketID": "TtMkPRuP", "timeToMatchSec": 0.3237758633920481, "timestamp": "1990-04-22T00:00:00Z", "unbackfillReason": "8NGmMazM", "unmatchReason": "c13lWfwh"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "kubE2U5k", "activeAllianceRule": {"max_number": 97, "min_number": 93, "player_max_number": 83, "player_min_number": 94}, "activeMatchingRule": [{"attribute": "irf4Pt1y", "criteria": "m6OqbBK2", "reference": 0.4860760406639354}, {"attribute": "vleB0DlV", "criteria": "HNZ2ZjLN", "reference": 0.1283705023751084}, {"attribute": "v2YcCGny", "criteria": "KaWefiHP", "reference": 0.4492862929852912}], "function": "FGlPbdkz", "gameMode": "l1Y4QWc9", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 61, "matchID": "2ogh6WtP", "namespace": "FwnjAleX", "remainingPlayersPerTicket": [82, 29, 8], "remainingTickets": 43, "sessionTickID": "IweZ3g5e", "tickID": 60, "ticketID": "rP3z0so8", "timeToMatchSec": 0.9881107695081941, "timestamp": "1976-03-30T00:00:00Z", "unbackfillReason": "6pEyLZ8J", "unmatchReason": "CdCJ5gJN"}, {"action": "X4JtcPu4", "activeAllianceRule": {"max_number": 56, "min_number": 98, "player_max_number": 0, "player_min_number": 62}, "activeMatchingRule": [{"attribute": "EIf5ct7M", "criteria": "D0QpimdG", "reference": 0.6388350771217693}, {"attribute": "qibSCZ8N", "criteria": "zStTno2b", "reference": 0.8088035558989632}, {"attribute": "b3qJYzpS", "criteria": "hFWiURkk", "reference": 0.5341219559859645}], "function": "p7urZ4n0", "gameMode": "MavpWD9l", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 82, "matchID": "Kj0zPbog", "namespace": "EVQRZP9Y", "remainingPlayersPerTicket": [57, 60, 90], "remainingTickets": 66, "sessionTickID": "20yF3uC4", "tickID": 95, "ticketID": "9slQt7zx", "timeToMatchSec": 0.9035580773242252, "timestamp": "1982-09-17T00:00:00Z", "unbackfillReason": "eV57YpCv", "unmatchReason": "L6vh04HM"}, {"action": "ftkdF4wl", "activeAllianceRule": {"max_number": 88, "min_number": 77, "player_max_number": 12, "player_min_number": 81}, "activeMatchingRule": [{"attribute": "gVHXUWfQ", "criteria": "lLq8VE1v", "reference": 0.4885313476575873}, {"attribute": "cxLQbr0f", "criteria": "5fKinDCm", "reference": 0.5946955407182453}, {"attribute": "kTghOLJ4", "criteria": "J0jePdAb", "reference": 0.7395189021243871}], "function": "L1Xw8WQY", "gameMode": "9nRadRXO", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 32, "matchID": "sZkCvr26", "namespace": "LOI8XG4p", "remainingPlayersPerTicket": [55, 55, 40], "remainingTickets": 69, "sessionTickID": "Q1pNXYg9", "tickID": 53, "ticketID": "YPSAsTcP", "timeToMatchSec": 0.09054707621165603, "timestamp": "1975-10-21T00:00:00Z", "unbackfillReason": "oKo7irBX", "unmatchReason": "9oiQKN9O"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE