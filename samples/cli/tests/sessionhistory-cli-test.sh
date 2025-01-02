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
    --body '{"logLevel": "info"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'ImDZCRU4' \
    --gameSessionID 'kgBJ0lwL' \
    --limit '63' \
    --offset '78' \
    --order '3rXentXn' \
    --orderBy '99gascE9' \
    --startDate 'PRB3Icsi' \
    --userID 'YXXbAntA' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'WWNP0Vnn' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'UjCZNztp' \
    --limit '63' \
    --offset '59' \
    --order 'UUkeKJ7t' \
    --orderBy 'eG9N6CdN' \
    --ticketID 'jvl1SPbf' \
    --userID 'hONEanY4' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'axTiaU8e' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'fEUfkxER' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '67' \
    --order 'Cuhi03RX' \
    --orderBy '7KHEfkom' \
    --partyID 'UsdToMGm' \
    --userID 'JQbaDf5e' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'UuGv2QKw' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'LbO52R9f' \
    --gameMode '2S2d9Q1u' \
    --limit '78' \
    --offset '86' \
    --order 'QNb6KytL' \
    --partyID '6q9fequP' \
    --region 'BEWMAQtl' \
    --startDate 'CPURPeWz' \
    --userIDs 'JckhI9yv' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'HRU3Jh4H' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '97' \
    --order 'Jw9X4qRB' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["G5BEzY4Q", "Js7emKBt", "SBrttF1t"]' \
    --endDate 'ZRX2njZV' \
    --startDate 'RYzE7HUY' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'sbxXIF7S' \
    --poolName 'aO5B4KO1' \
    --all 'true' \
    --limit '66' \
    --offset '57' \
    --endDate '1DbONw6R' \
    --startDate '9lohQDbT' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'AumKYkrg' \
    --poolName '1IlLhwRF' \
    --tickId '4FtLWjlR' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'DCIkysrn' \
    --poolName 'HRSeZgL9' \
    --tickId '7bRj1kWd' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'n3B2AjZH' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'E4v9TUQx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'XL4GdGxN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["oGYNnvUM", "iNcUY1Ke", "tLMEn9C1"]' \
    --endDate 'yk7PV8zq' \
    --startDate '3j0RhmT2' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["ViZkNbTW", "mWJDI1hO", "b8V9Khpl"]' \
    --endDate '95ClTadL' \
    --startDate 'JoaeBPXM' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["iX66Tmyy", "t0O5X5QZ", "DndyMkyu"]' \
    --endDate 'kX24MPE3' \
    --startDate '6tZpyMuR' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["Mn3nONdj", "Micz051J", "vkbb8eyX"]' \
    --endDate 'jqiOh98o' \
    --startDate 'HDkD83Zy' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["BOM7LBhD", "Ivw0YXU6", "OsjSbXBq"]' \
    --region 'LDDLF7pd' \
    --endDate 'MqHCNVow' \
    --startDate 'PehgXdAI' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["sVbVgR5p", "1hPbMXFv", "cPmMhXuI"]' \
    --endDate 'zhA3mQ4A' \
    --startDate 'G9tMNzw4' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["9JJhh3cN", "bVbIEl3T", "2fhQroFq"]' \
    --endDate 'DKMBfI6o' \
    --startDate '3G8XL8HO' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["HgoWf4dT", "KIpadmTt", "N8bkIYj3"]' \
    --endDate 'UxM03OOK' \
    --startDate '1VipZ0qk' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["G67rLSTz", "rlkvROIU", "wZzQUVfD"]' \
    --endDate 'g2xmFCnV' \
    --startDate 'DKxhGLeI' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["tzGtSmvY", "pUAdWwPr", "NpM6KEWz"]' \
    --endDate 'VkGmsojH' \
    --startDate 'Kypgya4f' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["nJKXvjWq", "0RHXpZ9G", "ldLB0t0Q"]' \
    --endDate 'FaP9MA0B' \
    --startDate 'N7VytxWE' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "6bO652VG", "activeAllianceRule": {"max_number": 77, "min_number": 53, "player_max_number": 32, "player_min_number": 52}, "activeMatchingRule": [{"attribute": "q15IqVRG", "criteria": "1PAV1awE", "reference": 0.592051069472029}, {"attribute": "yHOMgkaJ", "criteria": "6twA0Ev0", "reference": 0.11492332139083139}, {"attribute": "yoHM2X7h", "criteria": "bCASbVCl", "reference": 0.7406119663259678}], "function": "mjYb2ZJQ", "gameMode": "3Gdl8zZ5", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 88, "matchID": "6otL5CBJ", "namespace": "b406UKjH", "remainingPlayersPerTicket": [88, 94, 76], "remainingTickets": 56, "sessionTickID": "r8ji1a46", "tickID": 94, "ticketID": "eoEUlXDI", "timeToMatchSec": 0.5078909950529145, "timestamp": "1976-12-27T00:00:00Z", "unbackfillReason": "Cr5aZ2Jt", "unmatchReason": "uV03ZuRV"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "9M45AoKv", "activeAllianceRule": {"max_number": 5, "min_number": 77, "player_max_number": 76, "player_min_number": 86}, "activeMatchingRule": [{"attribute": "AoC0gvlH", "criteria": "HVbDR9Sx", "reference": 0.4329630658428384}, {"attribute": "OSWt8XD5", "criteria": "6FBRVcGK", "reference": 0.10948550289852044}, {"attribute": "TXRVCtiv", "criteria": "B5PQ5BEt", "reference": 0.9664374945797861}], "function": "Ql0SXGvi", "gameMode": "sVzZJ9QT", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 100, "matchID": "YtRZSp5y", "namespace": "Yg2drdws", "remainingPlayersPerTicket": [92, 55, 77], "remainingTickets": 39, "sessionTickID": "QjLrGV6l", "tickID": 50, "ticketID": "MGLuCeFI", "timeToMatchSec": 0.5512623161190816, "timestamp": "1983-10-10T00:00:00Z", "unbackfillReason": "7TAonWSo", "unmatchReason": "W28MRkUO"}, {"action": "PKcdmFSw", "activeAllianceRule": {"max_number": 45, "min_number": 91, "player_max_number": 63, "player_min_number": 18}, "activeMatchingRule": [{"attribute": "KrPjwh95", "criteria": "FknSTX3r", "reference": 0.7773062639221864}, {"attribute": "hpSimssr", "criteria": "6W3MeQL7", "reference": 0.02165023695382029}, {"attribute": "hhaZCzgc", "criteria": "XUoktAEn", "reference": 0.9020371252132483}], "function": "wuZf9uCJ", "gameMode": "ljpp2Phy", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 8, "matchID": "7BBOiV44", "namespace": "ZtYbzPvl", "remainingPlayersPerTicket": [5, 98, 84], "remainingTickets": 76, "sessionTickID": "Cb8wUxvH", "tickID": 71, "ticketID": "OMmwFQRA", "timeToMatchSec": 0.18972200502880565, "timestamp": "1997-05-17T00:00:00Z", "unbackfillReason": "jaQg8guP", "unmatchReason": "ab7zHkf5"}, {"action": "LAJ915O2", "activeAllianceRule": {"max_number": 39, "min_number": 25, "player_max_number": 0, "player_min_number": 27}, "activeMatchingRule": [{"attribute": "i3THbr60", "criteria": "oFPESkzO", "reference": 0.38909953332074165}, {"attribute": "SGOPxiZ4", "criteria": "Utxrxpft", "reference": 0.9063607443048676}, {"attribute": "0pnIvULd", "criteria": "ksNSbItH", "reference": 0.37575898464779267}], "function": "toXDdq2t", "gameMode": "vVHqidLM", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 18, "matchID": "j8tEQtiI", "namespace": "PboSbYjT", "remainingPlayersPerTicket": [76, 4, 47], "remainingTickets": 64, "sessionTickID": "6FrNuA8G", "tickID": 65, "ticketID": "YFxqlGJL", "timeToMatchSec": 0.8632420059567427, "timestamp": "1986-11-25T00:00:00Z", "unbackfillReason": "DjKXBS8V", "unmatchReason": "wWJ8pEFX"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId '9M6ZZtSb' \
    --limit '42' \
    --offset '36' \
    --endDate 'eMvqzI6Y' \
    --startDate 'AXuWlqoE' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'B0VfLmLi' \
    --limit '6' \
    --offset '94' \
    --endDate 'GQQZ02eE' \
    --startDate 'YOvipg3c' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE