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
echo "1..38"

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

#- 4 AdminGetLogConfig
samples/cli/sample-apps Match2 adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
samples/cli/sample-apps Match2 adminPatchUpdateLogConfig \
    --body '{"logLevel": "warning"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigV1' test.out

#- 7 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigV1' test.out

#- 8 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["bM4DsXGC", "FS1DjiSy", "qVqwwUHj"], "matchAnyCommon": false, "platformGroup": {"UKTa0NIZ": ["EZGfVvrJ", "eVZ5dwI3", "zRq2xsVD"], "2PQp4TIk": ["zHVomQIm", "i13JMqxO", "ubAqqEry"], "kjNX0bJg": ["o10IGlRZ", "CrfyLtw1", "U5LXOGDS"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "uZK41OaA", "sessionId": "01FzTCp2"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'AjCSHZO6' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'FeKuSNj7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'Gr2VotZJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'JPGbKWPs' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["eaTrc5B7", "nYNycOUx", "IJBI6lTr"], "proposalId": "wB6olAMI", "stop": false}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'bWpOmOEi' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "2y1THDtU", "stop": false}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "pdIjJ9mV", "serviceAppName": "EcDafI5r", "url": "CmLnw2Qb"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'B6G7UnHk' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "MVu8EnRL", "serviceAppName": "pGuy9tVs", "url": "HxtbgHd3"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'io4ioBFN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --name 'PM9Iu13C' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 91, "backfill_ticket_expiration_seconds": 59, "best_latency_calculation_method": "KzjTftTJ", "crossplay_disabled": true, "match_function": "oL0Oq0R2", "match_function_override": {"backfill_matches": "dfW6HKFM", "enrichment": ["mtqB2Okq", "tOUtJMg6", "y1h1jDzb"], "make_matches": "I5SXfTVW", "stat_codes": ["Qiv9sUbL", "rlmRJVI2", "xwakYiMS"], "validation": ["3fvSZgOb", "3dB1CVuG", "US8jTZ4r"]}, "name": "Xib6cJcc", "platform_group_enabled": true, "rule_set": "O2oAKPst", "session_template": "uewuNhoE", "ticket_expiration_seconds": 8}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'Y905hht3' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '97uZkDCZ' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 36, "backfill_ticket_expiration_seconds": 15, "best_latency_calculation_method": "t8w80xy8", "crossplay_disabled": false, "match_function": "oCdTRz8d", "match_function_override": {"backfill_matches": "eflCKj0m", "enrichment": ["63KSXvIn", "8wv1guJu", "R7Dj8ys6"], "make_matches": "75neOJfo", "stat_codes": ["NX1dMh9m", "ge1IlEXC", "aaszAkAF"], "validation": ["YuTxpZ2M", "J0VLJaEL", "b67jKnn6"]}, "platform_group_enabled": false, "rule_set": "1FpQkrQe", "session_template": "ulaHml95", "ticket_expiration_seconds": 63}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'SxvCp6IZ' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'wHEmleJt' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'fbQiynRm' \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'sUVW4zKo' \
    --limit '89' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"jmUf1Ls8": {}, "bECRNHZ8": {}, "nlo9YGkk": {}}, "excludedSessions": ["rPE3UfuS", "y2AAUYgQ", "f6Cbsfxl"], "latencies": {"Cft373fX": 1, "R6furYJg": 17, "41vbgAGU": 4}, "matchPool": "2JjAs7y9", "sessionID": "TLyDv0Gv", "storage": {"JhqWXGFF": {}, "KMAKpBBG": {}, "oxPwxRut": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --matchPool 'UqnuvAdU' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '77uROpFP' \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'w2asZYQ3' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --name 'jIpDupRE' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"41yuVatN": {}, "3JXhsW0B": {}, "6eqsIne8": {}}, "enable_custom_match_function": true, "name": "wmelxIm8"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'qTC8lFjx' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'Z7D1ARUd' \
    --body '{"data": {"FhOvxRYD": {}, "PtJV3c1S": {}, "PXrRfOzs": {}}, "enable_custom_match_function": true, "name": "JqAzLK5a"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'Avyutir7' \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'uXfDJ1bw' \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPlayerMetric' test.out

#- 38 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 38 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE