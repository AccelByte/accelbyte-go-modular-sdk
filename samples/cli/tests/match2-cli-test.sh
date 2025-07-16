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
    --body '{"logLevel": "debug"}' \
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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["bMLixlj8", "SpscnPCU", "LHCD88kL"], "matchAnyCommon": true, "platformGroup": {"3TGG3WDz": ["a89G6Q3T", "kngFjecl", "gLfGmyjO"], "radK7oZW": ["sWFF4ICt", "qqso21vJ", "Xw46X30K"], "12ZUDNk5": ["2CFVLkW6", "XlXkuf5q", "Utumi5iA"]}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPatchConfigV1' test.out

#- 12 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 12 'EnvironmentVariableList' test.out

#- 13 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1980-09-10T00:00:00Z' \
    --isActive 'true' \
    --limit '25' \
    --matchPool 'RQ99lGZy' \
    --offset '71' \
    --playerID 'cdAwQJ4B' \
    --region 'Y17RLGIc' \
    --sessionID 'fthCzILN' \
    --toTime '1976-01-31T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryBackfill' test.out

#- 14 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "ZfLUopPb", "sessionId": "6qsbAZAW"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateBackfill' test.out

#- 15 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'Gn8c8HKl' \
    > test.out 2>&1
eval_tap $? 15 'GetBackfillProposal' test.out

#- 16 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'dMJOXJ1t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetBackfill' test.out

#- 17 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'qOmPjYPT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteBackfill' test.out

#- 18 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'hbKIA9az' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["JCT8Irzy", "9hi9cCUf", "1lROHMNa"], "proposalId": "44ahcvnb", "stop": true}' \
    > test.out 2>&1
eval_tap $? 18 'AcceptBackfill' test.out

#- 19 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'xKmjHIS7' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "pQfz5PNM", "stop": true}' \
    > test.out 2>&1
eval_tap $? 19 'RejectBackfill' test.out

#- 20 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 20 'MatchFunctionList' test.out

#- 21 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "cJx1Trl5", "serviceAppName": "RW3LoG1q", "url": "Xy7661y8"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchFunction' test.out

#- 22 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'IrbxcP3H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionGet' test.out

#- 23 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'iCIDjxwq' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "TRLObnw0", "serviceAppName": "Up2CgfUy", "url": "k69WV9tN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateMatchFunction' test.out

#- 24 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'UlfQMwek' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteMatchFunction' test.out

#- 25 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --name 'c0nfa6GJ' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 25 'MatchPoolList' test.out

#- 26 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 41, "backfill_ticket_expiration_seconds": 26, "best_latency_calculation_method": "WMAQ89lN", "crossplay_disabled": false, "match_function": "VwfEqTqE", "match_function_override": {"backfill_matches": "KHfgrS8m", "enrichment": ["ZqEDClum", "StjatqqB", "5Ev6UdeU"], "make_matches": "ANefN8Yw", "stat_codes": ["QYhQvPeR", "uvtawKAh", "WPfFJ81E"], "validation": ["uPI8bKpP", "59cPdgI3", "SFWt86gB"]}, "name": "KEHVfS3E", "platform_group_enabled": true, "rule_set": "CrPoPfUw", "session_template": "S65nHdmk", "ticket_expiration_seconds": 60}' \
    > test.out 2>&1
eval_tap $? 26 'CreateMatchPool' test.out

#- 27 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'N8Vv29Di' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolDetails' test.out

#- 28 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'ghlJ5KMO' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 15, "backfill_ticket_expiration_seconds": 12, "best_latency_calculation_method": "pWNprGfQ", "crossplay_disabled": true, "match_function": "omGRAxSI", "match_function_override": {"backfill_matches": "u7PMf0Gk", "enrichment": ["Se49NNxS", "nkgG33Pc", "ZKmMFBWj"], "make_matches": "bw0J54lW", "stat_codes": ["zdIzVOzY", "vHXpsaWX", "8lYONb6f"], "validation": ["jTpbFYmW", "dNUI3emm", "RcfUBVGl"]}, "platform_group_enabled": false, "rule_set": "dT6ZXkYO", "session_template": "DaeUfVwy", "ticket_expiration_seconds": 93}' \
    > test.out 2>&1
eval_tap $? 28 'UpdateMatchPool' test.out

#- 29 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'fSIQ43Rj' \
    > test.out 2>&1
eval_tap $? 29 'DeleteMatchPool' test.out

#- 30 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'W14aPTaq' \
    > test.out 2>&1
eval_tap $? 30 'MatchPoolMetric' test.out

#- 31 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'PjJ3lY5p' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 31 'PostMatchErrorMetric' test.out

#- 32 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool '9kA3D2pa' \
    > test.out 2>&1
eval_tap $? 32 'GetPlayerMetric' test.out

#- 33 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool '53IQnTYE' \
    --limit '18' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetMatchPoolTickets' test.out

#- 34 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"tZpSIhLx": {}, "OwSjEwwy": {}, "BLK8PMNv": {}}, "excludedSessions": ["iUuBumbN", "PcdxBq20", "uYu20OVs"], "latencies": {"tG0GfP3J": 27, "FDHrWnlv": 46, "xkz1pmA6": 98}, "matchPool": "zKE1550e", "sessionID": "Z0rZPBD8", "storage": {"e6jZB4ou": {}, "UUf4YLAy": {}, "wU1fNYSd": {}}}' \
    > test.out 2>&1
eval_tap $? 34 'CreateMatchTicket' test.out

#- 35 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --matchPool 'bO9TOZyk' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 35 'GetMyMatchTickets' test.out

#- 36 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'C39xSTCd' \
    > test.out 2>&1
eval_tap $? 36 'MatchTicketDetails' test.out

#- 37 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'ZSP65ScN' \
    > test.out 2>&1
eval_tap $? 37 'DeleteMatchTicket' test.out

#- 38 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --name 'mnRXpR7y' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 38 'RuleSetList' test.out

#- 39 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"vGbJJD5s": {}, "EKlLMucL": {}, "N1VwlE8Z": {}}, "enable_custom_match_function": true, "name": "myjPxM83"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateRuleSet' test.out

#- 40 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'knyBImsM' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetDetails' test.out

#- 41 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'tkRviKk7' \
    --body '{"data": {"bubOgz1R": {}, "SQVAyesj": {}, "NkXMkK56": {}}, "enable_custom_match_function": false, "name": "nPOBydzO"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateRuleSet' test.out

#- 42 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'JgMUKQXf' \
    > test.out 2>&1
eval_tap $? 42 'DeleteRuleSet' test.out

#- 43 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'JTbnVJIp' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetPlayerMetric' test.out

#- 44 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 44 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE