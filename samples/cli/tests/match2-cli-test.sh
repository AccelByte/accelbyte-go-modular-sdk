#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..27"

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

#- 4 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "MxVyPm0elAGG0H7u", "sessionId": "8owI07WrTwxmLL0m"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'o7oApieWbNqoQ7xU' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'XCO0MGgJWtjfBKZf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'KtDpvAPvfla3y79x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'OXNbbM7KsIAh7gp0' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "nkSCtKo1pDv9X60c", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'F1mZuAL9qkAx1cNh' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "qjBdzGLDmfyGTpav", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "SRSFSNz41q0D69cx", "url": "EA33FZqRdLIRq0pH"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'ZDK0rckKZ3mLWU77' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteMatchFunction' test.out

#- 13 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 13 'MatchPoolList' test.out

#- 14 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 98, "backfill_ticket_expiration_seconds": 64, "match_function": "OpIMoKmYbxmXfXsK", "match_function_override": {"backfill_matches": "iukCqlZxQ3xhlWgJ", "hydration": ["GHfCgjxm7xqbS8QM", "jn2v4y6TzZHLCYVD", "4ONlCQmRgSHIOXwE"], "make_matches": "zVMxs7x84Cphaxp8", "stat_codes": ["XmuhCaGwkZq0XIUu", "XugvWY1ivJUBR0ou", "FBaq6w9kMQZRTOkn"], "validation": ["S6LQRnHqv7Y76LVU", "fsZeBvHN5WNKAIx5", "UaBPYQWn3zFpdVmG"]}, "name": "BBScfidF7ZVZuvd7", "rule_set": "Rsxq6U7nRahUpYpE", "session_template": "FfUXBVnlp0f3iXWl", "ticket_expiration_seconds": 92}' \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'dvyPk0peGXHawUN2' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'G7FpdoekcIhHKcn4' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 25, "backfill_ticket_expiration_seconds": 58, "match_function": "aN9WU9HmdheU1kKr", "match_function_override": {"backfill_matches": "jBKq6oXFFpnmz0gY", "hydration": ["KK9tsDdZWGMhT3rL", "QM2nqM3K0fsAtoFM", "uoSIMXOfMqSk47nV"], "make_matches": "ZIlSFoZvdVEjwVNW", "stat_codes": ["bcStE9kr0eKby3z8", "wmGoAv19EJPDO5oO", "WNfjuCd9mq2hJDHC"], "validation": ["UGoMYLPFAYdljWlG", "0do6dGeY32MdGlkp", "oicGXXrdoQs38u9s"]}, "rule_set": "EfvVGw8PWa6DIMvI", "session_template": "XKucRxZk4dGw5SvL", "ticket_expiration_seconds": 1}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'lPp3mmLhFeX8tRIM' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'UFohacDUGUnuI60m' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolMetric' test.out

#- 19 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"cMA7iKe5jMh8uY4j": {}, "tB5BScdWzcAPSEKV": {}, "JAL1GnLwmqQunATl": {}}, "latencies": {"GW2ohwky1tIVfxpQ": 36, "9yCRCRVIHdLahYDv": 72, "7RFItapYm1RUgyp6": 36}, "matchPool": "Lb1m6Ztrr4d61DIl", "sessionID": "bA0ET2JQTPH5coVS"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchTicket' test.out

#- 20 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'TLa4kb7EIGxfrH0m' \
    > test.out 2>&1
eval_tap $? 20 'MatchTicketDetails' test.out

#- 21 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid '7IHAzZE0uvoxsItG' \
    > test.out 2>&1
eval_tap $? 21 'DeleteMatchTicket' test.out

#- 22 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 22 'RuleSetList' test.out

#- 23 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"rx60EONhLhl5m971": {}, "BSrPH7DGKpnyrtcE": {}, "CWIWbo0V1G8rXRBB": {}}, "enable_custom_match_function": false, "name": "KbqTPQ9CwrVQ7hRQ"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateRuleSet' test.out

#- 24 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'C793x9xGNdc6wm4t' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetDetails' test.out

#- 25 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'xJGP5GQlFLJ3UPiq' \
    --body '{"data": {"UIcK2U5XGtd6X8qx": {}, "andXWg4GhL4A34I4": {}, "61bEKR1M0nckiUug": {}}, "enable_custom_match_function": false, "name": "iWPZN6lPZsqhyAhe"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateRuleSet' test.out

#- 26 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'jb8bjkqVegFJzus2' \
    > test.out 2>&1
eval_tap $? 26 'DeleteRuleSet' test.out

#- 27 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 27 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE