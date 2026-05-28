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
    --body '{"action": "W0Wvdurj", "activeAllianceRule": {"max_number": 0, "min_number": 17, "player_max_number": 4, "player_min_number": 11}, "activeMatchingRule": [{"attribute": "2PJGtrz0", "criteria": "4RhDJNLt", "reference": 0.05340529787857873}, {"attribute": "wFwxVfrb", "criteria": "getXAMqo", "reference": 0.8469080431428163}, {"attribute": "By6axUwR", "criteria": "n4FFmzMw", "reference": 0.47483490699298214}], "function": "aOjoeF73", "gameMode": "M8ux95e7", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 85, "matchID": "SdKhaT9m", "namespace": "cfyjTR8B", "remainingPlayersPerTicket": [73, 29, 89], "remainingTickets": 70, "sessionTickID": "i9yRlRBf", "tickID": 2, "ticketID": "0iIllYla", "timeToMatchSec": 0.5352249642955131, "timestamp": "1980-01-05T00:00:00Z", "unbackfillReason": "AGiRz235", "unmatchReason": "vp1P6mjL"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "rpTcetGa", "activeAllianceRule": {"max_number": 6, "min_number": 8, "player_max_number": 65, "player_min_number": 19}, "activeMatchingRule": [{"attribute": "laVUdIef", "criteria": "qa4x8Dsq", "reference": 0.6695702978248836}, {"attribute": "MgmeHqvO", "criteria": "SC1VXJ3R", "reference": 0.313132173169824}, {"attribute": "Hv2A1eW9", "criteria": "6n7Gi4Yt", "reference": 0.2273890620708081}], "function": "rBwWzagr", "gameMode": "GFAYCB12", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 12, "matchID": "jn6SRm0p", "namespace": "mMUa9831", "remainingPlayersPerTicket": [15, 71, 14], "remainingTickets": 95, "sessionTickID": "PU5AcNtl", "tickID": 8, "ticketID": "Pcgdm4Q8", "timeToMatchSec": 0.5581368850011507, "timestamp": "1993-05-13T00:00:00Z", "unbackfillReason": "tUbJRY7z", "unmatchReason": "e4QRYwzf"}, {"action": "3VTi9jkG", "activeAllianceRule": {"max_number": 64, "min_number": 36, "player_max_number": 17, "player_min_number": 87}, "activeMatchingRule": [{"attribute": "x0YWABrg", "criteria": "ijm7wMWG", "reference": 0.4639634220698454}, {"attribute": "XnBUV1qL", "criteria": "cyvmjoLw", "reference": 0.026262572013123875}, {"attribute": "9gET48Oc", "criteria": "rpM3j3AX", "reference": 0.22870232817899783}], "function": "FfwykFz4", "gameMode": "XsiesWN4", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 47, "matchID": "tPIbNakZ", "namespace": "VVD1hkrA", "remainingPlayersPerTicket": [27, 52, 35], "remainingTickets": 83, "sessionTickID": "OwWx8Qkl", "tickID": 21, "ticketID": "zwpOYROF", "timeToMatchSec": 0.39789095860916235, "timestamp": "1995-09-29T00:00:00Z", "unbackfillReason": "TIJPOUGF", "unmatchReason": "RJS61FUp"}, {"action": "umdhcHPY", "activeAllianceRule": {"max_number": 67, "min_number": 39, "player_max_number": 0, "player_min_number": 62}, "activeMatchingRule": [{"attribute": "akEpXJ2E", "criteria": "IcTC4MWj", "reference": 0.7359276611447079}, {"attribute": "20lmtADo", "criteria": "B6GlK5uT", "reference": 0.2570810713291092}, {"attribute": "eh9HNhFX", "criteria": "5QAh09K6", "reference": 0.3938828843988128}], "function": "zTsln36d", "gameMode": "jzKx9WSj", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 97, "matchID": "79Wnv4xD", "namespace": "M0l3YBJk", "remainingPlayersPerTicket": [79, 55, 40], "remainingTickets": 69, "sessionTickID": "7DMgiWV1", "tickID": 33, "ticketID": "075XlzNo", "timeToMatchSec": 0.005884924413534165, "timestamp": "1991-06-23T00:00:00Z", "unbackfillReason": "TnD5ltgc", "unmatchReason": "Tl8tQRaQ"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE