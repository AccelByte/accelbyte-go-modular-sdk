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
    --body '{"action": "xH4kebuL", "activeAllianceRule": {"max_number": 24, "min_number": 56, "player_max_number": 54, "player_min_number": 67}, "activeMatchingRule": [{"attribute": "Rzemt5nN", "criteria": "CbFgRJjm", "reference": 0.8568474429185939}, {"attribute": "GzOGnwpY", "criteria": "SDiAsCUi", "reference": 0.39711853880322623}, {"attribute": "5MHHJBFs", "criteria": "VUBSwP0W", "reference": 0.7723720298993892}], "function": "ktUtkNTI", "gameMode": "E915MdFi", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 88, "matchID": "cSzRurHU", "namespace": "U8iU4cQM", "remainingPlayersPerTicket": [12, 82, 80], "remainingTickets": 61, "sessionTickID": "4YGKci4T", "tickID": 20, "ticketID": "nrmgjg8s", "timeToMatchSec": 0.4992106527375868, "timestamp": "1993-12-13T00:00:00Z", "unbackfillReason": "hcQklfOo", "unmatchReason": "Pf8K7Eoq"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "kw5Pywb8", "activeAllianceRule": {"max_number": 74, "min_number": 15, "player_max_number": 58, "player_min_number": 21}, "activeMatchingRule": [{"attribute": "WEDDvvFk", "criteria": "Lg1Qsykc", "reference": 0.8265687395207008}, {"attribute": "5nP14RxC", "criteria": "vkSPTuDJ", "reference": 0.016918902818805148}, {"attribute": "U67ZcJ9T", "criteria": "UoUseBO4", "reference": 0.9954098644913985}], "function": "f3eTsrhb", "gameMode": "MjrEwjU8", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 69, "matchID": "8TBKp0I3", "namespace": "KBWBEvuA", "remainingPlayersPerTicket": [72, 48, 65], "remainingTickets": 45, "sessionTickID": "RYnAuEsA", "tickID": 73, "ticketID": "0yWXoitE", "timeToMatchSec": 0.2011242802619324, "timestamp": "1979-11-03T00:00:00Z", "unbackfillReason": "Ks4Jv3vO", "unmatchReason": "cZ4gfrBi"}, {"action": "AF0fpL7g", "activeAllianceRule": {"max_number": 78, "min_number": 88, "player_max_number": 71, "player_min_number": 6}, "activeMatchingRule": [{"attribute": "hGBEfilK", "criteria": "xejAAq3S", "reference": 0.2926844670796356}, {"attribute": "lbi0L1bv", "criteria": "1jmVM8lN", "reference": 0.8659577748226407}, {"attribute": "nn3bnH86", "criteria": "g6nbgeen", "reference": 0.16868868195822717}], "function": "UJ1bIWVN", "gameMode": "n00oIIlD", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 84, "matchID": "MjiA5dwb", "namespace": "ytzJ9bzV", "remainingPlayersPerTicket": [62, 87, 56], "remainingTickets": 55, "sessionTickID": "bm5kQOor", "tickID": 59, "ticketID": "MhStx4Tl", "timeToMatchSec": 0.09289162063894474, "timestamp": "1983-11-02T00:00:00Z", "unbackfillReason": "Y6HBpva6", "unmatchReason": "W62NXAnp"}, {"action": "DH3s1Cy3", "activeAllianceRule": {"max_number": 33, "min_number": 90, "player_max_number": 61, "player_min_number": 98}, "activeMatchingRule": [{"attribute": "AjrobZ2v", "criteria": "VUpi2p2o", "reference": 0.7518291713868867}, {"attribute": "NrIW7n6H", "criteria": "L8XXOWSi", "reference": 0.697143916861163}, {"attribute": "Z8DVargj", "criteria": "qDtk3prg", "reference": 0.7297797246083103}], "function": "l5SW2dhW", "gameMode": "mL8Dwxhh", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 37, "matchID": "FpXIvTH8", "namespace": "2f2VpTLY", "remainingPlayersPerTicket": [85, 36, 15], "remainingTickets": 13, "sessionTickID": "8kamX6to", "tickID": 10, "ticketID": "nxv3VN1y", "timeToMatchSec": 0.05048519315876088, "timestamp": "1978-08-29T00:00:00Z", "unbackfillReason": "2LkBx8Yp", "unmatchReason": "dHhKMsO2"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE