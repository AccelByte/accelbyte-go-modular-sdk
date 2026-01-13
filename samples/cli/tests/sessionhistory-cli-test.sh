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
    --body '{"action": "PMYDW15V", "activeAllianceRule": {"max_number": 89, "min_number": 80, "player_max_number": 4, "player_min_number": 48}, "activeMatchingRule": [{"attribute": "PFMdeqkt", "criteria": "ZHcc5KMQ", "reference": 0.15488477605809092}, {"attribute": "tv15BkzG", "criteria": "ZR7fW0mv", "reference": 0.8515517927791124}, {"attribute": "QlI28xW6", "criteria": "vtl1CBN3", "reference": 0.9818605667724783}], "function": "Sv8aNtE0", "gameMode": "WVslGnb0", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 97, "matchID": "0WSEsL1U", "namespace": "dLAwdRsb", "remainingPlayersPerTicket": [87, 44, 24], "remainingTickets": 20, "sessionTickID": "CIQhipvW", "tickID": 28, "ticketID": "slNW4yxk", "timeToMatchSec": 0.6865181485798997, "timestamp": "1999-01-07T00:00:00Z", "unbackfillReason": "MnDb67qD", "unmatchReason": "UVRgAtar"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "5AZLgGpA", "activeAllianceRule": {"max_number": 26, "min_number": 82, "player_max_number": 70, "player_min_number": 16}, "activeMatchingRule": [{"attribute": "0dRhALMe", "criteria": "9cfGM6de", "reference": 0.5536556801355601}, {"attribute": "aMneAxnc", "criteria": "rb4PpAW0", "reference": 0.11574371275841044}, {"attribute": "oBshBWjB", "criteria": "baTTVvk8", "reference": 0.4789390961161163}], "function": "ozKdQ6wt", "gameMode": "JJpDii10", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 70, "matchID": "OVykD3Ek", "namespace": "ltyKE8cv", "remainingPlayersPerTicket": [28, 86, 36], "remainingTickets": 86, "sessionTickID": "iqLzuqvm", "tickID": 47, "ticketID": "zMG3lYkN", "timeToMatchSec": 0.15644714584696007, "timestamp": "1994-01-12T00:00:00Z", "unbackfillReason": "i2DEPz1o", "unmatchReason": "5w9zSXWQ"}, {"action": "aGDxcxSG", "activeAllianceRule": {"max_number": 96, "min_number": 55, "player_max_number": 95, "player_min_number": 63}, "activeMatchingRule": [{"attribute": "JD9D9XYi", "criteria": "ugV6N8P6", "reference": 0.33870836864732135}, {"attribute": "ctjOnk4B", "criteria": "P2N55RgG", "reference": 0.7141478559490696}, {"attribute": "RJ0leWox", "criteria": "7as5bPFM", "reference": 0.7079630144408778}], "function": "WLSOXv5r", "gameMode": "lXnB3CFR", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 47, "matchID": "fUz9YhzD", "namespace": "p26rQ5qQ", "remainingPlayersPerTicket": [8, 14, 24], "remainingTickets": 67, "sessionTickID": "F9lCWrVE", "tickID": 11, "ticketID": "xvQqdQmU", "timeToMatchSec": 0.10500636163081956, "timestamp": "1975-02-23T00:00:00Z", "unbackfillReason": "a3kukJe3", "unmatchReason": "PyD0jILP"}, {"action": "7nIIWyK2", "activeAllianceRule": {"max_number": 51, "min_number": 98, "player_max_number": 47, "player_min_number": 65}, "activeMatchingRule": [{"attribute": "dKelTOqk", "criteria": "j5RzYIBE", "reference": 0.4518833784984795}, {"attribute": "ajxP4HRo", "criteria": "hmhZXIvo", "reference": 0.14084598774966595}, {"attribute": "j8q3TtNQ", "criteria": "Ol4s0JhZ", "reference": 0.3410382525368938}], "function": "Wy0ZvC2o", "gameMode": "VtBln30J", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 85, "matchID": "ME0INJjT", "namespace": "buxXP8my", "remainingPlayersPerTicket": [36, 53, 68], "remainingTickets": 66, "sessionTickID": "oWyVXRe8", "tickID": 68, "ticketID": "qgQOiq1K", "timeToMatchSec": 0.4153965220511524, "timestamp": "1986-01-15T00:00:00Z", "unbackfillReason": "BQHdb2AL", "unmatchReason": "qqOJft9o"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE