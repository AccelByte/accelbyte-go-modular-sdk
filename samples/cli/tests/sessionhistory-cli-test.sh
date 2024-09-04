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
    --body '{"logLevel": "warning"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'KtWTHsI6' \
    --gameSessionID 'i7hxuFWs' \
    --limit '84' \
    --offset '36' \
    --order 'H674o6L0' \
    --orderBy 'OeywYoz0' \
    --startDate 'nHZVE1rC' \
    --userID 'NTuPBfC8' \
    > test.out 2>&1
eval_tap $? 6 'AdminQueryGameSessionDetail' test.out

#- 7 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'WqvGHmnm' \
    > test.out 2>&1
eval_tap $? 7 'GetGameSessionDetail' test.out

#- 8 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'J9pFXaJY' \
    --limit '85' \
    --offset '62' \
    --order '4bJe8MAR' \
    --orderBy 'u9Qj2Rzi' \
    --ticketID 'Ujh5tATA' \
    --userID 'dees5O6a' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryMatchmakingDetail' test.out

#- 9 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'RPAdEArX' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetMatchmakingDetailBySessionID' test.out

#- 10 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'Mp6MuuNH' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetMatchmakingDetailByTicketID' test.out

#- 11 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '51' \
    --order '5u43grIV' \
    --orderBy 'xrT7eby3' \
    --partyID 'CMIkX7hW' \
    --userID 'v6acOV7Z' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryPartyDetail' test.out

#- 12 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'bSthf9r6' \
    > test.out 2>&1
eval_tap $? 12 'GetPartyDetail' test.out

#- 13 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'biPfVBMw' \
    --gameMode 'bPvY7bMm' \
    --limit '88' \
    --offset '50' \
    --order '3Znr8OWf' \
    --partyID 'QPiiBQVf' \
    --region 'bOrom6Ht' \
    --startDate 'aQjDhGcF' \
    --userIDs 'cGC7FhcT' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryTicketDetail' test.out

#- 14 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'U99yLtZd' \
    > test.out 2>&1
eval_tap $? 14 'AdminTicketDetailGetByTicketID' test.out

#- 15 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '79' \
    --order 'G3II0DWw' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessionMe' test.out

#- 16 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["cv4S6ZMs", "RTYxPzP8", "SBRkS8SI"]' \
    --endDate 'xz59YH9X' \
    --startDate 'SMhV9TEL' \
    > test.out 2>&1
eval_tap $? 16 'QueryXrayMatchPool' test.out

#- 17 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'lOhZTOdb' \
    --poolName 'Y60CSSXN' \
    --all 'true' \
    --limit '4' \
    --offset '31' \
    --endDate 'v1BBIlLm' \
    --startDate 'nBn3DkZo' \
    > test.out 2>&1
eval_tap $? 17 'QueryDetailTickMatchPool' test.out

#- 18 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'pns7xllS' \
    --poolName 'WANdExVu' \
    --tickId '2OnIT0bJ' \
    > test.out 2>&1
eval_tap $? 18 'QueryDetailTickMatchPoolMatches' test.out

#- 19 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'vea8Kds4' \
    --poolName 'TEvsWSCV' \
    --tickId 'qNZUAQx6' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPoolTicket' test.out

#- 20 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'p11LRGsI' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 20 'QueryMatchHistories' test.out

#- 21 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'q4g0rWpy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'QueryMatchTicketHistories' test.out

#- 22 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'zjFwqnhp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'QueryXrayMatch' test.out

#- 23 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["1H73ofPO", "Igmjc5Ji", "mUfVm1nE"]' \
    --endDate 'uUO2M5bz' \
    --startDate '6tCDIhA4' \
    > test.out 2>&1
eval_tap $? 23 'QueryAcquiringDS' test.out

#- 24 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["Lw0Ks9pB", "AkoNMssO", "8n8C2bCX"]' \
    --endDate 'eT5jIvVf' \
    --startDate 'Rjgh7oec' \
    > test.out 2>&1
eval_tap $? 24 'QueryAcquiringDSWaitTimeAvg' test.out

#- 25 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["otiGWeKp", "aof9yrgv", "zikHcXcR"]' \
    --endDate 'GOY3JA9y' \
    --startDate 'oPUJPPpS' \
    > test.out 2>&1
eval_tap $? 25 'QueryMatchLengthDurationpAvg' test.out

#- 26 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["LankKQqJ", "9yqfYLsr", "VPYKuoif"]' \
    --endDate 'JLkf5LDx' \
    --startDate 'oV9IYkGm' \
    > test.out 2>&1
eval_tap $? 26 'QueryMatchLengthDurationp99' test.out

#- 27 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["zhWGxMjl", "ZbDRlWFm", "AGqfOhNM"]' \
    --region '1fYU25RH' \
    --endDate 'Tly0jqw3' \
    --startDate 'OyumeYyx' \
    > test.out 2>&1
eval_tap $? 27 'QueryTotalActiveSession' test.out

#- 28 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["mxFfmfiI", "8s7w791e", "WqdcVq6y"]' \
    --endDate 'SQgByFm4' \
    --startDate 'yLxiqe8O' \
    > test.out 2>&1
eval_tap $? 28 'QueryTotalMatchmakingMatch' test.out

#- 29 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["GQLMzEct", "Ny6YIFF7", "mgpCh6OV"]' \
    --endDate 'PlllzYOk' \
    --startDate 'n00wgHtJ' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalPlayerPersession' test.out

#- 30 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["xDOfUJ0a", "Oe24ih3Y", "2KgovXub"]' \
    --endDate 'aROUmk6C' \
    --startDate 'WbIgNaem' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingCanceled' test.out

#- 31 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["kGutYeef", "O8b9kcN8", "pPrL7S2a"]' \
    --endDate 'oFjjyb68' \
    --startDate 'mNqtcHeQ' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalMatchmakingCreated' test.out

#- 32 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["3aLypFiv", "MIUyUOCo", "quaBwvk8"]' \
    --endDate 'eRWjm7qp' \
    --startDate 't1Y5UbOZ' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingExpired' test.out

#- 33 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["Dansx2Zp", "5H4UVmRF", "WRmL0XUV"]' \
    --endDate 'IdurQTTy' \
    --startDate 'YQLbOWb8' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingMatchTicket' test.out

#- 34 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "jNmn18A5", "activeAllianceRule": {"max_number": 46, "min_number": 85, "player_max_number": 42, "player_min_number": 99}, "activeMatchingRule": [{"attribute": "xyggKsyN", "criteria": "IkupYkWi", "reference": 0.8083808057147154}, {"attribute": "u9UWoZQv", "criteria": "G7xaOK4m", "reference": 0.2880785756774874}, {"attribute": "K1Un49kC", "criteria": "3Gxjjhhk", "reference": 0.8809602806540753}], "function": "nZbLyJev", "gameMode": "eDxOcCo7", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 2, "matchID": "FDVqOFlP", "namespace": "fD1kOYXj", "partyID": "zoTGaCK8", "remainingPlayersPerTicket": [10, 32, 36], "remainingTickets": 46, "sessionTickID": "twrtUvsY", "tickID": 52, "timeToMatchSec": 0.9022057969117936, "timestamp": "1983-04-01T00:00:00Z", "unbackfillReason": "Y2stgvUn", "unmatchReason": "ciqjKbn4"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateXrayTicketObservability' test.out

#- 35 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "9GllcHCe", "activeAllianceRule": {"max_number": 72, "min_number": 77, "player_max_number": 81, "player_min_number": 15}, "activeMatchingRule": [{"attribute": "3tOtMpXu", "criteria": "M8Q9jIeb", "reference": 0.47052127388401965}, {"attribute": "vv3kdoVF", "criteria": "NqKTduy6", "reference": 0.8834663385070866}, {"attribute": "iMZFB2zV", "criteria": "JhCmwfHF", "reference": 0.08990162279192926}], "function": "H9hDPt6S", "gameMode": "ws5dlnHs", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 6, "matchID": "vZrHm6Ns", "namespace": "h4s9AYXC", "partyID": "j0xwSHCf", "remainingPlayersPerTicket": [74, 19, 81], "remainingTickets": 29, "sessionTickID": "qlYyUi49", "tickID": 43, "timeToMatchSec": 0.9839634148733997, "timestamp": "1997-06-28T00:00:00Z", "unbackfillReason": "WXqoVJIQ", "unmatchReason": "S1BvTNL9"}, {"action": "jfqwBXG0", "activeAllianceRule": {"max_number": 10, "min_number": 45, "player_max_number": 60, "player_min_number": 55}, "activeMatchingRule": [{"attribute": "RPPqT0Ie", "criteria": "ZoQTeFGy", "reference": 0.3812369689574485}, {"attribute": "7p3f9GiY", "criteria": "wkv1jvtE", "reference": 0.21339612782100137}, {"attribute": "vGZ0C6Ho", "criteria": "REph7v2x", "reference": 0.04322990703366725}], "function": "2QCMwIrp", "gameMode": "UroDVVYf", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 82, "matchID": "qZBF9Sb8", "namespace": "QBftHLwz", "partyID": "rVeCPTkb", "remainingPlayersPerTicket": [92, 13, 42], "remainingTickets": 13, "sessionTickID": "B39KbwTV", "tickID": 5, "timeToMatchSec": 0.5363457024082396, "timestamp": "1986-02-11T00:00:00Z", "unbackfillReason": "HokJsfsX", "unmatchReason": "6xtFvEwE"}, {"action": "a6rqcl0b", "activeAllianceRule": {"max_number": 88, "min_number": 56, "player_max_number": 95, "player_min_number": 67}, "activeMatchingRule": [{"attribute": "Eymy1Wc4", "criteria": "fxrwCYBT", "reference": 0.8515478422501822}, {"attribute": "jjxjtJw9", "criteria": "cFBJp4vm", "reference": 0.637752938637466}, {"attribute": "TyZRnhSc", "criteria": "1oI25KcS", "reference": 0.041745799966628194}], "function": "34Il3zYL", "gameMode": "e9IbV3Qk", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 18, "matchID": "8QofVKuE", "namespace": "8xONyooZ", "partyID": "v1coQwtD", "remainingPlayersPerTicket": [39, 68, 14], "remainingTickets": 5, "sessionTickID": "bQXe6ZjH", "tickID": 55, "timeToMatchSec": 0.6088721466000434, "timestamp": "1994-08-29T00:00:00Z", "unbackfillReason": "dS6gomjL", "unmatchReason": "XoMYVOD8"}]}' \
    > test.out 2>&1
eval_tap $? 35 'CreateXrayBulkTicketObservability' test.out

#- 36 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'VSyFaosj' \
    --limit '70' \
    --offset '14' \
    --endDate 'vRoWKYcM' \
    --startDate 'o8SdejdA' \
    > test.out 2>&1
eval_tap $? 36 'QueryXrayTimelineByTicketID' test.out

#- 37 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'JerVqzzp' \
    --limit '39' \
    --offset '48' \
    --endDate '9ZDKcowZ' \
    --startDate 'CjBTIrbr' \
    > test.out 2>&1
eval_tap $? 37 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE