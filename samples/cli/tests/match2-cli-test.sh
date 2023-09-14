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
echo "1..31"

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

#- 2 GetHealthcheckInfo
samples/cli/sample-apps Match2 getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
samples/cli/sample-apps Match2 getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 4 'EnvironmentVariableList' test.out

#- 5 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "79mtF1E1", "sessionId": "K9Ln0jJo"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateBackfill' test.out

#- 6 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'AUhWGWCY' \
    > test.out 2>&1
eval_tap $? 6 'GetBackfillProposal' test.out

#- 7 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'irxs19s9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetBackfill' test.out

#- 8 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'cNc78HdB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteBackfill' test.out

#- 9 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'wAMU8wBf' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "Q5lDpvyQ", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'AcceptBackfill' test.out

#- 10 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'pR1ZASeo' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "sPrawR8f", "stop": true}' \
    > test.out 2>&1
eval_tap $? 10 'RejectBackfill' test.out

#- 11 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 11 'MatchFunctionList' test.out

#- 12 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "PPLXM7KP", "serviceAppName": "OqKWMoAO", "url": "lynfBXan"}' \
    > test.out 2>&1
eval_tap $? 12 'CreateMatchFunction' test.out

#- 13 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'IDK0hCJZ' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "oZMq1fUc", "serviceAppName": "6LbqC4ti", "url": "kbjVjoWo"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateMatchFunction' test.out

#- 14 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '0b5jwYQM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteMatchFunction' test.out

#- 15 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --name 'kMhzWNu5' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolList' test.out

#- 16 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 8, "backfill_ticket_expiration_seconds": 10, "match_function": "T43UAXDP", "match_function_override": {"backfill_matches": "UeXkPg5G", "enrichment": ["RhEO0nNZ", "6GUvJTwL", "bn65LKsu"], "make_matches": "4ylXHLCH", "stat_codes": ["iRuR2DdY", "gnkpRHV0", "rfgoeNP1"], "validation": ["GAh9aVdb", "P5WFaiHf", "mZ7alE3i"]}, "name": "x5Ctb300", "rule_set": "gAJ1dJFZ", "session_template": "hUq8UU5N", "ticket_expiration_seconds": 34}' \
    > test.out 2>&1
eval_tap $? 16 'CreateMatchPool' test.out

#- 17 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'Zmku0yT6' \
    > test.out 2>&1
eval_tap $? 17 'MatchPoolDetails' test.out

#- 18 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'VZmC78CO' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 5, "backfill_ticket_expiration_seconds": 76, "match_function": "QhQHRZ6L", "match_function_override": {"backfill_matches": "vKhf3Jlf", "enrichment": ["UMpMu6BU", "m7bVtgIA", "C2Zlnppe"], "make_matches": "Le1Rrleu", "stat_codes": ["tlldgpqY", "mnfSwUDt", "i2zqOXR4"], "validation": ["j6CAQSX9", "5vuBX9Ly", "tk92lBiK"]}, "rule_set": "0Xx6ZQla", "session_template": "cDmZbElo", "ticket_expiration_seconds": 60}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchPool' test.out

#- 19 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'BqAfWagz' \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchPool' test.out

#- 20 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'yAtQEoht' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolMetric' test.out

#- 21 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '3OcAmWfX' \
    > test.out 2>&1
eval_tap $? 21 'GetPlayerMetric' test.out

#- 22 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"yj1UGgKt": {}, "LSBM0whV": {}, "61MCSS52": {}}, "latencies": {"iFgLAJ4d": 25, "bYyrQCNI": 10, "DwhRfcl0": 2}, "matchPool": "fgoc0ydn", "sessionID": "TtBs7VF4"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchTicket' test.out

#- 23 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --matchPool 'OD9jsnse' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 23 'GetMyMatchTickets' test.out

#- 24 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'EsG7FXrf' \
    > test.out 2>&1
eval_tap $? 24 'MatchTicketDetails' test.out

#- 25 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'ytE7OLTY' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchTicket' test.out

#- 26 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --name 'QOFa4EH4' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetList' test.out

#- 27 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"D2t0E95D": {}, "uhIkFpNM": {}, "hfbzZM1h": {}}, "enable_custom_match_function": false, "name": "hTZl0jXQ"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateRuleSet' test.out

#- 28 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'fcZFxIxc' \
    > test.out 2>&1
eval_tap $? 28 'RuleSetDetails' test.out

#- 29 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'fVAwmKIx' \
    --body '{"data": {"Rt16D1gu": {}, "hgwn8zGm": {}, "Rp8CLgMz": {}}, "enable_custom_match_function": false, "name": "cJ9hYRJm"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateRuleSet' test.out

#- 30 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'cpOBY38m' \
    > test.out 2>&1
eval_tap $? 30 'DeleteRuleSet' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE