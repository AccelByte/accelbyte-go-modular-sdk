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
echo "1..41"

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
    --body '{"logLevel": "error"}' \
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
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["v9upunKN", "5n625f9r", "3CODCd8v"], "matchAnyCommon": true, "platformGroup": {"9cIkLjhu": ["V0HDQjyt", "VpeYpuvI", "pTX8pBHi"], "SyscQ6yN": ["G5rDhf1M", "6bLycbQl", "Gfy1EuCc"], "NNueDIEo": ["hQJERorH", "mwPbPqui", "0X5Jq5JQ"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1972-03-22T00:00:00Z' \
    --isActive 'false' \
    --limit '79' \
    --matchPool 'QgDmt636' \
    --offset '99' \
    --playerID 'BvQ7AiPr' \
    --region 'klrSjVsO' \
    --sessionID 'OdOUnCDj' \
    --toTime '1972-08-23T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryBackfill' test.out

#- 11 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "L9TWNcgh", "sessionId": "k342utFv"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateBackfill' test.out

#- 12 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'FxuEjgAP' \
    > test.out 2>&1
eval_tap $? 12 'GetBackfillProposal' test.out

#- 13 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'qHFgyOwR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetBackfill' test.out

#- 14 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'dcNbVFcZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteBackfill' test.out

#- 15 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'RxGuoI6E' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["Y416jlDj", "JWsUK82I", "5GjpvP64"], "proposalId": "PVlFcpvd", "stop": true}' \
    > test.out 2>&1
eval_tap $? 15 'AcceptBackfill' test.out

#- 16 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'OsYgDOFM' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "geta1DJG", "stop": true}' \
    > test.out 2>&1
eval_tap $? 16 'RejectBackfill' test.out

#- 17 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 17 'MatchFunctionList' test.out

#- 18 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "RDVVZKb5", "serviceAppName": "Kf4AQyVm", "url": "kK1EtZKy"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateMatchFunction' test.out

#- 19 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'kWXGUTf8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'MatchFunctionGet' test.out

#- 20 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '2gwZFxaO' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "wBVuTGNR", "serviceAppName": "zj0yQGYZ", "url": "LlMPRxkc"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateMatchFunction' test.out

#- 21 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'SLmhGLK9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'DeleteMatchFunction' test.out

#- 22 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name 'wLkjlHQM' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolList' test.out

#- 23 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 11, "backfill_ticket_expiration_seconds": 5, "best_latency_calculation_method": "zzMpOrwP", "crossplay_disabled": false, "match_function": "0GQHJnXe", "match_function_override": {"backfill_matches": "kLESvtNy", "enrichment": ["EbNLmnvx", "26CrhHCf", "jIuSOsUj"], "make_matches": "5RpJaR7c", "stat_codes": ["Ivw9lmWz", "84GK7I9U", "mMwgdFDp"], "validation": ["cAbs9ygC", "ANpRbS1U", "nuKnfBxB"]}, "name": "hZ6ruOG1", "platform_group_enabled": false, "rule_set": "Pn9RGnt4", "session_template": "LP1fCutn", "ticket_expiration_seconds": 93}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchPool' test.out

#- 24 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'n4UA5y9c' \
    > test.out 2>&1
eval_tap $? 24 'MatchPoolDetails' test.out

#- 25 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'kdNetQJA' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 78, "backfill_ticket_expiration_seconds": 21, "best_latency_calculation_method": "LjfCdQGb", "crossplay_disabled": true, "match_function": "MG1DSx16", "match_function_override": {"backfill_matches": "p5zR8FMN", "enrichment": ["FJwYcXi9", "NHYeWcq2", "7azmtywK"], "make_matches": "YUPQVfCM", "stat_codes": ["YCG11aa2", "HnsaJcaG", "0XumpqwS"], "validation": ["OX3PfdnZ", "dhoF6388", "0Lbgpgpp"]}, "platform_group_enabled": false, "rule_set": "wq2wkLt4", "session_template": "qe6aFn31", "ticket_expiration_seconds": 62}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchPool' test.out

#- 26 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'tSXEujDg' \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchPool' test.out

#- 27 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'ydMqrd6Y' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolMetric' test.out

#- 28 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'rCIysqIX' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 28 'PostMatchErrorMetric' test.out

#- 29 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'VKhOmvWB' \
    > test.out 2>&1
eval_tap $? 29 'GetPlayerMetric' test.out

#- 30 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'YLBusUfF' \
    --limit '99' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetMatchPoolTickets' test.out

#- 31 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"eGv49FfV": {}, "JWTq8ncm": {}, "5I6YcFgT": {}}, "excludedSessions": ["gBtIjDU2", "XVx1uad6", "hgMePc7d"], "latencies": {"MtfapzHq": 98, "cyysSteY": 14, "PhFyMTHh": 11}, "matchPool": "kARqLVeq", "sessionID": "JayETaL9", "storage": {"AJtbfxrT": {}, "WbZO9IgC": {}, "iW3Uz37t": {}}}' \
    > test.out 2>&1
eval_tap $? 31 'CreateMatchTicket' test.out

#- 32 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --matchPool 'ZnD2cDoY' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 32 'GetMyMatchTickets' test.out

#- 33 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '4tA5rn3P' \
    > test.out 2>&1
eval_tap $? 33 'MatchTicketDetails' test.out

#- 34 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid '1OCft8Oj' \
    > test.out 2>&1
eval_tap $? 34 'DeleteMatchTicket' test.out

#- 35 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name 'aK88tBHy' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 35 'RuleSetList' test.out

#- 36 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"Vd4SCXgp": {}, "cXVt8Ysd": {}, "oFJJseus": {}}, "enable_custom_match_function": false, "name": "PFJpGbZ3"}' \
    > test.out 2>&1
eval_tap $? 36 'CreateRuleSet' test.out

#- 37 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '1wGyvsz3' \
    > test.out 2>&1
eval_tap $? 37 'RuleSetDetails' test.out

#- 38 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'srarTo21' \
    --body '{"data": {"ujnA0pgA": {}, "sJsReXxh": {}, "Whap3J0p": {}}, "enable_custom_match_function": true, "name": "6F0D8YaH"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateRuleSet' test.out

#- 39 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '3xC5zo2f' \
    > test.out 2>&1
eval_tap $? 39 'DeleteRuleSet' test.out

#- 40 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'NHIMdUYR' \
    > test.out 2>&1
eval_tap $? 40 'PublicGetPlayerMetric' test.out

#- 41 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 41 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE