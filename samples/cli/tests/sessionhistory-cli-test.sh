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
echo "1..39"

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

#- 4 AdminGetEnvConfig
samples/cli/sample-apps Sessionhistory adminGetEnvConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetEnvConfig' test.out

#- 5 AdminPatchUpdateEnvConfig
samples/cli/sample-apps Sessionhistory adminPatchUpdateEnvConfig \
    --body '{"SESSION_DELETION_GRACE_PERIOD": 56}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateEnvConfig' test.out

#- 6 AdminGetLogConfig
samples/cli/sample-apps Sessionhistory adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 6 'AdminGetLogConfig' test.out

#- 7 AdminPatchUpdateLogConfig
samples/cli/sample-apps Sessionhistory adminPatchUpdateLogConfig \
    --body '{"logLevel": "warning"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminPatchUpdateLogConfig' test.out

#- 8 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --completedOnly 'DzaYwUn6' \
    --configurationName '8HqqSjjX' \
    --dsPodName '9OG1gQlr' \
    --endDate 'Db14c94g' \
    --gameSessionID 'SXbArCHh' \
    --isPersistent 'PfFQRniZ' \
    --joinability 'W9w4AUKm' \
    --limit '79' \
    --matchPool '5tnrvdYa' \
    --offset '55' \
    --order 'sLz4aTj1' \
    --orderBy 'wifTkCe6' \
    --startDate 'i9Nvz73Y' \
    --statusV2 '4RFEwuFh' \
    --userID 'IMLF0hg9' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryGameSessionDetail' test.out

#- 9 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'bz5qYnJQ' \
    > test.out 2>&1
eval_tap $? 9 'GetGameSessionDetail' test.out

#- 10 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'a8aBVEuU' \
    --limit '56' \
    --offset '23' \
    --order 'Dz3BnEmd' \
    --orderBy 'uGDpJh66' \
    --ticketID 'bbwh9nAk' \
    --userID 'jpF8nCtp' \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryMatchmakingDetail' test.out

#- 11 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId '3KgeuSrC' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetMatchmakingDetailBySessionID' test.out

#- 12 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'vmapneZJ' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetMatchmakingDetailByTicketID' test.out

#- 13 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'SiOkN2Qc' \
    --joinability 'ebcN7opL' \
    --leaderID 'UDsAj0Ef' \
    --limit '47' \
    --offset '55' \
    --order 'TgF8fvLn' \
    --orderBy 'SNqfmI8f' \
    --partyID 'ujnvVGLW' \
    --startDate 'dofT8pmj' \
    --userID 'JdaaSMfs' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryPartyDetail' test.out

#- 14 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'HUAZB1RJ' \
    > test.out 2>&1
eval_tap $? 14 'GetPartyDetail' test.out

#- 15 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate '1cO5YXm7' \
    --gameMode '1hJB5k7M' \
    --limit '50' \
    --offset '5' \
    --order '4DSzF2jG' \
    --partyID 'apMhC4Sm' \
    --region 'gCZGHQ7D' \
    --startDate 'dLRUoLSf' \
    --userIDs 'JucYXaMS' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryTicketDetail' test.out

#- 16 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'eZ9pBrK1' \
    > test.out 2>&1
eval_tap $? 16 'AdminTicketDetailGetByTicketID' test.out

#- 17 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '30' \
    --order 'bNjOKbRe' \
    > test.out 2>&1
eval_tap $? 17 'PublicQueryGameSessionMe' test.out

#- 18 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["8ZJX4dI8", "vb0h9pcN", "HmoQqHwT"]' \
    --endDate 'lRYXRFuk' \
    --startDate '7bwioQwE' \
    > test.out 2>&1
eval_tap $? 18 'QueryXrayMatchPool' test.out

#- 19 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'W446Nm4w' \
    --poolName 'yWuRCzgO' \
    --all 'true' \
    --limit '83' \
    --offset '59' \
    --endDate '9QYjdBmo' \
    --startDate 'UWPboyGl' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPool' test.out

#- 20 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'I03HHHkF' \
    --poolName '3Kl3Yphk' \
    --tickId '8B0gNWJG' \
    > test.out 2>&1
eval_tap $? 20 'QueryDetailTickMatchPoolMatches' test.out

#- 21 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'pdi0G9q5' \
    --poolName 'POWZaRZz' \
    --tickId 'QUsWzl8A' \
    > test.out 2>&1
eval_tap $? 21 'QueryDetailTickMatchPoolTicket' test.out

#- 22 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'SpWRw9r0' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchHistories' test.out

#- 23 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'j4XzcMi4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchTicketHistories' test.out

#- 24 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'r0xKj3NO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'QueryXrayMatch' test.out

#- 25 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["Jp99ledm", "4nxY0JWZ", "SEeXT8oD"]' \
    --endDate 'DgkvnPph' \
    --startDate 'shzrv7Fx' \
    > test.out 2>&1
eval_tap $? 25 'QueryAcquiringDS' test.out

#- 26 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["O3Qk4OPG", "Q2IUvq2i", "e0cYozHI"]' \
    --endDate '0oVFWVYN' \
    --startDate 'YfdNytd2' \
    > test.out 2>&1
eval_tap $? 26 'QueryAcquiringDSWaitTimeAvg' test.out

#- 27 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["TyLnm4Ud", "8HOtxKzo", "J7mN5Kep"]' \
    --endDate '3W3WJudn' \
    --startDate '6cVpf80Q' \
    > test.out 2>&1
eval_tap $? 27 'QueryMatchLengthDurationpAvg' test.out

#- 28 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["pReB9ifL", "YABLagFG", "fSoIlZpx"]' \
    --endDate 'HT8mnQHr' \
    --startDate 'IKFsD5zo' \
    > test.out 2>&1
eval_tap $? 28 'QueryMatchLengthDurationp99' test.out

#- 29 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["mEwDEhQK", "IMgopExr", "MvnC4t77"]' \
    --region 'az2qElDQ' \
    --endDate 'a7S1SgzV' \
    --startDate 'LFCfWNJb' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalActiveSession' test.out

#- 30 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["IjFL2oHx", "PkSjyWvp", "dmQW7Q11"]' \
    --endDate 'onsHw8y6' \
    --startDate '6lo5dl8i' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatch' test.out

#- 31 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["mNnJZnrR", "3SMAzs41", "CUsHZZpe"]' \
    --endDate 'ZT8yOCkR' \
    --startDate 'HWqdxFtJ' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalPlayerPersession' test.out

#- 32 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["kBWn2Ciu", "PqdgcVIW", "JpgYaWJj"]' \
    --endDate 'S7VEOOzx' \
    --startDate 'DYOtjz1x' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingCanceled' test.out

#- 33 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["reFAVeXZ", "j3PNz1Oe", "QTAKCLVY"]' \
    --endDate 'LzWXOEy0' \
    --startDate 'B76TDBlL' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingCreated' test.out

#- 34 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["s8niT8N0", "JrlJIOFP", "hbOC8xdE"]' \
    --endDate '8KHnXDZM' \
    --startDate '322iuQTY' \
    > test.out 2>&1
eval_tap $? 34 'QueryTotalMatchmakingExpired' test.out

#- 35 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["l1CmzIdu", "9MTDkt0H", "a5AnxOck"]' \
    --endDate 'SE7we0Zt' \
    --startDate 'gXoDNRSo' \
    > test.out 2>&1
eval_tap $? 35 'QueryTotalMatchmakingMatchTicket' test.out

#- 36 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "J3Vbwn1D", "activeAllianceRule": {"max_number": 46, "min_number": 15, "player_max_number": 33, "player_min_number": 1}, "activeMatchingRule": [{"attribute": "ty6pF5T5", "criteria": "jU63MAEV", "reference": 0.6570362929938802}, {"attribute": "mSZt5x8f", "criteria": "HZJRbWZH", "reference": 0.439071656668404}, {"attribute": "x6ToKPb2", "criteria": "30XyqzNM", "reference": 0.18461265216705047}], "function": "6pFprC0Q", "gameMode": "COwp6Knp", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 49, "matchID": "qVeQIGzb", "namespace": "q7IYzX2b", "remainingPlayersPerTicket": [2, 89, 6], "remainingTickets": 32, "sessionTickID": "oHxeqqMH", "tickID": 33, "ticketID": "spARDOYk", "timeToMatchSec": 0.6777136331195246, "timestamp": "1985-06-06T00:00:00Z", "unbackfillReason": "N8e7qOEf", "unmatchReason": "7hxLnbQ8"}' \
    > test.out 2>&1
eval_tap $? 36 'CreateXrayTicketObservability' test.out

#- 37 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "JB5i4eMg", "activeAllianceRule": {"max_number": 99, "min_number": 68, "player_max_number": 92, "player_min_number": 46}, "activeMatchingRule": [{"attribute": "GS2PtiEN", "criteria": "X5sc4LJE", "reference": 0.26244188892232123}, {"attribute": "afEtSYGC", "criteria": "N1NgnDQn", "reference": 0.41794472162216645}, {"attribute": "BM7Z5q6g", "criteria": "oHSVOkaS", "reference": 0.9006913676854814}], "function": "zudEQFw4", "gameMode": "SgbXfeVD", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 74, "matchID": "bvHV9XoR", "namespace": "ssaWLmwZ", "remainingPlayersPerTicket": [67, 28, 96], "remainingTickets": 18, "sessionTickID": "bm7gaH7o", "tickID": 34, "ticketID": "YJRAu6SW", "timeToMatchSec": 0.4163206355294884, "timestamp": "1986-07-20T00:00:00Z", "unbackfillReason": "OgJJJfS2", "unmatchReason": "lYmLbbYR"}, {"action": "XvUMOKaK", "activeAllianceRule": {"max_number": 58, "min_number": 65, "player_max_number": 47, "player_min_number": 91}, "activeMatchingRule": [{"attribute": "Ofi5Pj03", "criteria": "ia0PNXMC", "reference": 0.5442748319662029}, {"attribute": "kAnXRsWp", "criteria": "93IKZBgL", "reference": 0.00019769099066879736}, {"attribute": "pNygZ8Dw", "criteria": "TopQJwPb", "reference": 0.9878120773995274}], "function": "CXfr1mL2", "gameMode": "79TVhK36", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 67, "matchID": "Ivwp0dNo", "namespace": "3QuJtv3G", "remainingPlayersPerTicket": [10, 53, 38], "remainingTickets": 62, "sessionTickID": "fR5YC8Yy", "tickID": 20, "ticketID": "8JaAwrC2", "timeToMatchSec": 0.6216515246335887, "timestamp": "1982-08-10T00:00:00Z", "unbackfillReason": "rNV69nJ5", "unmatchReason": "xUBVSfkn"}, {"action": "5CFsuysk", "activeAllianceRule": {"max_number": 12, "min_number": 72, "player_max_number": 0, "player_min_number": 41}, "activeMatchingRule": [{"attribute": "2T1oMxjo", "criteria": "8zwa97NI", "reference": 0.5955538184598569}, {"attribute": "XaW1Tt6x", "criteria": "y78LswEk", "reference": 0.5493520034355445}, {"attribute": "MFl7M6Y2", "criteria": "8VLI8wpe", "reference": 0.733667360516633}], "function": "oAGrslSC", "gameMode": "NTUk2Zxc", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 69, "matchID": "7IzAf2n2", "namespace": "Aj9cExcR", "remainingPlayersPerTicket": [7, 26, 27], "remainingTickets": 60, "sessionTickID": "zIGJ5Gte", "tickID": 100, "ticketID": "GwCzesWJ", "timeToMatchSec": 0.7980456257728595, "timestamp": "1988-05-29T00:00:00Z", "unbackfillReason": "wUfPc5Fw", "unmatchReason": "mF9L4XD6"}]}' \
    > test.out 2>&1
eval_tap $? 37 'CreateXrayBulkTicketObservability' test.out

#- 38 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'M4JYUuXQ' \
    --limit '28' \
    --offset '9' \
    --endDate 'zcjLoXCa' \
    --startDate 'I1BfiuKy' \
    > test.out 2>&1
eval_tap $? 38 'QueryXrayTimelineByTicketID' test.out

#- 39 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'P4YFip5p' \
    --limit '7' \
    --offset '45' \
    --endDate '8obTwApK' \
    --startDate 'iqQdW3hm' \
    > test.out 2>&1
eval_tap $? 39 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE