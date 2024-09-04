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
echo "1..37"

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
    --body '{"logLevel": "fatal"}' \
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
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["KOOlEIpk", "4JYCVe7I", "vhhflHNS"], "matchAnyCommon": true, "platformGroup": {"p5skRunB": ["YlLeZ6Gi", "xlc1AvIo", "a7Gsi4jO"], "8uoFBdMR": ["D1mrKu8i", "AMHrzmSA", "6xPkBnYz"], "mXeEfM1E": ["o7SnLm6V", "etWNcCG1", "zX631zKf"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "xuivXHjF", "sessionId": "7yIVgJWw"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateBackfill' test.out

#- 11 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'mywhjGQA' \
    > test.out 2>&1
eval_tap $? 11 'GetBackfillProposal' test.out

#- 12 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'oSIFuQh8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'GetBackfill' test.out

#- 13 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'fQKZ4D0b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteBackfill' test.out

#- 14 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'OwwqrYA0' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "05NCs1e7", "stop": false}' \
    > test.out 2>&1
eval_tap $? 14 'AcceptBackfill' test.out

#- 15 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'XroCAmvE' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "ius0EOF4", "stop": true}' \
    > test.out 2>&1
eval_tap $? 15 'RejectBackfill' test.out

#- 16 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 16 'MatchFunctionList' test.out

#- 17 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "0EhQQCKx", "serviceAppName": "qlFvOP2u", "url": "EV5N7nUw"}' \
    > test.out 2>&1
eval_tap $? 17 'CreateMatchFunction' test.out

#- 18 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '1BuU1046' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "AEjj2pqE", "serviceAppName": "1os5Yzev", "url": "0yH5dQrp"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchFunction' test.out

#- 19 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'Zkq7w7H8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteMatchFunction' test.out

#- 20 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name 'Hsb33ple' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 20 'MatchPoolList' test.out

#- 21 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 44, "backfill_ticket_expiration_seconds": 74, "best_latency_calculation_method": "4XaXCUFd", "crossplay_disabled": true, "match_function": "JNsWQBFH", "match_function_override": {"backfill_matches": "ooVZ6KmS", "enrichment": ["CrTM6oo6", "Tl9GgNBS", "D4RnOhAD"], "make_matches": "7SuJ110Q", "stat_codes": ["QLqaM4bz", "RhiYa333", "NKlHP5sj"], "validation": ["YtyCxtIj", "Z7weeLsi", "8BzVfUGJ"]}, "name": "9cFbxNv1", "platform_group_enabled": true, "rule_set": "dOd7kMdp", "session_template": "8it0jwyp", "ticket_expiration_seconds": 35}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchPool' test.out

#- 22 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '6oFhqmRO' \
    > test.out 2>&1
eval_tap $? 22 'MatchPoolDetails' test.out

#- 23 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '0IIjfdMv' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 99, "backfill_ticket_expiration_seconds": 67, "best_latency_calculation_method": "Po1Zprso", "crossplay_disabled": false, "match_function": "uK9LiaeG", "match_function_override": {"backfill_matches": "6XYtjqnc", "enrichment": ["nPAClQ6z", "cDsuyUab", "hVxki80v"], "make_matches": "0JC9syVg", "stat_codes": ["VOlx927l", "KTrMogjb", "Y1hxDkn4"], "validation": ["Ymsm4sfL", "uhOrKVAO", "zTGn8f8l"]}, "platform_group_enabled": false, "rule_set": "SJiVBalU", "session_template": "YbUtO1q0", "ticket_expiration_seconds": 2}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchPool' test.out

#- 24 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'mg5cm323' \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchPool' test.out

#- 25 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Si5JhVqt' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolMetric' test.out

#- 26 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'vv0t4nTV' \
    > test.out 2>&1
eval_tap $? 26 'GetPlayerMetric' test.out

#- 27 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'aYZJ5QLB' \
    --limit '45' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetMatchPoolTickets' test.out

#- 28 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"J10AbX58": {}, "5j8P8Nlq": {}, "QzSXwVHk": {}}, "latencies": {"fZDpXLHL": 57, "kw2RGWdP": 5, "p1oFkZkv": 100}, "matchPool": "hnpNg35m", "sessionID": "9MrPtuqe", "storage": {"qDCAruFk": {}, "IEq1rWUd": {}, "LsoFRmXw": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchTicket' test.out

#- 29 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --matchPool 'wJtGGvEN' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 29 'GetMyMatchTickets' test.out

#- 30 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'n1JTPApv' \
    > test.out 2>&1
eval_tap $? 30 'MatchTicketDetails' test.out

#- 31 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'zSlYhu4y' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchTicket' test.out

#- 32 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name 'zaASahDR' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 32 'RuleSetList' test.out

#- 33 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"ztO9FxZG": {}, "r7A03hWU": {}, "cXLUI3hL": {}}, "enable_custom_match_function": false, "name": "sjtDWobR"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateRuleSet' test.out

#- 34 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'PqbYi09r' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetDetails' test.out

#- 35 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'twvb0lBr' \
    --body '{"data": {"tWrFSPnW": {}, "dbmdsC2k": {}, "piMYSMlv": {}}, "enable_custom_match_function": false, "name": "FGStsdyb"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateRuleSet' test.out

#- 36 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'gVd6QuMN' \
    > test.out 2>&1
eval_tap $? 36 'DeleteRuleSet' test.out

#- 37 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 37 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE