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
    --body '{"action": "oYZXnAVq", "activeAllianceRule": {"max_number": 7, "min_number": 37, "player_max_number": 0, "player_min_number": 9}, "activeMatchingRule": [{"attribute": "B8CdIajC", "criteria": "Nq1EmOYw", "reference": 0.8656283683396436}, {"attribute": "hXEwFEtg", "criteria": "5NjbhhGM", "reference": 0.5631060939564282}, {"attribute": "pzvC3iMS", "criteria": "LJUJYJqu", "reference": 0.9940440900490397}], "function": "W2ZWPqpQ", "gameMode": "PRCQKOXq", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 68, "matchID": "yQFhWEye", "namespace": "G2vH8sDQ", "remainingPlayersPerTicket": [20, 89, 29], "remainingTickets": 81, "sessionTickID": "FlxkwHSV", "tickID": 99, "ticketID": "kNxOeH1F", "timeToMatchSec": 0.79537017893181, "timestamp": "1976-05-22T00:00:00Z", "unbackfillReason": "jqv8Ni66", "unmatchReason": "4eX4QiOt"}' \
    > test.out 2>&1
eval_tap $? 2 'CreateXrayTicketObservability' test.out

#- 3 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "lu45q3Kv", "activeAllianceRule": {"max_number": 11, "min_number": 72, "player_max_number": 42, "player_min_number": 90}, "activeMatchingRule": [{"attribute": "Zxyh5NLV", "criteria": "h6MuMy0l", "reference": 0.42895942473250215}, {"attribute": "zr819yo3", "criteria": "uvGb7Kto", "reference": 0.8331143835810872}, {"attribute": "XhcnYxC9", "criteria": "NYUiWLkv", "reference": 0.8796583263057952}], "function": "d6G3Fj5t", "gameMode": "PLvJiBfO", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 73, "matchID": "enzKvgX0", "namespace": "FAB216fY", "remainingPlayersPerTicket": [8, 20, 2], "remainingTickets": 64, "sessionTickID": "lHOmimvY", "tickID": 41, "ticketID": "o4GeBsZP", "timeToMatchSec": 0.16879203869074266, "timestamp": "1989-06-06T00:00:00Z", "unbackfillReason": "mAX3TKar", "unmatchReason": "8hvyRhmh"}, {"action": "lO23XU2i", "activeAllianceRule": {"max_number": 93, "min_number": 18, "player_max_number": 66, "player_min_number": 56}, "activeMatchingRule": [{"attribute": "XyvrJe1w", "criteria": "Qp4nTQF4", "reference": 0.9588887508777552}, {"attribute": "p2IrxMgI", "criteria": "c5baNtkO", "reference": 0.992527206071659}, {"attribute": "vZbbPH5Q", "criteria": "XrCLM7wE", "reference": 0.09072130535924372}], "function": "P8G61kUz", "gameMode": "MWGDWJmQ", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 7, "matchID": "mOVop3hM", "namespace": "nMzFIhc7", "remainingPlayersPerTicket": [52, 18, 48], "remainingTickets": 95, "sessionTickID": "LL7wS2m8", "tickID": 45, "ticketID": "UZSh0PIS", "timeToMatchSec": 0.7808231162531765, "timestamp": "1998-03-18T00:00:00Z", "unbackfillReason": "OQMGprdX", "unmatchReason": "RLVHt9lA"}, {"action": "50d16PWn", "activeAllianceRule": {"max_number": 42, "min_number": 0, "player_max_number": 16, "player_min_number": 74}, "activeMatchingRule": [{"attribute": "LJGNJrBB", "criteria": "N6ESBZ5n", "reference": 0.8189424253740643}, {"attribute": "bpJ13F72", "criteria": "MvBtXiVs", "reference": 0.9136607826490183}, {"attribute": "dW1IRZPb", "criteria": "W4pupu0O", "reference": 0.8007897698001399}], "function": "sAKy29My", "gameMode": "KAwf0ZLI", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 25, "matchID": "BMCfXpdl", "namespace": "2qTZBF03", "remainingPlayersPerTicket": [7, 67, 58], "remainingTickets": 37, "sessionTickID": "9CQk0hlf", "tickID": 20, "ticketID": "ZlBo2B3i", "timeToMatchSec": 0.26052021429528294, "timestamp": "1980-07-29T00:00:00Z", "unbackfillReason": "vfLB2X0i", "unmatchReason": "u9aPFSqG"}]}' \
    > test.out 2>&1
eval_tap $? 3 'CreateXrayBulkTicketObservability' test.out


rm -f "tmp.dat"

exit $EXIT_CODE