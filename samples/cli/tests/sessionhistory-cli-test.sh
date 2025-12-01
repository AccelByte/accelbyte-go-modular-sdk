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
    --body '{"action": "C0exgCW1", "activeAllianceRule": {"max_number": 43, "min_number": 87, "player_max_number": 0, "player_min_number": 82}, "activeMatchingRule": [{"attribute": "MtdfgY5s", "criteria": "1lY50dX5", "reference": 0.3464486977927489}, {"attribute": "tTauHzx3", "criteria": "ebIOpgUb", "reference": 0.8509526208353795}, {"attribute": "IDLIORxB", "criteria": "wicHRDlG", "reference": 0.6515293381600729}], "function": "hHN6MIph", "gameMode": "d0CxSlxu", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 45, "matchID": "dyupZ1sQ", "namespace": "Bvyk9icb", "remainingPlayersPerTicket": [83, 73, 33], "remainingTickets": 77, "sessionTickID": "60WzLGOt", "tickID": 19, "ticketID": "BNPkbTo9", "timeToMatchSec": 0.35353428932805586, "timestamp": "1995-03-12T00:00:00Z", "unbackfillReason": "y2Wrwx4x", "unmatchReason": "fVBYsKyG"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "NvqRUiUH", "activeAllianceRule": {"max_number": 61, "min_number": 85, "player_max_number": 91, "player_min_number": 79}, "activeMatchingRule": [{"attribute": "DodKFYHb", "criteria": "dwNTVqYI", "reference": 0.8288243201073294}, {"attribute": "5edEptS3", "criteria": "7x2tXKN4", "reference": 0.8573858035369387}, {"attribute": "QZwkEvKJ", "criteria": "3XZxXiMw", "reference": 0.4310259695294347}], "function": "D2NRN5Eq", "gameMode": "h5CXu7ED", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 73, "matchID": "VlopeIWW", "namespace": "WNtn72Cu", "remainingPlayersPerTicket": [26, 100, 28], "remainingTickets": 23, "sessionTickID": "UyVCnv0p", "tickID": 28, "ticketID": "a0iEyqq3", "timeToMatchSec": 0.9674094688535094, "timestamp": "1995-12-06T00:00:00Z", "unbackfillReason": "iOfraEbL", "unmatchReason": "dg7UYqr4"}, {"action": "iBcgbJ71", "activeAllianceRule": {"max_number": 86, "min_number": 73, "player_max_number": 6, "player_min_number": 43}, "activeMatchingRule": [{"attribute": "FyoY3HHx", "criteria": "wsEBMb1Z", "reference": 0.5743349353378326}, {"attribute": "H8ZwZ4Wl", "criteria": "EIpaiiBF", "reference": 0.2934837964372211}, {"attribute": "NDy4J5va", "criteria": "3STknpNZ", "reference": 0.29067414644884304}], "function": "dGOvXYxa", "gameMode": "5qRuPrmo", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 64, "matchID": "aj8sQqjL", "namespace": "uwC2mb5p", "remainingPlayersPerTicket": [53, 36, 23], "remainingTickets": 91, "sessionTickID": "4B5GlTpt", "tickID": 71, "ticketID": "kJ0BdEC0", "timeToMatchSec": 0.6627505295450746, "timestamp": "1996-02-18T00:00:00Z", "unbackfillReason": "VE4NMxxB", "unmatchReason": "nErKU7m0"}, {"action": "9sUXxEss", "activeAllianceRule": {"max_number": 97, "min_number": 8, "player_max_number": 18, "player_min_number": 98}, "activeMatchingRule": [{"attribute": "1ll6Tlg0", "criteria": "rFyEuiuC", "reference": 0.15234379605962767}, {"attribute": "7h79WI1s", "criteria": "ExMBdUuD", "reference": 0.13393394642306933}, {"attribute": "BLCnlKNf", "criteria": "cokJNy8c", "reference": 0.008329648425241087}], "function": "ty7oock2", "gameMode": "oYziMkUx", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 34, "matchID": "yiBAoLWi", "namespace": "qQIXaUIi", "remainingPlayersPerTicket": [7, 94, 71], "remainingTickets": 79, "sessionTickID": "hlhY1GwL", "tickID": 36, "ticketID": "Fk3L1dNj", "timeToMatchSec": 0.46513305181250897, "timestamp": "1986-03-27T00:00:00Z", "unbackfillReason": "nmUJvE60", "unmatchReason": "6MEcd26s"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE