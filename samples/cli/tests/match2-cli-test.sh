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
    --body '{"platformGroup": {"WHzBeXRl": ["UbBF9v9N", "JSAETGMZ", "K5FPCqoH"], "2iPccTbG": ["vd8MLTMm", "5oqKc2QS", "npWv1AGY"], "S5ctdZXv": ["flPVyoPP", "2131F1Sx", "8V1wtATr"]}}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPatchConfigV1' test.out

#- 7 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 7 'EnvironmentVariableList' test.out

#- 8 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "nrztsD6Z", "sessionId": "6huzg6CA"}' \
    > test.out 2>&1
eval_tap $? 8 'CreateBackfill' test.out

#- 9 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '1ip010a2' \
    > test.out 2>&1
eval_tap $? 9 'GetBackfillProposal' test.out

#- 10 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID '0ouqSn3O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetBackfill' test.out

#- 11 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'g1q8IW2D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteBackfill' test.out

#- 12 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '9cHdUiKe' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "VymWK9mH", "stop": false}' \
    > test.out 2>&1
eval_tap $? 12 'AcceptBackfill' test.out

#- 13 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'RuyQSJA3' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "731ojoeb", "stop": true}' \
    > test.out 2>&1
eval_tap $? 13 'RejectBackfill' test.out

#- 14 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 14 'MatchFunctionList' test.out

#- 15 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "HkVq3WyF", "serviceAppName": "1mhT5qGd", "url": "YCELm8GA"}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchFunction' test.out

#- 16 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'CMn6incy' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "CMAy6XbM", "serviceAppName": "odsWHVdK", "url": "KLV7Job7"}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateMatchFunction' test.out

#- 17 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'scvsV2oT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMatchFunction' test.out

#- 18 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --name 'kdd7rS1z' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 18 'MatchPoolList' test.out

#- 19 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 20, "backfill_ticket_expiration_seconds": 75, "crossplay_disabled": true, "match_function": "71AqEZ7q", "match_function_override": {"backfill_matches": "P484ZNHX", "enrichment": ["Oew7sjMA", "2Zi7yzHb", "ZYwG0jMA"], "make_matches": "ocN7gA0E", "stat_codes": ["9M61KrOH", "YCilciPK", "WCpjPXZb"], "validation": ["lFNzRFsU", "TvziGwoa", "lEZIZ24T"]}, "name": "qhggeAeL", "platfrom_group_enabled": true, "rule_set": "WFqGrGB3", "session_template": "6UOJ0ImT", "ticket_expiration_seconds": 48}' \
    > test.out 2>&1
eval_tap $? 19 'CreateMatchPool' test.out

#- 20 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'pA2uJXlE' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolDetails' test.out

#- 21 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Vs2Ry8w8' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 8, "backfill_ticket_expiration_seconds": 67, "crossplay_disabled": true, "match_function": "tWtdJVrs", "match_function_override": {"backfill_matches": "rAgwwYJa", "enrichment": ["Eg4r5SIG", "iTHKkM61", "G2pyXvL5"], "make_matches": "mieF6fzt", "stat_codes": ["CEBmUFYY", "Hb9uwKNj", "2q23rIst"], "validation": ["7PfrSjA9", "y1vQocZP", "8nfI3EBc"]}, "platfrom_group_enabled": true, "rule_set": "ivnKzntK", "session_template": "gpF5WHN8", "ticket_expiration_seconds": 82}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateMatchPool' test.out

#- 22 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Zhp9Zww1' \
    > test.out 2>&1
eval_tap $? 22 'DeleteMatchPool' test.out

#- 23 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '413F3SNF' \
    > test.out 2>&1
eval_tap $? 23 'MatchPoolMetric' test.out

#- 24 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'ThTUzgmJ' \
    > test.out 2>&1
eval_tap $? 24 'GetPlayerMetric' test.out

#- 25 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'gXH4hdaz' \
    --limit '46' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 25 'AdminGetMatchPoolTickets' test.out

#- 26 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"W26kpk3k": {}, "IkXEWomR": {}, "zxvU3Dnc": {}}, "latencies": {"ZLlqhQWe": 0, "3KsV5nwK": 99, "vIDkCiQa": 49}, "matchPool": "Gjr3shrs", "sessionID": "RWan3NHl"}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchTicket' test.out

#- 27 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --matchPool 'vUsyR34d' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 27 'GetMyMatchTickets' test.out

#- 28 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'on9Sv33l' \
    > test.out 2>&1
eval_tap $? 28 'MatchTicketDetails' test.out

#- 29 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'Fk7FMuTp' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchTicket' test.out

#- 30 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --name 'JDns9ydS' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 30 'RuleSetList' test.out

#- 31 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"Z9LXRs9e": {}, "qdJAN9I6": {}, "DbL1NtCx": {}}, "enable_custom_match_function": true, "name": "Kvyj2IwL"}' \
    > test.out 2>&1
eval_tap $? 31 'CreateRuleSet' test.out

#- 32 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset '0rs4m7Xd' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetDetails' test.out

#- 33 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'L5M30mJ0' \
    --body '{"data": {"OGSleG2W": {}, "cR6m31cK": {}, "iN7yGiMJ": {}}, "enable_custom_match_function": true, "name": "PYA10fRR"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateRuleSet' test.out

#- 34 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'NnZKA2es' \
    > test.out 2>&1
eval_tap $? 34 'DeleteRuleSet' test.out

#- 35 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 35 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE