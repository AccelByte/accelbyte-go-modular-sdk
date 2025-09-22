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
    --body '{"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT": false, "ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE": false}' \
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
    --body '{"whitelistedUsers": ["6PPyK2Xm", "n0RtipbV", "vtCoTbSF"]}' \
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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["JjA1Gw1s", "omUTZtqk", "8fBLW5La"], "matchAnyCommon": false, "platformGroup": {"ggsapD5q": ["DPuoewxU", "Bxm6LBhr", "BhYdRZei"], "ydrrqpsx": ["cn4gpdmb", "2UG8iR54", "Dnd9WmGC"], "myXtrwZT": ["PBWuTO0s", "FdXVKinr", "t5MqBRn2"]}, "xrayMaxWhitelistedUserCount": 46}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1995-01-14T00:00:00Z' \
    --isActive 'false' \
    --limit '48' \
    --matchPool 'DbOEEfta' \
    --offset '87' \
    --playerID 'l7kvr6hT' \
    --region 'XPuFx7ei' \
    --sessionID 'w4IseW0P' \
    --toTime '1987-07-08T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "fPFcg5YY", "sessionId": "aUz2kBjI"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'GZRksJLk' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'y2orBpRl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'e6kn9Lbi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'tYi5g45f' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["nXh71FZV", "ddwO16QN", "tszJioGJ"], "proposalId": "bd2on3ZL", "stop": true}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'mWjZUPRG' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "k1pMry1Z", "stop": false}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "D96pUTbi", "serviceAppName": "1d57Wh76", "url": "ZvW5Rd2E"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'K1yZTA52' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'WdIFZMIz' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "Z1Bhqybf", "serviceAppName": "AR0zfDZm", "url": "909TfUOf"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'RuOsKKoi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --name 'q4RBuUkS' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 3, "backfill_ticket_expiration_seconds": 89, "best_latency_calculation_method": "NHOsGKUY", "crossplay_disabled": true, "match_function": "OXWYgK1Y", "match_function_override": {"backfill_matches": "vJWzYSjR", "enrichment": ["3iYK219M", "uLAE7XNY", "nelOMKSx"], "make_matches": "y0F2bVbU", "stat_codes": ["7AcxNvzh", "9PjpCYCT", "hB0AztDR"], "validation": ["Nc8wwafb", "KAusZ0r3", "43budRxA"]}, "name": "I6QsfTHa", "platform_group_enabled": true, "rule_set": "qnroyWgE", "session_template": "oAjeiIrp", "ticket_expiration_seconds": 43}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool '3Usax5mX' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'nvq5uINv' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 83, "backfill_ticket_expiration_seconds": 63, "best_latency_calculation_method": "yDqa8jzo", "crossplay_disabled": true, "match_function": "skCNuycA", "match_function_override": {"backfill_matches": "oUwiFbxN", "enrichment": ["8wmOUfYK", "Z25pOEr7", "wg8FSZny"], "make_matches": "ZPsCfUVm", "stat_codes": ["7kiK32Aj", "KZaFPMkI", "6TwccmjQ"], "validation": ["qANjjVJo", "OAWN7vln", "WdDXVVVs"]}, "platform_group_enabled": false, "rule_set": "tGoYRNsj", "session_template": "aDNYFLbs", "ticket_expiration_seconds": 14}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'XN7f4TPx' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'NY5iM5A9' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'iGTO2Aej' \
    --body '{"type": "getExternalDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'iiJTHxOB' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'BKTpsH0g' \
    --limit '0' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"9QZ65opm": {}, "rAcHpXYL": {}, "4CjOJPjs": {}}, "excludedSessions": ["Ntm7pGKc", "ku9MbUiC", "Hq5eE3o6"], "latencies": {"I2ONwLdj": 40, "WdVQdAxH": 46, "VajcOPGY": 32}, "matchPool": "6mHr72Cz", "sessionID": "sTog9xN5", "storage": {"znRElWH7": {}, "LmKbODbW": {}, "FId1CiZG": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --matchPool '6mBWAwsx' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'W8tmtrkq' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'Ls4Y2nGg' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --name 'GEyZFj2g' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"yBongNJG": {}, "eB46j8mk": {}, "nVYCofKs": {}}, "enable_custom_match_function": false, "name": "W0f3uUKD"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'dO6ybjg1' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'WX1JZhc2' \
    --body '{"data": {"Mdg3FF3W": {}, "L6ReTKKH": {}, "f3S6bSYA": {}}, "enable_custom_match_function": false, "name": "dopFcN2W"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'i7UWsjjG' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'zrs6IEKB' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE