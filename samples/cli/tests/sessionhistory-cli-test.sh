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
    --body '{"action": "IwMMhwYF", "activeAllianceRule": {"max_number": 61, "min_number": 93, "player_max_number": 37, "player_min_number": 14}, "activeMatchingRule": [{"attribute": "n9HSFARy", "criteria": "i55fhmLH", "reference": 0.40914448629993927}, {"attribute": "ASKGY7TL", "criteria": "8aJx9rwE", "reference": 0.30025557384893276}, {"attribute": "RbCkR0Kk", "criteria": "2zfHKbVa", "reference": 0.06043829631011122}], "function": "krJqEGoN", "gameMode": "gj0XfXp1", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 98, "matchID": "S9nuPpKb", "namespace": "RnVjoTKn", "remainingPlayersPerTicket": [72, 55, 22], "remainingTickets": 35, "sessionTickID": "XdobzWB5", "tickID": 90, "ticketID": "xFxq2rD4", "timeToMatchSec": 0.28524918760161333, "timestamp": "1992-01-04T00:00:00Z", "unbackfillReason": "9kpwoBD6", "unmatchReason": "McppldXI"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "RAojwPac", "activeAllianceRule": {"max_number": 32, "min_number": 29, "player_max_number": 22, "player_min_number": 9}, "activeMatchingRule": [{"attribute": "TTXIPbip", "criteria": "rjny9Gn4", "reference": 0.7783580051283514}, {"attribute": "xffLszYb", "criteria": "yJ29Yc7V", "reference": 0.305106022277041}, {"attribute": "vMnSATik", "criteria": "w7lInJxX", "reference": 0.14854101509562567}], "function": "Dg8jprxK", "gameMode": "8RfzCkBP", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 96, "matchID": "squGd5ZV", "namespace": "ijSqmWMD", "remainingPlayersPerTicket": [95, 67, 78], "remainingTickets": 84, "sessionTickID": "KceodtEg", "tickID": 0, "ticketID": "JTbMgWoq", "timeToMatchSec": 0.04808170344167828, "timestamp": "1996-01-27T00:00:00Z", "unbackfillReason": "F7Z634kl", "unmatchReason": "5bYDyyuQ"}, {"action": "1t0V1qH8", "activeAllianceRule": {"max_number": 75, "min_number": 16, "player_max_number": 13, "player_min_number": 37}, "activeMatchingRule": [{"attribute": "oXA7FOc0", "criteria": "JsIw69ML", "reference": 0.6831210827190459}, {"attribute": "cdb8G601", "criteria": "mjgy6Vel", "reference": 0.7205795066851046}, {"attribute": "LDlruhVU", "criteria": "KlXcwKYV", "reference": 0.3060339554583288}], "function": "EMOZfCES", "gameMode": "TvlvHKPZ", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 53, "matchID": "SG4UNEc8", "namespace": "417yKxRp", "remainingPlayersPerTicket": [44, 27, 98], "remainingTickets": 82, "sessionTickID": "CFx9bI9R", "tickID": 66, "ticketID": "C0E9WpMg", "timeToMatchSec": 0.9080902326544708, "timestamp": "1993-06-22T00:00:00Z", "unbackfillReason": "iFmKEG5a", "unmatchReason": "Ly2cBD19"}, {"action": "dckH8DAF", "activeAllianceRule": {"max_number": 9, "min_number": 64, "player_max_number": 13, "player_min_number": 41}, "activeMatchingRule": [{"attribute": "sQI4hlyt", "criteria": "e4UaSmXx", "reference": 0.5437300026346977}, {"attribute": "BV9Huk8Q", "criteria": "s5dAhyPJ", "reference": 0.4132368953707555}, {"attribute": "GCQA20f7", "criteria": "39nXuCEc", "reference": 0.8961608246004159}], "function": "LVpOasFZ", "gameMode": "YUmjuzRS", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 69, "matchID": "EGifx1uA", "namespace": "jEv4FHSW", "remainingPlayersPerTicket": [13, 30, 54], "remainingTickets": 13, "sessionTickID": "8msr4h59", "tickID": 24, "ticketID": "ReRxwXyN", "timeToMatchSec": 0.548832618302147, "timestamp": "1980-09-13T00:00:00Z", "unbackfillReason": "0TrDSz7b", "unmatchReason": "Qbjj3oy2"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE