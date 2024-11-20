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
    --endDate 'fcEemicN' \
    --gameSessionID 'lFpAKyDZ' \
    --limit '67' \
    --offset '37' \
    --order 'QzFDvmzR' \
    --orderBy 'E5q4C3iR' \
    --startDate 'keX3yXCu' \
    --userID 'NWpaz0P4' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'tZryGuEN' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'B1zNjmw0' \
    --limit '15' \
    --offset '49' \
    --order '0O1c9nfu' \
    --orderBy 'o3U4XcJ7' \
    --ticketID 'FUx161oA' \
    --userID 'IRM6c45s' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'cTw5T0FI' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'AANMVFoN' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '10' \
    --order 'XBN2kpgj' \
    --orderBy '7yrcTMbZ' \
    --partyID 'P2CArbys' \
    --userID 'tQbACbYx' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'YCRNacXE' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate '04Zotbpy' \
    --gameMode 'Hl5x85RN' \
    --limit '45' \
    --offset '81' \
    --order 'oPbK7ZM6' \
    --partyID 'zYQibRdt' \
    --region '3Mb3srZ5' \
    --startDate '9z2gOBFz' \
    --userIDs 'EkmTPmzT' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId '6sVWUN1k' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '0' \
    --order 'QZ00wlW2' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["aBgItehe", "wt3Gsrp0", "xI8teRq6"]' \
    --endDate 'iTxWLy8q' \
    --startDate 'izTGuK6l' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'Owiganap' \
    --poolName 'w6IpuPSj' \
    --all 'false' \
    --limit '87' \
    --offset '35' \
    --endDate 'ppI9BpRj' \
    --startDate 'tLrWcLaY' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName '9XYOy810' \
    --poolName '1PonGM1U' \
    --tickId 'Bhi0hIZI' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'smWXpbDw' \
    --poolName 'S2D96rup' \
    --tickId 'TZBEN4K3' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'TBSmiZon' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'HQxBSBPk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'tRldx0WB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["zF2G54cE", "s3Kx1F1d", "QXlxj4JN"]' \
    --endDate 'uS3qIOel' \
    --startDate '1qo8PrKm' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["E4tHCjb0", "uIkpFtbR", "CJKDitLZ"]' \
    --endDate 'FiMQg8nS' \
    --startDate 'AOB0ce7W' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["0cPJMNrd", "NT4lQgdg", "908YW6VN"]' \
    --endDate '1PUP4v9e' \
    --startDate 'z9uvOE5x' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["LWX3Jn1l", "EFaFdR2O", "yFP5PK6k"]' \
    --endDate 'NGlpWy0u' \
    --startDate 'z9BXIaoO' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["QGSvAaoy", "ABW527TS", "hklLk7Ep"]' \
    --region 'JFmROy3c' \
    --endDate 'KufJc5mY' \
    --startDate 'tQy3yobc' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["regTmbJc", "8H2MPP6e", "mesJ4nIC"]' \
    --endDate 'h64IQya9' \
    --startDate 'eV8I8T7x' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["IZHGKYUG", "JBgmJkTE", "CzwHnoCU"]' \
    --endDate 'V8rruJZW' \
    --startDate 'fM2Ea0AN' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["qq7D4xQS", "snonFBmT", "O1E8oAWb"]' \
    --endDate 'AVDfqzkS' \
    --startDate '0Ydwb2yE' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["GXUaGYjZ", "ltRSjX5K", "T0IRN2jJ"]' \
    --endDate 'EqrS9DpX' \
    --startDate 'XPWd8lBF' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["EO8KOoRV", "moHcyBJc", "ue9VSzut"]' \
    --endDate 'gs6pYN4z' \
    --startDate 'vnuSyaDF' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["4LHWAE1n", "SEIoECR5", "eye6saWM"]' \
    --endDate 'fGUYOwpf' \
    --startDate 'pSbDnM1e' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "wPiydXMJ", "activeAllianceRule": {"max_number": 73, "min_number": 62, "player_max_number": 52, "player_min_number": 29}, "activeMatchingRule": [{"attribute": "Ju7tO3ES", "criteria": "2BZlepHO", "reference": 0.5594527349976569}, {"attribute": "uOk8rT2q", "criteria": "zlwCVxF1", "reference": 0.23300087464317443}, {"attribute": "GO9TF7Z5", "criteria": "ogpXNr4v", "reference": 0.7290638185125615}], "function": "w8HvE8Vy", "gameMode": "dThJUrSd", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 43, "matchID": "tPode2jA", "namespace": "pye5oZVk", "remainingPlayersPerTicket": [51, 2, 15], "remainingTickets": 95, "sessionTickID": "W2xU0g0n", "tickID": 39, "ticketID": "Bxw501OT", "timeToMatchSec": 0.044660936900680404, "timestamp": "1996-11-25T00:00:00Z", "unbackfillReason": "HtDW3W9R", "unmatchReason": "W2LCoSFJ"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "V7yqDoCO", "activeAllianceRule": {"max_number": 49, "min_number": 45, "player_max_number": 86, "player_min_number": 60}, "activeMatchingRule": [{"attribute": "e54COb2r", "criteria": "eco32bAC", "reference": 0.7368011482490228}, {"attribute": "z4MKV7IO", "criteria": "aSu3nIpX", "reference": 0.7155808510231456}, {"attribute": "4j60ZsNV", "criteria": "ReaTeGTd", "reference": 0.01935836973648586}], "function": "ZE7R64xG", "gameMode": "snkxlcaO", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 20, "matchID": "9IM3DIKZ", "namespace": "O4nVx2H3", "remainingPlayersPerTicket": [96, 58, 46], "remainingTickets": 72, "sessionTickID": "y0usY4pX", "tickID": 59, "ticketID": "vzPEkU5v", "timeToMatchSec": 0.7914837988780602, "timestamp": "1985-12-21T00:00:00Z", "unbackfillReason": "OHwzOduK", "unmatchReason": "RpUAeiPJ"}, {"action": "3oQWfc2Z", "activeAllianceRule": {"max_number": 96, "min_number": 83, "player_max_number": 73, "player_min_number": 60}, "activeMatchingRule": [{"attribute": "MLUl7rah", "criteria": "uvoszjAt", "reference": 0.543299027107754}, {"attribute": "n0LtNGCW", "criteria": "NtV65OfM", "reference": 0.3219196613337699}, {"attribute": "PMCZLI8J", "criteria": "DejBmYs2", "reference": 0.6236365729356675}], "function": "gQN3QQhy", "gameMode": "0ZEw3oRI", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 69, "matchID": "XlTLAVzE", "namespace": "KOYpNGCn", "remainingPlayersPerTicket": [3, 33, 65], "remainingTickets": 59, "sessionTickID": "k8QjCiYE", "tickID": 75, "ticketID": "fdeILpkX", "timeToMatchSec": 0.4369912145290754, "timestamp": "1992-05-28T00:00:00Z", "unbackfillReason": "317LH5af", "unmatchReason": "Hx58fIMq"}, {"action": "ciAPHGj5", "activeAllianceRule": {"max_number": 58, "min_number": 29, "player_max_number": 38, "player_min_number": 40}, "activeMatchingRule": [{"attribute": "KAoCg85k", "criteria": "XrlJvBne", "reference": 0.536184925531005}, {"attribute": "5a3q3W9E", "criteria": "ZdRlQsJm", "reference": 0.8820015014406025}, {"attribute": "BXURkqoH", "criteria": "JCpEH75s", "reference": 0.9119400652702633}], "function": "UW2qx9fy", "gameMode": "ZWoPFDnc", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 30, "matchID": "LNztMT8d", "namespace": "aZ7arGB6", "remainingPlayersPerTicket": [21, 85, 29], "remainingTickets": 4, "sessionTickID": "4D9uDD6M", "tickID": 66, "ticketID": "oSUL7EqR", "timeToMatchSec": 0.6583574984188771, "timestamp": "1981-05-09T00:00:00Z", "unbackfillReason": "GR4QC7BY", "unmatchReason": "S0FGHa4l"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'SQie8vkE' \
    --limit '8' \
    --offset '86' \
    --endDate 'svQ5ntdi' \
    --startDate 'eBi7Dwqg' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'Meva75HZ' \
    --limit '3' \
    --offset '41' \
    --endDate 'n6MiP2g4' \
    --startDate 'cSKvrqk3' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE