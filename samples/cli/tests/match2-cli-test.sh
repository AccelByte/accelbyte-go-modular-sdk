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
    --body '{"logLevel": "panic"}' \
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
    --body '{"whitelistedUsers": ["1BfMG0W8", "000nI2i6", "YyfLsvwt"]}' \
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
    --body '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["Tz94y7zz", "C3ewDuAe", "l6wKfisZ"], "matchAnyCommon": false, "platformGroup": {"tA18vYXn": ["HqndS8w0", "deQVAfud", "SSHU9SaI"], "ay1WWhT1": ["c3aHQsN8", "3FRoj92O", "bgI0gPTN"], "AfPPfpVI": ["0BFPvyBL", "QrukJI93", "JpNeJ4A9"]}, "xrayMaxWhitelistedUserCount": 22}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPatchConfigV1' test.out

#- 14 EnvironmentVariableList
samples/cli/sample-apps Match2 environmentVariableList \
    > test.out 2>&1
eval_tap $? 14 'EnvironmentVariableList' test.out

#- 15 AdminQueryBackfill
samples/cli/sample-apps Match2 adminQueryBackfill \
    --namespace $AB_NAMESPACE \
    --fromTime '1986-10-20T00:00:00Z' \
    --isActive 'false' \
    --limit '90' \
    --matchPool 'yj6b1QPt' \
    --offset '19' \
    --playerID 'Mhezx1oM' \
    --region 'baqGhBNt' \
    --sessionID 'ysMP08NK' \
    --toTime '1977-03-26T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryBackfill' test.out

#- 16 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "fu5N2RZd", "sessionId": "2bNxPybn"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateBackfill' test.out

#- 17 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'g70ex7Mm' \
    > test.out 2>&1
eval_tap $? 17 'GetBackfillProposal' test.out

#- 18 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'XIVwAOe3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetBackfill' test.out

#- 19 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'RaDVB39f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteBackfill' test.out

#- 20 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'nqu2HbPH' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedTicketIds": ["xwrJMSnL", "GnB6twSD", "Gani2kOV"], "proposalId": "EyFcr1yQ", "stop": true}' \
    > test.out 2>&1
eval_tap $? 20 'AcceptBackfill' test.out

#- 21 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'VjEqBij2' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "VmDUPhzn", "stop": false}' \
    > test.out 2>&1
eval_tap $? 21 'RejectBackfill' test.out

#- 22 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 22 'MatchFunctionList' test.out

#- 23 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "lYawwOqQ", "serviceAppName": "KurDAL3O", "url": "LifCeiCj"}' \
    > test.out 2>&1
eval_tap $? 23 'CreateMatchFunction' test.out

#- 24 MatchFunctionGet
samples/cli/sample-apps Match2 matchFunctionGet \
    --name 'Pq2UCvAc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'MatchFunctionGet' test.out

#- 25 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'jIMoYvK4' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "8L7kxd00", "serviceAppName": "hfITIcPz", "url": "EWVJSIQh"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateMatchFunction' test.out

#- 26 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'B9tNvC5i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteMatchFunction' test.out

#- 27 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --name 'ob9jTBRe' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 27 'MatchPoolList' test.out

#- 28 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 56, "backfill_ticket_expiration_seconds": 40, "best_latency_calculation_method": "u7e3WHZd", "crossplay_disabled": true, "match_function": "1RHBOMyp", "match_function_override": {"backfill_matches": "NjfNVsgk", "enrichment": ["d5gJfK9D", "AFLzPvXJ", "4hxcWQts"], "make_matches": "FQfLDQsv", "stat_codes": ["O3qTzMkA", "GuReabz0", "6k6j3ewa"], "validation": ["ZG1Foa71", "vde17PWC", "hCBbIcbU"]}, "name": "WxJxtf21", "platform_group_enabled": true, "rule_set": "dOzbZLYy", "session_template": "3M2TS2an", "ticket_expiration_seconds": 34}' \
    > test.out 2>&1
eval_tap $? 28 'CreateMatchPool' test.out

#- 29 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'WJKe6b4E' \
    > test.out 2>&1
eval_tap $? 29 'MatchPoolDetails' test.out

#- 30 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'hWkmzNXd' \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 62, "backfill_ticket_expiration_seconds": 54, "best_latency_calculation_method": "3fC03nM9", "crossplay_disabled": false, "match_function": "e7lTvJKO", "match_function_override": {"backfill_matches": "thpeygDp", "enrichment": ["OpNEiImB", "1qBsSjaI", "zb4JV6hm"], "make_matches": "HHEtvLGZ", "stat_codes": ["fUokA58Q", "c6HEJC1b", "YWO4dBWk"], "validation": ["ydLF1lV7", "IvZpJxXz", "x1eQn2wJ"]}, "platform_group_enabled": false, "rule_set": "NNid5xmw", "session_template": "v1XzgNlx", "ticket_expiration_seconds": 20}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateMatchPool' test.out

#- 31 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'VF61onhf' \
    > test.out 2>&1
eval_tap $? 31 'DeleteMatchPool' test.out

#- 32 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'KNpnX0P3' \
    > test.out 2>&1
eval_tap $? 32 'MatchPoolMetric' test.out

#- 33 PostMatchErrorMetric
samples/cli/sample-apps Match2 postMatchErrorMetric \
    --namespace $AB_NAMESPACE \
    --pool 'V6UM1FPE' \
    --body '{"type": "getExternalDS"}' \
    > test.out 2>&1
eval_tap $? 33 'PostMatchErrorMetric' test.out

#- 34 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'clL4OBlr' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerMetric' test.out

#- 35 AdminGetMatchPoolTickets
samples/cli/sample-apps Match2 adminGetMatchPoolTickets \
    --namespace $AB_NAMESPACE \
    --pool 'Yyx3PXzJ' \
    --limit '36' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetMatchPoolTickets' test.out

#- 36 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"TSsBWB2i": {}, "OIviAHMW": {}, "OdhlUFqX": {}}, "excludedSessions": ["vLmnxfyP", "064b2Z3Q", "iVypbsWC"], "latencies": {"4zPDHc1T": 88, "sypvTjgU": 33, "GfyrwCkY": 95}, "matchPool": "iguLuPxl", "sessionID": "OiWoE1Z1", "storage": {"PSsHmMBz": {}, "q1f452W6": {}, "MuJM9QSZ": {}}}' \
    > test.out 2>&1
eval_tap $? 36 'CreateMatchTicket' test.out

#- 37 GetMyMatchTickets
samples/cli/sample-apps Match2 getMyMatchTickets \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --matchPool 'Y30aNCfk' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 37 'GetMyMatchTickets' test.out

#- 38 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'JPwYswQc' \
    > test.out 2>&1
eval_tap $? 38 'MatchTicketDetails' test.out

#- 39 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'OQWRImr0' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMatchTicket' test.out

#- 40 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --name 'qAAG8s2z' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 40 'RuleSetList' test.out

#- 41 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"WooOuLUR": {}, "XGwdeqTr": {}, "DHxysw0V": {}}, "enable_custom_match_function": false, "name": "PzAPw69O"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateRuleSet' test.out

#- 42 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'U8cVt1gv' \
    > test.out 2>&1
eval_tap $? 42 'RuleSetDetails' test.out

#- 43 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'pefJe1EZ' \
    --body '{"data": {"0qmmr0RH": {}, "NmibZcIU": {}, "yKV1HkT6": {}}, "enable_custom_match_function": true, "name": "aS1x7E7s"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateRuleSet' test.out

#- 44 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'ak4xDGzz' \
    > test.out 2>&1
eval_tap $? 44 'DeleteRuleSet' test.out

#- 45 PublicGetPlayerMetric
samples/cli/sample-apps Match2 publicGetPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'xuPIzThq' \
    > test.out 2>&1
eval_tap $? 45 'PublicGetPlayerMetric' test.out

#- 46 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 46 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE