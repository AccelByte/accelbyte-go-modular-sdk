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
echo "1..32"

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

#- 4 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'FUmHSzr2' \
    --limit '84' \
    --offset '14' \
    --order 'F1l4Eix3' \
    --orderBy '80TYkF6t' \
    --userID 'YrJtUcvy' \
    > test.out 2>&1
eval_tap $? 4 'AdminQueryGameSessionDetail' test.out

#- 5 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'peNoTn45' \
    > test.out 2>&1
eval_tap $? 5 'GetGameSessionDetail' test.out

#- 6 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'UFfiKdhL' \
    --limit '78' \
    --offset '81' \
    --order 'VlciYHQd' \
    --orderBy 'TtDpBSDY' \
    --ticketID '3RxO32bz' \
    --userID '21aHq2EP' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryMatchmakingDetail' test.out

#- 7 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'G5AAR9in' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetMatchmakingDetailBySessionID' test.out

#- 8 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'lvcPCuXh' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetMatchmakingDetailByTicketID' test.out

#- 9 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '48' \
    --order 'cOwpD741' \
    --orderBy 'qCJ1Bspw' \
    --partyID 'UKuTGLTQ' \
    --userID 'a7FSyFJH' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryPartyDetail' test.out

#- 10 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'Si8UEmcL' \
    > test.out 2>&1
eval_tap $? 10 'GetPartyDetail' test.out

#- 11 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'jmT9mzpc' \
    --gameMode 'uJldWgQV' \
    --limit '92' \
    --offset '4' \
    --order 'GKUmVABt' \
    --partyID 'S6IU2o1W' \
    --region 'Cf7t4zqr' \
    --startDate 'k5nSRep3' \
    --userIDs 'tvvDj6QY' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryTicketDetail' test.out

#- 12 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'a0aYh0pf' \
    > test.out 2>&1
eval_tap $? 12 'AdminTicketDetailGetByTicketID' test.out

#- 13 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '9Ul6ADl8' \
    --endDate 'ZaTUwRNa' \
    --startDate 's43dlhob' \
    > test.out 2>&1
eval_tap $? 13 'QueryXrayMatchPool' test.out

#- 14 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'dp6XihPI' \
    --poolName 'MUsNCV6k' \
    --all 'true' \
    --limit '64' \
    --offset '38' \
    --endDate 'zOtVCJGB' \
    --startDate 'OR6Ytjqn' \
    > test.out 2>&1
eval_tap $? 14 'QueryDetailTickMatchPool' test.out

#- 15 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'RT0Aydk0' \
    --poolName 'rg5qkcXw' \
    --tickId 'CO7OYdTX' \
    > test.out 2>&1
eval_tap $? 15 'QueryDetailTickMatchPoolMatches' test.out

#- 16 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'pe1UrUZu' \
    --poolName '4yvQVvbG' \
    --tickId 'et3uRDIE' \
    > test.out 2>&1
eval_tap $? 16 'QueryDetailTickMatchPoolTicket' test.out

#- 17 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'o2UyOVxv' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 17 'QueryMatchHistories' test.out

#- 18 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'uURSVV2x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'QueryMatchTicketHistories' test.out

#- 19 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'QNnilm1z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'QueryXrayMatch' test.out

#- 20 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --endDate 'ge6Ov9LM' \
    --startDate 'NzGzAOOV' \
    > test.out 2>&1
eval_tap $? 20 'QueryAcquiringDS' test.out

#- 21 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'nOVbcz7E' \
    --startDate '4zHTUGnD' \
    > test.out 2>&1
eval_tap $? 21 'QueryAcquiringDSWaitTimeAvg' test.out

#- 22 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'ksTNtYlk' \
    --startDate 'JyQrAjVp' \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchLengthDurationpAvg' test.out

#- 23 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --endDate 'ARF3JrFp' \
    --startDate 'v67Nit5f' \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchLengthDurationp99' test.out

#- 24 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --region 'bLqbPqWZ' \
    --endDate 'hDajjR8v' \
    --startDate 'nZHkVKR7' \
    > test.out 2>&1
eval_tap $? 24 'QueryTotalActiveSession' test.out

#- 25 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool 'xOt2a6jg' \
    --endDate 'uBRAh52h' \
    --startDate 'rQebGsnT' \
    > test.out 2>&1
eval_tap $? 25 'QueryTotalMatchmakingMatch' test.out

#- 26 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --endDate 'GTr0vAaO' \
    --startDate 'T7TEvPNr' \
    > test.out 2>&1
eval_tap $? 26 'QueryTotalPlayerPersession' test.out

#- 27 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool 'jTtHosAv' \
    --endDate 'eBKzPOY2' \
    --startDate 'McAbnqSK' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalMatchmakingCanceled' test.out

#- 28 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool 'owAjQF1k' \
    --endDate 'ctdRWoqX' \
    --startDate 'CFfNmllb' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingCreated' test.out

#- 29 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '7Le3g5S1' \
    --endDate 'uZHmXpbe' \
    --startDate 'cWrf2SQN' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalMatchmakingExpired' test.out

#- 30 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool 'iXYh8EsE' \
    --endDate 'Lhoakimt' \
    --startDate 'wedxAOD2' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatchTicket' test.out

#- 31 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'gGjkmmBq' \
    --limit '37' \
    --offset '19' \
    --endDate 'pgn3FA1Y' \
    --startDate 'Eu6L88be' \
    > test.out 2>&1
eval_tap $? 31 'QueryXrayTimelineByTicketID' test.out

#- 32 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'ANOmcrMd' \
    --limit '66' \
    --offset '43' \
    --endDate 'QTAfaPCJ' \
    --startDate 'qUlt4Qgn' \
    > test.out 2>&1
eval_tap $? 32 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE