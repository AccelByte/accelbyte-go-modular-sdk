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
echo "1..29"

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
    --body '{"matchPool": "xHFzJzKO95s4p2OP", "sessionId": "C0BZFUz1EyPdZTra"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'UhRSNl6vsJqNRxMn' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'RishLHfYFvOxgpBj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'X7j3avnfPwQRsdk5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'lRCtEndfBM9KBGPw' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "Yh1CBbXMpEMQGYWW", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'xNYSPvTOj27fGRu2' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "5E2f19dVR23oWVh0", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "4OoUeuakNpXXbY0K", "serviceAppName": "v2fYcSO9A8GIfsC3", "url": "bUBldOcOxAxqxUqD"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '7nM4lhFMmmiQFAVH' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "z5NwLRKNY3ONHABg", "serviceAppName": "wGiKNQsicGHD6pDv", "url": "zrTdkE8RNXN65EtK"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '1n3VLLQewZ1PEAHW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --name 'ti5154ozOm061rIR' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 70, "backfill_ticket_expiration_seconds": 39, "match_function": "vmt8V1mgi4kAbdXD", "match_function_override": {"backfill_matches": "y8PGwWXIxJjDWBIC", "enrichment": ["usiiN5fqPsuqknY4", "GOv6dlqslnWtca0Q", "hZW4Y82WJZyqmKrI"], "make_matches": "aBMmijscmIpo0UHU", "stat_codes": ["dknkoMHjPqeLM69s", "eYRmhhckmUyT0qOR", "IZjpfU07DtlZqB3S"], "validation": ["NqqqsAP7gf3WzZA0", "ymj7PG68tbp718za", "I5dDLwfEGU1ulfQa"]}, "name": "hyRwA1q4rSwdcIQp", "rule_set": "2xkcnzj5h4uMvoZM", "session_template": "JJuBOmSHJHc3bV3H", "ticket_expiration_seconds": 24}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'oW3z7wTYBHLBxY6O' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'qFWd19QhrroAhh0O' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 55, "backfill_ticket_expiration_seconds": 89, "match_function": "m6eaLseOT1TU82hv", "match_function_override": {"backfill_matches": "aUbCletUmQ4ff5UY", "enrichment": ["UER1F9Yu5ZzYhCVb", "6kW8ynAVthv33Z9l", "0fkYLwW3XGn2DXv5"], "make_matches": "fAeJGyU6nvs3STvO", "stat_codes": ["kyx5CcpP7x57Uv4k", "zrdF4b988RHKgjVR", "qyJg7bslHCIlp5M3"], "validation": ["mkIIUYmC3tgzSIi4", "1KfLfvTmi6ZtPuGc", "0ZZ3JIjZdFp8F7wt"]}, "rule_set": "l16BgHwJg2xHYP2d", "session_template": "i0Xp7iAJdoGjjc9l", "ticket_expiration_seconds": 48}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'x5GL8fFTxqxIdRiS' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '6vEv38atfVa5YgNO' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '9qAvrOcPjN7OtKtN' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"f3xObhCnUKc9U18S": {}, "ywlMG0AjXsJsmrh7": {}, "X0cclZKWdX4r2swJ": {}}, "latencies": {"XcyIbQKftz6at65K": 58, "H1hh027Sx48gPwzj": 24, "DuG3W8MpL8dHjtdm": 7}, "matchPool": "SKqElyld72eAfyGD", "sessionID": "mlQftAf4a47Y9Xi8"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '8ueXeDKVL5Y0k0QY' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'fLvmHyYnSlzqIZ7g' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --name '6hVxXdtcsJBdw67n' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"AJfEGnpFiHkG583C": {}, "HOtX0mt0ykMaVi7I": {}, "X414QzWRuPcKufzU": {}}, "enable_custom_match_function": false, "name": "FCLLCUGON9raJwZQ"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'fglzAgjkUmPqbM8N' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'DCFj2kp8ORv4jYrx' \
    --body '{"data": {"mP3rVqpZmXtu2RoG": {}, "N2fkwAsrSZ8hV22O": {}, "fv1voIdpmDqdhSSa": {}}, "enable_custom_match_function": true, "name": "CDcVFEp2TxmAcpte"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'FwKPzkI8Rx4sVsaW' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE