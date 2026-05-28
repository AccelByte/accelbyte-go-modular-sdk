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
echo "1..46"

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
    --body '{"logLevel": "trace"}' \
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
    --body '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": true, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": true}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpsertPlayFeatureFlag' test.out

#- 8 AdminDeletePlayFeatureFlag
samples/cli/sample-apps Match2 adminDeletePlayFeatureFlag \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeletePlayFeatureFlag' test.out

#- 9 AdminGetXRayConfig
samples/cli/sample-apps Match2 adminGetXRayConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetXRayConfig' test.out

#- 10 AdminUpdateXRayConfig
samples/cli/sample-apps Match2 adminUpdateXRayConfig \
    --namespace $AB_NAMESPACE \
    --body '{"whitelistedUsers": ["eMRcx53B", "XWBJU7CV", "MOzOZNQa"]}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateXRayConfig' test.out

#- 11 AdminGetAllConfigV1
samples/cli/sample-apps Match2 adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigV1' test.out

#- 12 AdminGetConfigV1
samples/cli/sample-apps Match2 adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigV1' test.out

#- 13 AdminPatchConfigV1
samples/cli/sample-apps Match2 adminPatchConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["iDjGsFSo", "0CYPPSpB", "yj95j8ej"], "matchAnyCommon": true, "platformGroup": {"LBbJtFyl": ["BJ5Nu3EM", "LPzTqQ9Z", "iKPdMrOC"], "w9IpsDj4": ["eTTc6gfJ", "DMUuQDbx", "D5O5FFn5"], "l0u7bygS": ["hrKQUtGw", "tP7E3CZm", "MeEtZSDY"]}, "xrayMaxWhitelistedUserCount": 39}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1975-05-13T00:00:00Z' \
    --isActive 'true' \
    --limit '30' \
    --matchPool 'dlZB3vl9' \
    --offset '69' \
    --playerID 'Rgb2pbuG' \
    --region 'p2m07b8r' \
    --sessionID 'lsHy6fMB' \
    --toTime '1980-04-12T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "Cs49jYvk", "sessionId": "8sOzuETz"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'Hlv5PDzA' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'T2sj7s6S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'RaJZ7KLC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'DjqhNkRh' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["F8Zt8wKE", "x5Q9elrh", "lzIjihOl"], "proposalId": "eSyORkhw", "stop": true}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'NO4Kd5HD' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "pi6XTenc", "stop": false}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "w3stOuot", "serviceAppName": "2C1mvRD5", "url": "BlTXF1HM"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'gUdulz4R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'Ylv8f0jW' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "O6jfmow4", "serviceAppName": "Aq5qOnIH", "url": "jcy5s4P9"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name '5Wz1PDoJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --name 'gwalzt8u' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 91, "backfill_ticket_expiration_seconds": 6, "best_latency_calculation_method": "Uxjhcl8w", "crossplay_disabled": false, "match_function": "vAlj9iIX", "match_function_override": {"backfill_matches": "j0shfWgh", "enrichment": ["Lmpo8q7A", "Zq586kse", "fjXoDDzX"], "make_matches": "125lEnY4", "stat_codes": ["yf6svXsh", "lmgxMbH5", "29G2Ahje"], "validation": ["hjbcEK4C", "Kye4L7q3", "QLhkz54K"]}, "name": "rkeVvrwm", "platform_group_enabled": true, "rule_set": "LR1f4D98", "session_template": "3Mb2bBh3", "ticket_expiration_seconds": 25}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '9jc7PYR7' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool '80doHp8j' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 11, "backfill_ticket_expiration_seconds": 44, "best_latency_calculation_method": "juzXDPX3", "crossplay_disabled": true, "match_function": "uz34afUh", "match_function_override": {"backfill_matches": "gDVmRvI1", "enrichment": ["LbFsIrd9", "AAQ0Q7DN", "l1UkLecc"], "make_matches": "wKoZeOFp", "stat_codes": ["CbaFG1HZ", "g6GQIjbM", "c9kmiO9P"], "validation": ["504LITB6", "JkehEGvx", "GnBfspPR"]}, "platform_group_enabled": false, "rule_set": "6xfMV7nK", "session_template": "vRwIsTOT", "ticket_expiration_seconds": 86}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ALOQwedt' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'JvDL18DB' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'RqOfhpml' \
    --body '{"type": "getExternalDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'zrgSMx2F' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'U4AHLUi8' \
    --limit '12' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"i7PNWLWR": {}, "mpnI61Qc": {}, "yZyYlQzj": {}}, "excludedSessions": ["wEwMkn4q", "K3EHeJdA", "zPTJ9QbY"], "latencies": {"3GIbNecA": 98, "0rd3uC9i": 80, "tZmWxMzW": 27}, "matchPool": "eE7hBbbQ", "sessionID": "Wpn7UigY", "storage": {"gpG2iCzA": {}, "jUEtVqUk": {}, "1W2WrxxT": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --matchPool 'k5PSZIN6' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'fmXyKPZP' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'XHzD6h6R' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name '06zvG4Bb' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"0Spa0LUQ": {}, "gYAK2ddM": {}, "fbFn0CI8": {}}, "enable_custom_match_function": false, "name": "3m8ZGkzg"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'Jq9xi9aR' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'SXuQx89Y' \
    --body '{"data": {"RsN8IAg7": {}, "ccrR90Bd": {}, "NUM61KH7": {}}, "enable_custom_match_function": false, "name": "rWAzObVk"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'mJAavNId' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'oRpjLJSk' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE