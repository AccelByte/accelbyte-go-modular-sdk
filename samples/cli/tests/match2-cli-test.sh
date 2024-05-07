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
echo "1..35"

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

#- 4 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAllConfigV1' test.out

#- 5 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigV1' test.out

#- 6 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"platformGroup": {"TnCMgRew": ["5nvSuPNw", "d68kcHiN", "P11mJ80U"], "IGXgPpST": ["A9rJUUUN", "GpYn11jZ", "DO0Owful"], "bPEvmhjI": ["7JQ6xJpt", "dxCno6q9", "XbOrVbgd"]}}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPatchConfigV1' test.out

#- 7 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 7 'EnvironmentVariableList' test.out

#- 8 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "LPTe5lKq", "sessionId": "4WNrCa6l"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateBackfill' test.out

#- 9 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'g4RaOsfD' \
    > test.out 2>&1
eval_tap $? 9 'GetBackfillProposal' test.out

#- 10 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'R5QwraTl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetBackfill' test.out

#- 11 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'WgKg0Iqv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteBackfill' test.out

#- 12 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '50hIPKmS' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "jVDWJXVr", "stop": false}' \
    > test.out 2>&1
eval_tap $? 12 'AcceptBackfill' test.out

#- 13 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'x1nWw2Xc' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "FbmbtZu5", "stop": false}' \
    > test.out 2>&1
eval_tap $? 13 'RejectBackfill' test.out

#- 14 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 14 'MatchFunctionList' test.out

#- 15 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "OSCphh6Y", "serviceAppName": "wTRxKBNv", "url": "RM60kRIj"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchFunction' test.out

#- 16 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'lnpjaCao' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "IhI30Kgi", "serviceAppName": "xUfjVc8u", "url": "QYFn2abO"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchFunction' test.out

#- 17 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'VjTbO7pU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchFunction' test.out

#- 18 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --name 'QbcSlx6L' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolList' test.out

#- 19 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 69, "backfill_ticket_expiration_seconds": 41, "crossplay_disabled": false, "match_function": "C0xownk5", "match_function_override": {"backfill_matches": "I0QG6ne7", "enrichment": ["Nyza5Z12", "662qmT6M", "8AWEjXpG"], "make_matches": "4awnp7rP", "stat_codes": ["Lk9deCg7", "GSGZS1us", "lMYaj8un"], "validation": ["3PqEUyR2", "eXcbIeVD", "1v4LlDiD"]}, "name": "cnS3xu2p", "platform_group_enabled": false, "rule_set": "zqBQrIk6", "session_template": "jz7UAQ0d", "ticket_expiration_seconds": 89}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchPool' test.out

#- 20 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '9iES4Qzk' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolDetails' test.out

#- 21 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'qSgJh7oc' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 62, "backfill_ticket_expiration_seconds": 55, "crossplay_disabled": true, "match_function": "TNDpcCAv", "match_function_override": {"backfill_matches": "kvGzMTuI", "enrichment": ["Yt0AbC1o", "p4vYH6Hg", "x7RmGLZx"], "make_matches": "im1w2cKu", "stat_codes": ["xKemXFTk", "OiLUhCMo", "yxl6hNuL"], "validation": ["EiZNoPcb", "Jd5WLR3f", "TZFNgJqn"]}, "platform_group_enabled": true, "rule_set": "lno92Kog", "session_template": "bPq0xUaa", "ticket_expiration_seconds": 31}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateMatchPool' test.out

#- 22 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'I9KG4zxy' \
    > test.out 2>&1
eval_tap $? 22 'DeleteMatchPool' test.out

#- 23 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'MDn7SvZG' \
    > test.out 2>&1
eval_tap $? 23 'MatchPoolMetric' test.out

#- 24 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Qapk1qDC' \
    > test.out 2>&1
eval_tap $? 24 'GetPlayerMetric' test.out

#- 25 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'DCKT7KZz' \
    --limit '76' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetMatchPoolTickets' test.out

#- 26 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"IOsZyCk3": {}, "iBho8ZdN": {}, "D2u2rDIk": {}}, "latencies": {"VRlWCBJN": 15, "gAPTXREv": 35, "4OaRB4VT": 3}, "matchPool": "m6KeEGby", "sessionID": "VVSj1LNC"}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchTicket' test.out

#- 27 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --matchPool 'khNSZHwe' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 27 'GetMyMatchTickets' test.out

#- 28 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'n63lj14a' \
    > test.out 2>&1
eval_tap $? 28 'MatchTicketDetails' test.out

#- 29 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'XC2Vpz0D' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchTicket' test.out

#- 30 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --name 'vqcdHJ9Z' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 30 'RuleSetList' test.out

#- 31 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"pNKWUKBq": {}, "CnxTwa75": {}, "flEdC0h5": {}}, "enable_custom_match_function": true, "name": "gI1e3AK3"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateRuleSet' test.out

#- 32 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '1XJlUUAd' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetDetails' test.out

#- 33 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'vZsTUYA1' \
    --body '{"data": {"aDkAVrYI": {}, "e2bVlcmN": {}, "fQrXy2cA": {}}, "enable_custom_match_function": false, "name": "eWBnC0OZ"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateRuleSet' test.out

#- 34 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '33zAw6Y0' \
    > test.out 2>&1
eval_tap $? 34 'DeleteRuleSet' test.out

#- 35 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 35 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE