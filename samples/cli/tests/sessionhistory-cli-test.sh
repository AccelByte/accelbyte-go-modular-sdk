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
    --body '{"logLevel": "error"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'rVwXXyXO' \
    --gameSessionID '0TWzEPzG' \
    --limit '91' \
    --offset '88' \
    --order 'ohfKRp9r' \
    --orderBy 'gx5VDTC8' \
    --startDate 'o7a1b1xF' \
    --userID 's0jaJrKQ' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'cf8fN1WF' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'BeLmJHoW' \
    --limit '5' \
    --offset '34' \
    --order 'M2HFTdPF' \
    --orderBy 'NeXs39yj' \
    --ticketID 'vK92HeqI' \
    --userID '8H4thLPv' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'Nrryo02B' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'tVcGqx1C' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '67' \
    --order 'hh1A6vom' \
    --orderBy '27oJDtji' \
    --partyID 'UUAorJkv' \
    --userID 'Wua2yEJa' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'Whpjlg3K' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate '38Omb0FD' \
    --gameMode 'dIy6Pzqy' \
    --limit '12' \
    --offset '77' \
    --order 'hCyBArzZ' \
    --partyID 'IyQMDq3c' \
    --region '8z8efEhm' \
    --startDate 'Z67Mnp5X' \
    --userIDs 'gC6sX3b6' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId '3LqkxEtA' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '31' \
    --order 'AYRRhEPX' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["VHHa9LbB", "4dHKBl54", "CWknSUxw"]' \
    --endDate 'JZYgQ4ls' \
    --startDate 'keQlaquN' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName '5lK1DIqD' \
    --poolName 'ZBGjlxde' \
    --all 'true' \
    --limit '72' \
    --offset '43' \
    --endDate 'cq8oxvS9' \
    --startDate 'iJb7vVxO' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'O64UgvLK' \
    --poolName 'G76Taoan' \
    --tickId 'DI3bkeIO' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'ikoY5ul4' \
    --poolName 'ICsCf3eS' \
    --tickId 'Feqr02wz' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'Xk28VnpO' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'K2TDHLz1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'lXvbG2t7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["hokLw7zv", "rBGRd3d2", "JEGUH7s7"]' \
    --endDate 'iEumEZan' \
    --startDate 'uDNdXFZ7' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["HtN8XtQt", "pA9xWf8C", "tYbGwsco"]' \
    --endDate 'aSgrkjuY' \
    --startDate 'Au4Dkn2r' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["Mw001ifQ", "OiZvxmRB", "nFzVCSTD"]' \
    --endDate '1wP1u1Ha' \
    --startDate 'Xl1ofWkO' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["S7sL3HRv", "zkG1YP8a", "31jgFlSR"]' \
    --endDate 'MA9BjjtJ' \
    --startDate 'FTxRURRp' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["ykE2U6un", "MhJxDdML", "WJjSLfbn"]' \
    --region 'trcbmZ55' \
    --endDate 'vOOAVkc1' \
    --startDate 'WMyRVjzu' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["df4Y4hug", "BmT1hS1K", "jntlrWg3"]' \
    --endDate 'TbAonCKA' \
    --startDate 'PU6SZOM8' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["iEgntqQm", "uWM4jZ76", "LrHS0KvS"]' \
    --endDate '3Me6HEqI' \
    --startDate 'ONOdFOWN' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["fraHCKEa", "qCm7ZHEc", "acN3tBxR"]' \
    --endDate 'qUhLyotO' \
    --startDate 'TMqcwidV' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["W3B8e9oc", "MnwZm0dw", "kfYgIlz9"]' \
    --endDate '8X848Vsu' \
    --startDate 'VH1lf0r5' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["f2b1bP2R", "gDsTuy9S", "EMpxqiCW"]' \
    --endDate 'u5Fudw13' \
    --startDate 'm9bmkJoI' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["t0WDWKul", "iRXIBWqC", "4tk5Rur6"]' \
    --endDate '1nreEvD0' \
    --startDate '8LQHXAAk' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "6uzITbvU", "activeAllianceRule": {"max_number": 46, "min_number": 95, "player_max_number": 50, "player_min_number": 73}, "activeMatchingRule": [{"attribute": "egvGQHp7", "criteria": "YNGDzc65", "reference": 0.6076468159466355}, {"attribute": "nuIm5ooz", "criteria": "ph6QYzCQ", "reference": 0.7980119471194855}, {"attribute": "qeZ7eLp2", "criteria": "1Zps2cXH", "reference": 0.7864230752237993}], "function": "zON3Xt6H", "gameMode": "0rNQvL3k", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 80, "matchID": "wCJTZAIh", "namespace": "DFy3CxgU", "remainingPlayersPerTicket": [41, 37, 72], "remainingTickets": 72, "sessionTickID": "HBKmSSgi", "tickID": 94, "ticketID": "P8bJBTms", "timeToMatchSec": 0.8306169575202125, "timestamp": "1975-11-22T00:00:00Z", "unbackfillReason": "DJknjhU4", "unmatchReason": "AjKWzLIS"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "wrWoEaxM", "activeAllianceRule": {"max_number": 11, "min_number": 31, "player_max_number": 26, "player_min_number": 3}, "activeMatchingRule": [{"attribute": "pl45XTeF", "criteria": "D4BHluWC", "reference": 0.7005992805764776}, {"attribute": "ZUg3mllO", "criteria": "PGRXLq3A", "reference": 0.5232617448758321}, {"attribute": "MOKstuhg", "criteria": "j3ZHpllX", "reference": 0.6930870202898558}], "function": "tsLGD5rx", "gameMode": "zBBsmlCl", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 34, "matchID": "2SgzASaK", "namespace": "JKUQVxcR", "remainingPlayersPerTicket": [3, 40, 41], "remainingTickets": 32, "sessionTickID": "XDn9K2ui", "tickID": 93, "ticketID": "vYGN6JIU", "timeToMatchSec": 0.938087216179461, "timestamp": "1997-08-16T00:00:00Z", "unbackfillReason": "fpR2wJvd", "unmatchReason": "kEAHVwI2"}, {"action": "tULgXQRD", "activeAllianceRule": {"max_number": 8, "min_number": 71, "player_max_number": 12, "player_min_number": 53}, "activeMatchingRule": [{"attribute": "HICiJKZz", "criteria": "PdJodacp", "reference": 0.9425028450334275}, {"attribute": "gVhcXEEJ", "criteria": "rFNDu9t5", "reference": 0.8574308476209431}, {"attribute": "WQCPZZQr", "criteria": "TdiNuOQZ", "reference": 0.43620455425919713}], "function": "QwqPMPJP", "gameMode": "cF7Esp0T", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 33, "matchID": "a20Ou1mM", "namespace": "x7HQBZV0", "remainingPlayersPerTicket": [12, 99, 20], "remainingTickets": 5, "sessionTickID": "AnJKC9c0", "tickID": 22, "ticketID": "Ko5Iyooh", "timeToMatchSec": 0.5080399376861469, "timestamp": "1981-03-05T00:00:00Z", "unbackfillReason": "c46EWQIR", "unmatchReason": "7lcEl7Cn"}, {"action": "JLL4X88V", "activeAllianceRule": {"max_number": 52, "min_number": 97, "player_max_number": 75, "player_min_number": 13}, "activeMatchingRule": [{"attribute": "MxbMpInt", "criteria": "kWdKO1IY", "reference": 0.6288160619281319}, {"attribute": "4s3CA6Qf", "criteria": "VLqmThxZ", "reference": 0.34287419937897523}, {"attribute": "YIQbnaFF", "criteria": "lwoqcjH2", "reference": 0.08434452699021233}], "function": "5DTaD8e3", "gameMode": "o3sWOEXk", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 45, "matchID": "keenB7gE", "namespace": "03HlaUpW", "remainingPlayersPerTicket": [56, 70, 74], "remainingTickets": 53, "sessionTickID": "Bwb4GdvX", "tickID": 80, "ticketID": "JSXAM1Gy", "timeToMatchSec": 0.9474256607084222, "timestamp": "1972-09-10T00:00:00Z", "unbackfillReason": "H2nSBFt6", "unmatchReason": "uIotP3qq"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'rq7ThFuf' \
    --limit '68' \
    --offset '38' \
    --endDate 'DMr1aiH7' \
    --startDate 'c4xoGD2k' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'B7OVU6Pc' \
    --limit '65' \
    --offset '50' \
    --endDate 'Havzyh8N' \
    --startDate '2KluQL5C' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE