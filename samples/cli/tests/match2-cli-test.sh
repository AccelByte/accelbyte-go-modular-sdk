#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..29"

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

#- 4 CreateBackfill
samples/cli/sample-apps Match2 createBackfill \
    --namespace $AB_NAMESPACE \
    --body '{"matchPool": "todAG1VrEj5o5wnQ", "sessionId": "1BDfoh9xf8ROtAEG"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'qJmi2XH8xjQ3K5Hc' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'W82NVPSuxJWJ3pPn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID '9Ul7zdjayThn5fIn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'LDXPwYroRLMOFTIh' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "2G0097nkgigyoutX", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'XAcAD7RNRfS6aYZ2' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "LiMTn0XNQeBskx7v", "stop": false}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "hXQGTa0zHRnW9wko", "url": "iAK6A37S0UWaoh0o"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name '5AnwGJOsEx83vLTP' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "xhu6eoUu2ngwlbXr", "url": "mjTaRwonUoL0eKEp"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'cFE0JZEqOveCgoF5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 86, "backfill_ticket_expiration_seconds": 75, "match_function": "tvS6ZH8hg7pOFDP0", "match_function_override": {"backfill_matches": "0LmdiraqIuJdMrtV", "enrichment": ["jQ15kKEnBqEO1cWJ", "Lcd3nGvTPfyU13Jv", "OL6NYacNWi5NzTBc"], "make_matches": "BxllLfRX3kHPBMlG", "stat_codes": ["7jb56ERfBalGKCwY", "76MjA6mnTVih12Nc", "kP4OXRJfYnQArU11"], "validation": ["PcNnWvCyxj6etdjy", "ZtBbYKTXYNTS4TDs", "6cPOGbYMz8QXD7NG"]}, "name": "hOcqDAVmRljzdx3V", "rule_set": "NMi7Y3rpkvez9AXv", "session_template": "3XkvYV7aBXmCiIPm", "ticket_expiration_seconds": 87}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'u9xOVltDB0afqUyK' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'sJuKTZA8CWbp0wgT' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 59, "backfill_ticket_expiration_seconds": 20, "match_function": "xuHOr1mXo7t9i2bz", "match_function_override": {"backfill_matches": "gyKzPaKA5PBA7ZiP", "enrichment": ["XJ86Ffu69nVDzc3V", "LXJyM2G0UdKjrg3L", "lH4udfKQduwEIUgj"], "make_matches": "WinhXr1Ky29tUisr", "stat_codes": ["K6vWrcHB7B9p9ctL", "az4Kps4siQB577pO", "n6XwsFQuIyV8bVAf"], "validation": ["7WKOiPC7cMnaHlS0", "GLfXCTHznRiim8zM", "TZjzCsVsaN9c4KCo"]}, "rule_set": "6TFB9qdWppwCnaam", "session_template": "B7Df4zGMHv0FXqRQ", "ticket_expiration_seconds": 68}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'YldCyDLIS4j0Tr6D' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool 'fOGbcecbY4TvygGV' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'i4oeh9qy4M4s1Lnq' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Eiff13nh8xEIokNA": {}, "m65xzw05VCAwxE8x": {}, "guOWnUjnAtQMxYOG": {}}, "latencies": {"Cim8BGV2fqg0XgNG": 84, "eEDOrqz96EFdAxeg": 63, "iMazm7P5i4rDI3PY": 2}, "matchPool": "jUpoDe7ONcqRvevZ", "sessionID": "rWs33lmB7TVQF3nb"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid 'BicAgJOgSRBeQa9L' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'kSwXUcKtKW93mflM' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"B8bOPOnMI9Y0KAaM": {}, "wy98inlW20shKcdR": {}, "PfSPAh71wZ8NH5U8": {}}, "enable_custom_match_function": true, "name": "P2EJZqZPimK3t3Yn"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'YVV0E9W4zr5uzGij' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'BrBxMepwfJ0POd0z' \
    --body '{"data": {"STIGW2R7u8W0rDNy": {}, "mStlIaTJPpitfVZ8": {}, "8NxTV2i9i8fbykbM": {}}, "enable_custom_match_function": true, "name": "Sz7rEyqgukf4IpLR"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'MOayTCbiBscctGlg' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE