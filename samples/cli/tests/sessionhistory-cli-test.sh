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
samples/cli/sample-apps Sessionhistory getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
samples/cli/sample-apps Sessionhistory getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetLogConfig
samples/cli/sample-apps Sessionhistory adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
samples/cli/sample-apps Sessionhistory adminPatchUpdateLogConfig \
    --body '{"logLevel": "trace"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --endDate '9r4Z4Ybr' \
    --gameSessionID 'k9QZaLR8' \
    --limit '0' \
    --offset '62' \
    --order 'gUZrJuQX' \
    --orderBy 'volQj5Yn' \
    --startDate 'gYRHQ3GQ' \
    --userID 'R8EKmJaT' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'LMsLyn2l' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'amxsaNW9' \
    --limit '41' \
    --offset '57' \
    --order 'eyb7kViY' \
    --orderBy 'kxK4B1jj' \
    --ticketID 'EfS76IPU' \
    --userID 'L4V85LGH' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'nRXFW0g7' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'ektZNQCl' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '78' \
    --order '3XQceNtg' \
    --orderBy 'wUSD7wDg' \
    --partyID 'nqLRm3XX' \
    --userID 'XfN8w51x' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'Jhgh08Kc' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'zgBVMRDy' \
    --gameMode 'KMbVG1YB' \
    --limit '66' \
    --offset '99' \
    --order 'ScSYgHtG' \
    --partyID 'fAjoQVkb' \
    --region 'sbXc8PCO' \
    --startDate 'AY7nsErk' \
    --userIDs 'F3DkCp9O' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'uAfmjGrv' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '47' \
    --order 'aUBRICk1' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["y19q5v2x", "jMshTOUy", "GZO6mut1"]' \
    --endDate 'DE6KL6d9' \
    --startDate 'XVRV71sJ' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'HWzq4gNw' \
    --poolName '1mOuEd9H' \
    --all 'false' \
    --limit '47' \
    --offset '23' \
    --endDate 'CHrcEg4y' \
    --startDate 'uaMCa2CV' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName '5DiwQ2t8' \
    --poolName 'j4AE1QmL' \
    --tickId 'VBPklAUZ' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'GqSJbWrg' \
    --poolName 'PWb1HCKc' \
    --tickId 'hkswlrRL' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'tBxVy5OB' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'l3cpKj2p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'yPAYaN1T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["y0thmTXN", "QbswZ56X", "1sbwJTRK"]' \
    --endDate '7UKXVSHB' \
    --startDate 'AcVtBGWL' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["UGvczr3s", "rsDtc9L8", "LMl0qC2z"]' \
    --endDate '7dYyCnyn' \
    --startDate '9q0A9W2p' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["wfjwFHHL", "JtxixwLF", "CDFyuShf"]' \
    --endDate 'TD3r8aun' \
    --startDate 'oTUhdbgx' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["UVsWlzx9", "lInLLOpX", "IilxATLl"]' \
    --endDate '89bBCtG7' \
    --startDate 'XkZatg6s' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["2JOGnSAE", "nJbPsH34", "fp0vUFAT"]' \
    --region 'sSsUdGdU' \
    --endDate 'iJh4cn7u' \
    --startDate 'ZlYvvjCQ' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["cAVozeu6", "bNL8oogs", "xd3cDwrn"]' \
    --endDate 'bkftzxJV' \
    --startDate 'g13o2Yf7' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["Gk5jnSYc", "BKTwiORh", "Quc9tgoZ"]' \
    --endDate 'k2UmrO1c' \
    --startDate 'R2wu8Y5k' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["qpUn3rmq", "RusVnC6c", "NpyHRHaJ"]' \
    --endDate 'y0xGzfUo' \
    --startDate 'Y9RQFp6V' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["KrIr0dZw", "vnzT678X", "KmZjkmqA"]' \
    --endDate 'qybhWasE' \
    --startDate 'i8vj06aT' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["3fDgPGT5", "YpRIq1eM", "NFW0oHcU"]' \
    --endDate 'jyVYzn5n' \
    --startDate '5trx5s93' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["dyhcov9K", "RBHiYBd9", "bGJ4zfvY"]' \
    --endDate 'LnOcZDWx' \
    --startDate 'Y8lZ2Ra2' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "InwI4jVV", "activeAllianceRule": {"max_number": 0, "min_number": 62, "player_max_number": 0, "player_min_number": 78}, "activeMatchingRule": [{"attribute": "SJuJkPDA", "criteria": "9IGgzi1i", "reference": 0.8323421291580921}, {"attribute": "QrqwISKI", "criteria": "ekMVlARx", "reference": 0.6612187219816061}, {"attribute": "3Mzh4yRM", "criteria": "rwClCr0O", "reference": 0.7266087610879186}], "function": "OSpz4Dqi", "gameMode": "lByk3WYL", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 90, "matchID": "BKgDPW1u", "namespace": "gDyPNLzC", "remainingPlayersPerTicket": [40, 10, 31], "remainingTickets": 64, "sessionTickID": "oc3ALtI6", "tickID": 77, "ticketID": "jlXMpvc4", "timeToMatchSec": 0.47063533462407803, "timestamp": "1995-03-02T00:00:00Z", "unbackfillReason": "0U7Mzc3y", "unmatchReason": "6cq2L6TN"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "jpd1RRgs", "activeAllianceRule": {"max_number": 84, "min_number": 69, "player_max_number": 17, "player_min_number": 1}, "activeMatchingRule": [{"attribute": "xqYGjSC4", "criteria": "mJD4uCFq", "reference": 0.7217803122012343}, {"attribute": "PHfGI7Ay", "criteria": "rCbSjv57", "reference": 0.04695575776813099}, {"attribute": "TrMNSEmP", "criteria": "hnueZqeg", "reference": 0.7055580564085392}], "function": "tMDI2dWn", "gameMode": "5sn9r9M5", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 93, "matchID": "nUm1YBGc", "namespace": "2dcZA3fo", "remainingPlayersPerTicket": [39, 83, 25], "remainingTickets": 18, "sessionTickID": "8zV9jnL1", "tickID": 52, "ticketID": "BzDQb8TI", "timeToMatchSec": 0.9319026767689734, "timestamp": "1975-08-24T00:00:00Z", "unbackfillReason": "Y1YDgzDp", "unmatchReason": "hOXqAsUd"}, {"action": "6m3oe03I", "activeAllianceRule": {"max_number": 66, "min_number": 4, "player_max_number": 40, "player_min_number": 57}, "activeMatchingRule": [{"attribute": "VjfEycpl", "criteria": "DDw4RZyR", "reference": 0.9785874495257555}, {"attribute": "bUc7ReC3", "criteria": "dyTCEZ2m", "reference": 0.8164500214485092}, {"attribute": "lSWOxjnr", "criteria": "tWOBLnbK", "reference": 0.2626211537897891}], "function": "58thoCjg", "gameMode": "g494Ufto", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 51, "matchID": "ruX2HRyL", "namespace": "VGlSatLO", "remainingPlayersPerTicket": [52, 86, 68], "remainingTickets": 75, "sessionTickID": "OSXigyAs", "tickID": 61, "ticketID": "FPeZHtDR", "timeToMatchSec": 0.4385116359080189, "timestamp": "1991-07-29T00:00:00Z", "unbackfillReason": "gOZMHtyx", "unmatchReason": "0bNQ798z"}, {"action": "clULMy79", "activeAllianceRule": {"max_number": 89, "min_number": 71, "player_max_number": 82, "player_min_number": 22}, "activeMatchingRule": [{"attribute": "d8f8fE0S", "criteria": "vwQ7RrXi", "reference": 0.8760056276181276}, {"attribute": "OMlO1VqY", "criteria": "UNBQ1fhV", "reference": 0.8344685390414621}, {"attribute": "2hIrXVIV", "criteria": "bR24Tkva", "reference": 0.7524202125089168}], "function": "nUs0TZHi", "gameMode": "r321g9ZN", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 94, "matchID": "hBDbPh5s", "namespace": "GRjL6LXC", "remainingPlayersPerTicket": [28, 6, 70], "remainingTickets": 11, "sessionTickID": "Ku0CvszZ", "tickID": 66, "ticketID": "qom0XmKB", "timeToMatchSec": 0.8948576395943155, "timestamp": "1975-04-09T00:00:00Z", "unbackfillReason": "6IixVJOn", "unmatchReason": "h2wNQVr1"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'qwGPgCnY' \
    --limit '63' \
    --offset '73' \
    --endDate 'm7NSXnms' \
    --startDate 'EOE7esqt' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId '1ltraOTw' \
    --limit '51' \
    --offset '22' \
    --endDate '8Fgg7pLv' \
    --startDate 'oDvKf2lR' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE