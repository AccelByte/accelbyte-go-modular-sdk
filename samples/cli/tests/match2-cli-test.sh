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
    --body '{"matchPool": "7X2OgTz9xWqc8cey", "sessionId": "NuQxRKUfoFeJ0Kwc"}' \
    > test.out 2>&1
eval_tap $? 4 'CreateBackfill' test.out

#- 5 GetBackfillProposal
samples/cli/sample-apps Match2 getBackfillProposal \
    --namespace $AB_NAMESPACE \
    --sessionID 'pdegDkK1OVVP9aC5' \
    > test.out 2>&1
eval_tap $? 5 'GetBackfillProposal' test.out

#- 6 GetBackfill
samples/cli/sample-apps Match2 getBackfill \
    --backfillID 'cR9lgcvTWSZUngHl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetBackfill' test.out

#- 7 DeleteBackfill
samples/cli/sample-apps Match2 deleteBackfill \
    --backfillID 'Xz8xQI9hf0269EsB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteBackfill' test.out

#- 8 AcceptBackfill
samples/cli/sample-apps Match2 acceptBackfill \
    --backfillID 'PjOsUbqyz09B6p6l' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "KPdKOmjstEgpkMAE", "stop": false}' \
    > test.out 2>&1
eval_tap $? 8 'AcceptBackfill' test.out

#- 9 RejectBackfill
samples/cli/sample-apps Match2 rejectBackfill \
    --backfillID 'PeRn7YUw2CrAS8V7' \
    --namespace $AB_NAMESPACE \
    --body '{"proposalId": "MNdyLRFYXszMwnoY", "stop": true}' \
    > test.out 2>&1
eval_tap $? 9 'RejectBackfill' test.out

#- 10 MatchFunctionList
samples/cli/sample-apps Match2 matchFunctionList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 10 'MatchFunctionList' test.out

#- 11 CreateMatchFunction
samples/cli/sample-apps Match2 createMatchFunction \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "pED0r8b4Xla1i5mW", "url": "80kOIszOm0wj5pdP"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateMatchFunction' test.out

#- 12 UpdateMatchFunction
samples/cli/sample-apps Match2 updateMatchFunction \
    --name 'e6xdANkHQRsE7oTA' \
    --namespace $AB_NAMESPACE \
    --body '{"match_function": "hpoRCbIzXkcqv3Tn", "url": "saVVPq8iryUVYZm7"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateMatchFunction' test.out

#- 13 DeleteMatchFunction
samples/cli/sample-apps Match2 deleteMatchFunction \
    --name 'cbbC666T4kXOBEF6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteMatchFunction' test.out

#- 14 MatchPoolList
samples/cli/sample-apps Match2 matchPoolList \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 14 'MatchPoolList' test.out

#- 15 CreateMatchPool
samples/cli/sample-apps Match2 createMatchPool \
    --namespace $AB_NAMESPACE \
    --body '{"auto_accept_backfill_proposal": true, "backfill_proposal_expiration_seconds": 2, "backfill_ticket_expiration_seconds": 84, "match_function": "0Qc1u9i8D4h7ji59", "match_function_override": {"backfill_matches": "yFhGJZ1lNvx8H3tG", "enrichment": ["sSt3MEFisDkXj2XT", "HLemwyO3MXBDr0iy", "RmabEFFXydhyfpe3"], "make_matches": "l06TPQhIuh3DWACQ", "stat_codes": ["bqFzIZ9D2oYcAprb", "rWCBWw7IsZ2YG0eC", "a797H6X9druEeK1R"], "validation": ["rgDcQbCbPm4VC66Z", "HzgKcRijbaodnJYm", "JBwCkyeB82JAtIrg"]}, "name": "jk0bzp2vBf8LydU9", "rule_set": "KXW5DKP5ki0UNVWJ", "session_template": "CxsBxdOhRP13bOyE", "ticket_expiration_seconds": 84}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMatchPool' test.out

#- 16 MatchPoolDetails
samples/cli/sample-apps Match2 matchPoolDetails \
    --namespace $AB_NAMESPACE \
    --pool 'y66vCYi6peUdxluB' \
    > test.out 2>&1
eval_tap $? 16 'MatchPoolDetails' test.out

#- 17 UpdateMatchPool
samples/cli/sample-apps Match2 updateMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'JeSNESgps2lpa7eV' \
    --body '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 78, "backfill_ticket_expiration_seconds": 23, "match_function": "BldAmhAMpzMrOAdO", "match_function_override": {"backfill_matches": "G3RFWMTrIfqnW4sI", "enrichment": ["9p3dDyZXOzCY0iQF", "QKgvfsmmBrySDZCv", "7Q5uagOMBk8o5Zea"], "make_matches": "RRlACt4VlLyi6FBH", "stat_codes": ["fJDG7tMKqz2j2GzQ", "Wd5bzgZ0xJ0Qoju6", "T9kEnOJKCtRRwFJX"], "validation": ["VkYnwy9s3zZixAH3", "42oZSaZ8E6ljntvP", "G0zsq7JBShEJ1rrY"]}, "rule_set": "GHfvtkdUBNxExRX5", "session_template": "o60pNGctLOF2zC9r", "ticket_expiration_seconds": 11}' \
    > test.out 2>&1
eval_tap $? 17 'UpdateMatchPool' test.out

#- 18 DeleteMatchPool
samples/cli/sample-apps Match2 deleteMatchPool \
    --namespace $AB_NAMESPACE \
    --pool 'BuZg52PNvRAEF0xy' \
    > test.out 2>&1
eval_tap $? 18 'DeleteMatchPool' test.out

#- 19 MatchPoolMetric
samples/cli/sample-apps Match2 matchPoolMetric \
    --namespace $AB_NAMESPACE \
    --pool '0aWsDnAVtmTowwZW' \
    > test.out 2>&1
eval_tap $? 19 'MatchPoolMetric' test.out

#- 20 GetPlayerMetric
samples/cli/sample-apps Match2 getPlayerMetric \
    --namespace $AB_NAMESPACE \
    --pool 'Uy04vsfqzh08BZyT' \
    > test.out 2>&1
eval_tap $? 20 'GetPlayerMetric' test.out

#- 21 CreateMatchTicket
samples/cli/sample-apps Match2 createMatchTicket \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"HcWNFgKFBZJ1PRzC": {}, "WGQvMXBB0HojUlZ7": {}, "HJesQzRDXRilzEp6": {}}, "latencies": {"mBJkp0scL4AIlbrj": 16, "MBvBykjCGXm2sJ93": 46, "KFoYAVqDOLfzqOnf": 23}, "matchPool": "DP2LsHGU5IBaoUEk", "sessionID": "JIVRsEmoLma1TMGM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateMatchTicket' test.out

#- 22 MatchTicketDetails
samples/cli/sample-apps Match2 matchTicketDetails \
    --namespace $AB_NAMESPACE \
    --ticketid '3yuPe3wWBLFk2TkT' \
    > test.out 2>&1
eval_tap $? 22 'MatchTicketDetails' test.out

#- 23 DeleteMatchTicket
samples/cli/sample-apps Match2 deleteMatchTicket \
    --namespace $AB_NAMESPACE \
    --ticketid 'nvkpwXY5Y2SdvHfV' \
    > test.out 2>&1
eval_tap $? 23 'DeleteMatchTicket' test.out

#- 24 RuleSetList
samples/cli/sample-apps Match2 ruleSetList \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 24 'RuleSetList' test.out

#- 25 CreateRuleSet
samples/cli/sample-apps Match2 createRuleSet \
    --namespace $AB_NAMESPACE \
    --body '{"data": {"cIbXAQ2F6yPCX4nu": {}, "unQkfgH97bHoCyha": {}, "MR74JnDOvAeFEcke": {}}, "enable_custom_match_function": false, "name": "5udq4QYPVDeu7gwV"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateRuleSet' test.out

#- 26 RuleSetDetails
samples/cli/sample-apps Match2 ruleSetDetails \
    --namespace $AB_NAMESPACE \
    --ruleset 'MPEN48RSipz5fSU0' \
    > test.out 2>&1
eval_tap $? 26 'RuleSetDetails' test.out

#- 27 UpdateRuleSet
samples/cli/sample-apps Match2 updateRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset 'aPD1XQtIbXxicXKp' \
    --body '{"data": {"QIWy6wzCLFBkdRhZ": {}, "U9TbfBq30ECDquon": {}, "xhhaecKexpN96BbQ": {}}, "enable_custom_match_function": false, "name": "4sruXzjqwnEKu7kP"}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateRuleSet' test.out

#- 28 DeleteRuleSet
samples/cli/sample-apps Match2 deleteRuleSet \
    --namespace $AB_NAMESPACE \
    --ruleset '80bXGzFkKEM61xEx' \
    > test.out 2>&1
eval_tap $? 28 'DeleteRuleSet' test.out

#- 29 VersionCheckHandler
samples/cli/sample-apps Match2 versionCheckHandler \
    > test.out 2>&1
eval_tap $? 29 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE