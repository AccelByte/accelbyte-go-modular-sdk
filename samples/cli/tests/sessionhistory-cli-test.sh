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
    --gameSessionID 'kiQnUImY' \
    --limit '54' \
    --offset '89' \
    --order 'Mh521ZsN' \
    --orderBy 'SUoeQlmz' \
    --userID 'mKHfUCVA' \
    > test.out 2>&1
eval_tap $? 4 'AdminQueryGameSessionDetail' test.out

#- 5 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'kVBswqSZ' \
    > test.out 2>&1
eval_tap $? 5 'GetGameSessionDetail' test.out

#- 6 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'gCN5MyN3' \
    --limit '42' \
    --offset '84' \
    --order 'k3kcuMoZ' \
    --orderBy 'PJaPu5d7' \
    --ticketID 'EBXbaqky' \
    --userID 'nGpUoVTV' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryMatchmakingDetail' test.out

#- 7 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'uRrkDsdG' \
    > test.out 2>&1
eval_tap $? 7 'AdminGetMatchmakingDetailBySessionID' test.out

#- 8 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'tQnVaFIn' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetMatchmakingDetailByTicketID' test.out

#- 9 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '56' \
    --order 'uLvzvCXl' \
    --orderBy 'Qi3rCSzW' \
    --partyID 'q9SrfGSg' \
    --userID '4ArFoesC' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryPartyDetail' test.out

#- 10 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'KuA3lSyr' \
    > test.out 2>&1
eval_tap $? 10 'GetPartyDetail' test.out

#- 11 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'PP4LX07S' \
    --gameMode 'oOYAbdHo' \
    --limit '0' \
    --offset '76' \
    --order 'sZxg2uP3' \
    --partyID 'qjnj0EcA' \
    --region 'SrvWj0U7' \
    --startDate 'OgoB4buO' \
    --userIDs 'q8nEJ4Bk' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryTicketDetail' test.out

#- 12 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'k3GE5CGW' \
    > test.out 2>&1
eval_tap $? 12 'AdminTicketDetailGetByTicketID' test.out

#- 13 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName 'rWvQ5VIA' \
    --endDate 'YNm7GST1' \
    --startDate 'XFsnRqEN' \
    > test.out 2>&1
eval_tap $? 13 'QueryXrayMatchPool' test.out

#- 14 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'cKXpcOn9' \
    --poolName 'G0r2cEvg' \
    --all 'true' \
    --limit '62' \
    --offset '56' \
    --endDate 'sixcV0G8' \
    --startDate 'a0k9YRNW' \
    > test.out 2>&1
eval_tap $? 14 'QueryDetailTickMatchPool' test.out

#- 15 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'gldCHfrL' \
    --poolName 'f91RAd0U' \
    --tickId 'EldaPtPT' \
    > test.out 2>&1
eval_tap $? 15 'QueryDetailTickMatchPoolMatches' test.out

#- 16 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'dtXfabeU' \
    --poolName 'BYt7htoW' \
    --tickId '6hBpZENC' \
    > test.out 2>&1
eval_tap $? 16 'QueryDetailTickMatchPoolTicket' test.out

#- 17 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId '5GTN5KRa' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 17 'QueryMatchHistories' test.out

#- 18 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'asWn3L87' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'QueryMatchTicketHistories' test.out

#- 19 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'gglvNlRi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'QueryXrayMatch' test.out

#- 20 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --endDate '39kngBMB' \
    --startDate '8vdCJ9XC' \
    > test.out 2>&1
eval_tap $? 20 'QueryAcquiringDS' test.out

#- 21 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'O0geBiCZ' \
    --startDate 'QIXIe180' \
    > test.out 2>&1
eval_tap $? 21 'QueryAcquiringDSWaitTimeAvg' test.out

#- 22 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --endDate 'qHPgRN7J' \
    --startDate 'LEemKOy5' \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchLengthDurationpAvg' test.out

#- 23 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --endDate 'BgrP916z' \
    --startDate 'xhT50hZE' \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchLengthDurationp99' test.out

#- 24 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --region 'psTqRWCT' \
    --endDate '2lwFvLva' \
    --startDate 'heQHzzqZ' \
    > test.out 2>&1
eval_tap $? 24 'QueryTotalActiveSession' test.out

#- 25 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '01qZ21bW' \
    --endDate 'SqvIVkyp' \
    --startDate 'nJ20zVx1' \
    > test.out 2>&1
eval_tap $? 25 'QueryTotalMatchmakingMatch' test.out

#- 26 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --endDate 'to8zNxsP' \
    --startDate 'GaRSbskA' \
    > test.out 2>&1
eval_tap $? 26 'QueryTotalPlayerPersession' test.out

#- 27 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool 'yvn4YMnK' \
    --endDate 'Kp7TCxht' \
    --startDate 'QbsFPI4X' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalMatchmakingCanceled' test.out

#- 28 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool 'r6oZmtOB' \
    --endDate '2DNuWuJM' \
    --startDate 'AceebiPe' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingCreated' test.out

#- 29 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool 'yVOjdnak' \
    --endDate 'nmRzNAPo' \
    --startDate 'HYekCUyr' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalMatchmakingExpired' test.out

#- 30 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool 'l8rP3OkJ' \
    --endDate 'm397rQWX' \
    --startDate 'znLAahlO' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatchTicket' test.out

#- 31 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'RzL22bWw' \
    --limit '26' \
    --offset '48' \
    --endDate 'RqVoEsQH' \
    --startDate 'XtIzud3z' \
    > test.out 2>&1
eval_tap $? 31 'QueryXrayTimelineByTicketID' test.out

#- 32 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'EsFwJOam' \
    --limit '64' \
    --offset '19' \
    --endDate 'e0MLgRqs' \
    --startDate 'ulV32dMI' \
    > test.out 2>&1
eval_tap $? 32 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE