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
echo "1..44"

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

#- 6 AdminGetPlayFeatureFlag
samples/cli/sample-apps Match2 adminGetPlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetPlayFeatureFlag' test.out

#- 7 AdminUpsertPlayFeatureFlag
samples/cli/sample-apps Match2 adminUpsertPlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    --body '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": false, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": true}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpsertPlayFeatureFlag' test.out

#- 8 AdminDeletePlayFeatureFlag
samples/cli/sample-apps Match2 adminDeletePlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeletePlayFeatureFlag' test.out

#- 9 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 9 'AdminGetAllConfigV1' test.out

#- 10 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetConfigV1' test.out

#- 11 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["gOCqxM9n", "RFgKdSsv", "XllweRsF"], "matchAnyCommon": true, "platformGroup": {"JVCF9KqB": ["2jpgK9E4", "N0dSmHh0", "r2aiNrb4"], "vv2DpM2y": ["jICbdNKn", "EerJTxNf", "WVOdtkuX"], "QmPmbHij": ["9FJ6sIf9", "dBaGigTw", "2nflG7vO"]}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPatchConfigV1' test.out

#- 12 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 12 'EnvironmentVariableList' test.out

#- 13 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1996-04-10T00:00:00Z' \
    --isActive 'true' \
    --limit '42' \
    --matchPool 'P1MUbCi8' \
    --offset '31' \
    --playerID 'thW2Xuwp' \
    --region 'e2Z6ouYw' \
    --sessionID 'UNYHrKZr' \
    --toTime '1997-03-09T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryBackfill' test.out

#- 14 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "2jUzGTZk", "sessionId": "9UUz6DUh"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateBackfill' test.out

#- 15 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'xUYqxxtX' \
    > test.out 2>&1
eval_tap $? 15 'GetBackfillProposal' test.out

#- 16 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'WxMAUDNn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetBackfill' test.out

#- 17 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '2wRSntXZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteBackfill' test.out

#- 18 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID '94DAfjKI' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["bdlir6Dr", "mAnurWGc", "N6dJ9GPR"], "proposalId": "AuvCYjLD", "stop": false}' \
    > test.out 2>&1
eval_tap $? 18 'AcceptBackfill' test.out

#- 19 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'mh9BYKgq' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "3s4iDIKM", "stop": true}' \
    > test.out 2>&1
eval_tap $? 19 'RejectBackfill' test.out

#- 20 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 20 'MatchFunctionList' test.out

#- 21 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "PzhkCq64", "serviceAppName": "FX8s959i", "url": "C43ZyNDi"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchFunction' test.out

#- 22 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'amGjOyzx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionGet' test.out

#- 23 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'vrGM10SU' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "NI13nkyX", "serviceAppName": "2jA4L5Fz", "url": "LfNwXEFs"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchFunction' test.out

#- 24 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'Nz1LzxRH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchFunction' test.out

#- 25 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --name 'FSC34yLe' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolList' test.out

#- 26 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 12, "backfill_ticket_expiration_seconds": 19, "best_latency_calculation_method": "8U7hEyuS", "crossplay_disabled": false, "match_function": "h2n0dejb", "match_function_override": {"backfill_matches": "LXJMhFUX", "enrichment": ["ANzLWP3w", "zaHADUkJ", "cCaj5xSd"], "make_matches": "wXCoq34E", "stat_codes": ["i8fimPyL", "METENHZ6", "rRX5et94"], "validation": ["y8W47KzY", "Pai5js1l", "bMQ35qCa"]}, "name": "D3S8UUEQ", "platform_group_enabled": true, "rule_set": "K8UmoVkf", "session_template": "PvaAQY4a", "ticket_expiration_seconds": 36}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchPool' test.out

#- 27 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'j2XBXfib' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolDetails' test.out

#- 28 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'eGmZAEKA' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 15, "backfill_ticket_expiration_seconds": 19, "best_latency_calculation_method": "HH0QxQ0C", "crossplay_disabled": false, "match_function": "be7oPkyA", "match_function_override": {"backfill_matches": "8LYnmza3", "enrichment": ["1CGkX0Hj", "dv1gqMMx", "4SpVhatg"], "make_matches": "bp3jaiVl", "stat_codes": ["SnHkVeS6", "sVSUwqjU", "Uz61Ijru"], "validation": ["akNRPlW1", "XmqsESTr", "JX9C0aKr"]}, "platform_group_enabled": false, "rule_set": "wBcxFbmc", "session_template": "IoX1TLbW", "ticket_expiration_seconds": 3}' \
    > test.out 2>&1
eval_tap $? 28 'UpdateMatchPool' test.out

#- 29 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'HbSIxEay' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchPool' test.out

#- 30 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'hxqMZk7t' \
    > test.out 2>&1
eval_tap $? 30 'MatchPoolMetric' test.out

#- 31 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'VwqSocsJ' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 31 'PostMatchErrorMetric' test.out

#- 32 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'vMUnMWYk' \
    > test.out 2>&1
eval_tap $? 32 'GetPlayerMetric' test.out

#- 33 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'bo3jvyRm' \
    --limit '19' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetMatchPoolTickets' test.out

#- 34 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"1HCP2Tak": {}, "VYCNOcsb": {}, "jOxJqU5x": {}}, "excludedSessions": ["Qt5Uqwg2", "ogm7YMHp", "ETWWXqnH"], "latencies": {"fFWcBle0": 41, "CVBdjL25": 8, "w2KZdCwx": 76}, "matchPool": "MszCxkTJ", "sessionID": "Q2bhSL2N", "storage": {"Z5Ht3TKG": {}, "v3HC2JVU": {}, "XIB11WG4": {}}}' \
    > test.out 2>&1
eval_tap $? 34 'CreateMatchTicket' test.out

#- 35 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --matchPool 'zjIpaOad' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 35 'GetMyMatchTickets' test.out

#- 36 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'v99eL3Gx' \
    > test.out 2>&1
eval_tap $? 36 'MatchTicketDetails' test.out

#- 37 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'ECjSXNUc' \
    > test.out 2>&1
eval_tap $? 37 'DeleteMatchTicket' test.out

#- 38 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'YpcYUjm5' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 38 'RuleSetList' test.out

#- 39 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"UfuggnJw": {}, "wLXEG5Uu": {}, "pLZ83fQg": {}}, "enable_custom_match_function": true, "name": "r49HQ6Fd"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateRuleSet' test.out

#- 40 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'Us6MWSxW' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetDetails' test.out

#- 41 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'z7p53KdJ' \
    --body '{"data": {"WUU4yTf8": {}, "o4autMWJ": {}, "5KsSVFQl": {}}, "enable_custom_match_function": true, "name": "eCCM2LCt"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateRuleSet' test.out

#- 42 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'SEGuyFgo' \
    > test.out 2>&1
eval_tap $? 42 'DeleteRuleSet' test.out

#- 43 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'TvpWjNY3' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetPlayerMetric' test.out

#- 44 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 44 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE