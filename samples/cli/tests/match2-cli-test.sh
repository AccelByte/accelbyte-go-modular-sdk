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
echo "1..39"

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
    --body '{"logLevel": "info"}' \
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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["PMYOdl8s", "2WdZmVfR", "8rvafNmu"], "matchAnyCommon": true, "platformGroup": {"logGVTim": ["nUlz5xqp", "fh45J6MM", "0hZCRSPC"], "zjDprbCr": ["8AyA2Mrz", "C64suH90", "UGv5kgVb"], "Ukxo0srC": ["lCamHTMj", "OGKjDP34", "3AJAqp3L"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "tABIjoIh", "sessionId": "scfIP3JH"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID '5nqZvUrc' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'oicwjLks' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'j3fZXlG1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'sc384DJN' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["N08SWZUI", "vmOJE1NX", "PJ8JSceN"], "proposalId": "HBhCsUIX", "stop": true}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'u132E7rR' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "VXq3l2lh", "stop": true}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "7OsZo54a", "serviceAppName": "R6lWo1sm", "url": "QUbLR29m"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'SIPYX4WF' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "hpMNvpcx", "serviceAppName": "zDiZJQTm", "url": "w33Du5e9"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'NPENjfRL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --name '92h77pms' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 64, "backfill_ticket_expiration_seconds": 28, "best_latency_calculation_method": "csFTcLur", "crossplay_disabled": false, "match_function": "pegUig05", "match_function_override": {"backfill_matches": "EUVbhM8I", "enrichment": ["9VwxWViz", "CixTuvFw", "Rod8uaHl"], "make_matches": "MbV9D83K", "stat_codes": ["YNIoC4XK", "OU7JNi4r", "Ar1UGAAD"], "validation": ["AYgRbg4A", "xr12RLPb", "ll3pCVfj"]}, "name": "FTMLVz8K", "platform_group_enabled": false, "rule_set": "kvFg4FQv", "session_template": "yVCOxeoh", "ticket_expiration_seconds": 32}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'PQqjubZJ' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'wdlrOs2G' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 2, "backfill_ticket_expiration_seconds": 76, "best_latency_calculation_method": "PqKq4bZ2", "crossplay_disabled": false, "match_function": "JP8smyuZ", "match_function_override": {"backfill_matches": "9208Vqqt", "enrichment": ["WnfgWtOq", "uDF9EKAi", "UjPJmoCs"], "make_matches": "lrK5zjfb", "stat_codes": ["nMieGoyT", "nLJ6SSw3", "gcWIy3Mt"], "validation": ["Ub0dZ68G", "2bQS4XcO", "YooGb5k3"]}, "platform_group_enabled": true, "rule_set": "B9ktNGjC", "session_template": "LYui7HqL", "ticket_expiration_seconds": 50}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'DDqBALd8' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'CB0Bbdid' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'ZQsi7Vg0' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 26 'PostMatchErrorMetric' test.out

#- 27 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'BtOIKLKO' \
    > test.out 2>&1
eval_tap $? 27 'GetPlayerMetric' test.out

#- 28 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool '3bPIOwDd' \
    --limit '21' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetMatchPoolTickets' test.out

#- 29 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"hanvwUgG": {}, "pBcQ07o6": {}, "QQ6hcPFb": {}}, "excludedSessions": ["MHTfsdEW", "9rVxULnX", "mMWuwTyY"], "latencies": {"Z4IET0pO": 29, "plmstq39": 22, "hWoxHJCr": 46}, "matchPool": "O2w2wOon", "sessionID": "owdOgDbv", "storage": {"W6qXkVaf": {}, "UunXA83l": {}, "OOe4Wd9y": {}}}' \
    > test.out 2>&1
eval_tap $? 29 'CreateMatchTicket' test.out

#- 30 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --matchPool 'W9qBNCIY' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 30 'GetMyMatchTickets' test.out

#- 31 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'ujco2A7z' \
    > test.out 2>&1
eval_tap $? 31 'MatchTicketDetails' test.out

#- 32 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid '0alLokN2' \
    > test.out 2>&1
eval_tap $? 32 'DeleteMatchTicket' test.out

#- 33 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --name 'LE3s44fJ' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 33 'RuleSetList' test.out

#- 34 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"h2D0T6g3": {}, "uZg25KDp": {}, "5d8mfnpk": {}}, "enable_custom_match_function": true, "name": "vpvlk5xr"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateRuleSet' test.out

#- 35 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'FYuHo15K' \
    > test.out 2>&1
eval_tap $? 35 'RuleSetDetails' test.out

#- 36 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'p4RUFFjH' \
    --body '{"data": {"MDK8vCQk": {}, "k8KIR8zl": {}, "Fw170k8L": {}}, "enable_custom_match_function": true, "name": "peKDWSha"}' \
    > test.out 2>&1
eval_tap $? 36 'UpdateRuleSet' test.out

#- 37 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'rZAdtT5Q' \
    > test.out 2>&1
eval_tap $? 37 'DeleteRuleSet' test.out

#- 38 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'O6WX9ks4' \
    > test.out 2>&1
eval_tap $? 38 'PublicGetPlayerMetric' test.out

#- 39 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 39 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE