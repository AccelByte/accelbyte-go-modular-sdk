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
    --body '{"matchPool": "hr6BKeym", "sessionId": "UDZAkMxM"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'hJTxKl6Y' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'UnSqQCb3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'YFg9yTSE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'CWr61WAO' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "CPl8y3w2", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'oqyrqkes' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "H4JD10Ew", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "706mGgvz", "url": "TsBwns2k"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'sNf3Zpc7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteMatchFunction' test.out

#- 13 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 13 'MatchPoolList' test.out

#- 14 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 44, "backfill_ticket_expiration_seconds": 14, "match_function": "BGwPTEk9", "match_function_override": {"backfill_matches": "iD5SV34I", "hydration": ["YJHJPkv9", "Bo1G4zMg", "ZdeN6DEi"], "make_matches": "dAQUQqqi", "stat_codes": ["QC3RrMwK", "lVS9WUj4", "hwcdT4Hh"], "validation": ["Ugmr8yI0", "KFoaFMlG", "e8K3WuAR"]}, "name": "xEWqPBn0", "rule_set": "FRUs0nDC", "session_template": "Uus7U1e4", "ticket_expiration_seconds": 8}' \
    > test.out 2>&1
eval_tap $? 14 'CreateMatchPool' test.out

#- 15 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'gsygKDYa' \
    > test.out 2>&1
eval_tap $? 15 'MatchPoolDetails' test.out

#- 16 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'mbmcQiTF' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 35, "backfill_ticket_expiration_seconds": 48, "match_function": "7mKbA0Pb", "match_function_override": {"backfill_matches": "TYy50Qfp", "hydration": ["X9g2y1rA", "m77FIJBf", "ktjjEEai"], "make_matches": "RTRE5s8H", "stat_codes": ["4fUfSzgb", "daeGndTN", "wcVAuJOP"], "validation": ["PxiWj1NU", "aJ8xfzbJ", "VvzjPHBg"]}, "rule_set": "Jsi3Gahm", "session_template": "YtE2sGny", "ticket_expiration_seconds": 76}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchPool' test.out

#- 17 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'rEh1dOhh' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchPool' test.out

#- 18 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'MfhuoVhP' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolMetric' test.out

#- 19 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"PrjAvD3y": {}, "2cXHUQQ1": {}, "k3lGHx9N": {}}, "latencies": {"gdAR0RPO": 89, "6ztQa8wR": 66, "XTgffi03": 34}, "matchPool": "k2DmigKG", "sessionID": "JuYjuuGF"}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchTicket' test.out

#- 20 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'lqP02YeQ' \
    > test.out 2>&1
eval_tap $? 20 'MatchTicketDetails' test.out

#- 21 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid '6IgGXddp' \
    > test.out 2>&1
eval_tap $? 21 'DeleteMatchTicket' test.out

#- 22 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 22 'RuleSetList' test.out

#- 23 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"R7VIQHey": {}, "RRsklfbB": {}, "3ME2T08f": {}}, "enable_custom_match_function": false, "name": "jJhpf4GL"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateRuleSet' test.out

#- 24 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'VDALSVUV' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetDetails' test.out

#- 25 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '6BFIxvU0' \
    --body '{"data": {"H3z4yt3o": {}, "yQVcScPW": {}, "ag9YMQz1": {}}, "enable_custom_match_function": true, "name": "elgptmo5"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateRuleSet' test.out

#- 26 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'l6dWnwdv' \
    > test.out 2>&1
eval_tap $? 26 'DeleteRuleSet' test.out

#- 27 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 27 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE