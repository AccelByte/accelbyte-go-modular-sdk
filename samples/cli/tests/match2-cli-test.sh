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
echo "1..40"

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
    --body '{"crossPlatformNoCurrentPlatform": true, "extraPlatforms": ["T1jeFrJd", "iQhDWPHW", "iaI5pqjS"], "matchAnyCommon": true, "platformGroup": {"peKisGuw": ["R7A4YNZx", "tAnbmYf6", "ZSUAMVnU"], "ybSXntd3": ["mIp1ArOr", "CnaLrav0", "9lX7hBlX"], "KtjqSFkq": ["4xdpkyog", "B8qJQTTM", "FwIbO4Oo"]}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPatchConfigV1' test.out

#- 9 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 9 'EnvironmentVariableList' test.out

#- 10 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1984-06-13T00:00:00Z' \
    --isActive 'true' \
    --limit '44' \
    --matchPool '4KlvYnNz' \
    --offset '36' \
    --playerID 'iZO4t2lb' \
    --region '6ful7dOY' \
    --sessionID 'rlFNESJt' \
    --toTime '1998-02-16T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryBackfill' test.out

#- 11 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "A5k56ctP", "sessionId": "R2l2kjvp"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateBackfill' test.out

#- 12 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'RiBFXrkv' \
    > test.out 2>&1
eval_tap $? 12 'GetBackfillProposal' test.out

#- 13 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'F3trHsq5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetBackfill' test.out

#- 14 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '58gZ8eeX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'DeleteBackfill' test.out

#- 15 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'Bf9vPajh' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["GRkHTQHr", "bnLEPksu", "be56sXjc"], "proposalId": "3MPzGbjV", "stop": false}' \
    > test.out 2>&1
eval_tap $? 15 'AcceptBackfill' test.out

#- 16 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'CjgSXEmp' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "icmzql8e", "stop": true}' \
    > test.out 2>&1
eval_tap $? 16 'RejectBackfill' test.out

#- 17 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 17 'MatchFunctionList' test.out

#- 18 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "1RkcdHXA", "serviceAppName": "mGKrMpil", "url": "pW3Dfk5Z"}' \
    > test.out 2>&1
eval_tap $? 18 'CreateMatchFunction' test.out

#- 19 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'Ih1m2jbS' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "ujCf4K1V", "serviceAppName": "VHnRS7Fc", "url": "6psYLOFv"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchFunction' test.out

#- 20 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'pZJbwNlp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeleteMatchFunction' test.out

#- 21 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'oreWHjwB' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 21 'MatchPoolList' test.out

#- 22 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 53, "backfill_ticket_expiration_seconds": 88, "best_latency_calculation_method": "MySPVz2v", "crossplay_disabled": true, "match_function": "qOOWg9L1", "match_function_override": {"backfill_matches": "DbtlMxn5", "enrichment": ["91fyYKf7", "phZ6jvX3", "OPb2H6i8"], "make_matches": "A7TNTpRu", "stat_codes": ["ayqARD1v", "1asZ2j62", "jauI55P9"], "validation": ["faQjs1u1", "CEUtzQnY", "7tNYJV24"]}, "name": "I2qPDpHq", "platform_group_enabled": true, "rule_set": "337nd1l6", "session_template": "kNJmsU3M", "ticket_expiration_seconds": 84}' \
    > test.out 2>&1
eval_tap $? 22 'CreateMatchPool' test.out

#- 23 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'SPSrD0ZX' \
    > test.out 2>&1
eval_tap $? 23 'MatchPoolDetails' test.out

#- 24 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'bTaFRRgB' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 85, "backfill_ticket_expiration_seconds": 46, "best_latency_calculation_method": "qU5W5Cnr", "crossplay_disabled": true, "match_function": "DlfzGSQ3", "match_function_override": {"backfill_matches": "40oLHtmv", "enrichment": ["2RySF6lY", "uJXie4ag", "yNmJUYOk"], "make_matches": "DAASQQMq", "stat_codes": ["guk5EcGt", "LfR5bydN", "h8lnXMfR"], "validation": ["STiHwKvQ", "Moijnd3c", "6GZWz09L"]}, "platform_group_enabled": false, "rule_set": "b8LxwMGP", "session_template": "MTojlHG6", "ticket_expiration_seconds": 9}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateMatchPool' test.out

#- 25 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'Fvzf0VcZ' \
    > test.out 2>&1
eval_tap $? 25 'DeleteMatchPool' test.out

#- 26 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '1KLygPRD' \
    > test.out 2>&1
eval_tap $? 26 'MatchPoolMetric' test.out

#- 27 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'abbuPmzQ' \
    --body '{"type": "connectDS"}' \
    > test.out 2>&1
eval_tap $? 27 'PostMatchErrorMetric' test.out

#- 28 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'wDY9eYrn' \
    > test.out 2>&1
eval_tap $? 28 'GetPlayerMetric' test.out

#- 29 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool '9q3fKGPS' \
    --limit '84' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 29 'AdminGetMatchPoolTickets' test.out

#- 30 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"3W2HDX1G": {}, "kMdqCx2l": {}, "uLJ1Ibi2": {}}, "excludedSessions": ["WS4L2qE3", "4Ga5Wwpb", "Cu0udGIm"], "latencies": {"4SBFj2JM": 83, "MFKwKjxi": 10, "iKlpDxbo": 84}, "matchPool": "W0l0AbCh", "sessionID": "zkrTQs8D", "storage": {"5YPwJ9Dg": {}, "1vqY2y5t": {}, "MSZo5ib2": {}}}' \
    > test.out 2>&1
eval_tap $? 30 'CreateMatchTicket' test.out

#- 31 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --matchPool 'VaHl0jTJ' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 31 'GetMyMatchTickets' test.out

#- 32 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'AjUdKT8d' \
    > test.out 2>&1
eval_tap $? 32 'MatchTicketDetails' test.out

#- 33 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'D37Zy0Ee' \
    > test.out 2>&1
eval_tap $? 33 'DeleteMatchTicket' test.out

#- 34 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --name 'cHMV1aAx' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 34 'RuleSetList' test.out

#- 35 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"UJgmWH2p": {}, "trPOq37Y": {}, "lFDYlLx7": {}}, "enable_custom_match_function": false, "name": "fMy2FaOZ"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateRuleSet' test.out

#- 36 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'h0d8cYPO' \
    > test.out 2>&1
eval_tap $? 36 'RuleSetDetails' test.out

#- 37 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'mqhH5PLG' \
    --body '{"data": {"pQTZZ9Io": {}, "M2ONUjKI": {}, "uW7Df2h9": {}}, "enable_custom_match_function": false, "name": "ZdKiwCIP"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateRuleSet' test.out

#- 38 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'A2OdFz3X' \
    > test.out 2>&1
eval_tap $? 38 'DeleteRuleSet' test.out

#- 39 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'fLJzPmHl' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetPlayerMetric' test.out

#- 40 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 40 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE