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
    --body '{"SESSION_DELETION_GRACE_PERIOD": 91}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateEnvConfig' test.out

#- 6 AdminGetLogConfig
samples/cli/sample-apps Sessionhistory adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 6 'AdminGetLogConfig' test.out

#- 7 AdminPatchUpdateLogConfig
samples/cli/sample-apps Sessionhistory adminPatchUpdateLogConfig \
    --body '{"logLevel": "info"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminPatchUpdateLogConfig' test.out

#- 8 AdminQueryGameSessionDetail
samples/cli/sample-apps Sessionhistory adminQueryGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --completedOnly 'PVKIH9BP' \
    --configurationName 'IpCPEZCy' \
    --dsPodName 'qGQQo0Jw' \
    --endDate 'EcYHPPEp' \
    --gameSessionID '1KV3ofB6' \
    --isPersistent 'yxQHApzp' \
    --joinability 'mmyT6kQR' \
    --limit '82' \
    --matchPool 'b8XKcSON' \
    --offset '15' \
    --order 'vFgKJpRx' \
    --orderBy '75DIimsO' \
    --startDate 'kXjoCbCz' \
    --statusV2 'DBTOVvP1' \
    --userID 'maB41NWk' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryGameSessionDetail' test.out

#- 9 GetGameSessionDetail
samples/cli/sample-apps Sessionhistory getGameSessionDetail \
    --namespace $AB_NAMESPACE \
    --sessionId 'NifxWzxC' \
    > test.out 2>&1
eval_tap $? 9 'GetGameSessionDetail' test.out

#- 10 AdminQueryMatchmakingDetail
samples/cli/sample-apps Sessionhistory adminQueryMatchmakingDetail \
    --namespace $AB_NAMESPACE \
    --gameSessionID 'gToItHEh' \
    --limit '11' \
    --offset '30' \
    --order 'pYJjXgh2' \
    --orderBy 'UXUOd0OH' \
    --ticketID 'pPufu6ss' \
    --userID 'to7mVLhs' \
    > test.out 2>&1
eval_tap $? 10 'AdminQueryMatchmakingDetail' test.out

#- 11 AdminGetMatchmakingDetailBySessionID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailBySessionID \
    --namespace $AB_NAMESPACE \
    --sessionId 'E41JlF3S' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetMatchmakingDetailBySessionID' test.out

#- 12 AdminGetMatchmakingDetailByTicketID
samples/cli/sample-apps Sessionhistory adminGetMatchmakingDetailByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'kmVWuucJ' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetMatchmakingDetailByTicketID' test.out

#- 13 AdminQueryPartyDetail
samples/cli/sample-apps Sessionhistory adminQueryPartyDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'MNjfomZB' \
    --joinability 'cqcOyIKG' \
    --leaderID '23iJ0wDw' \
    --limit '88' \
    --offset '54' \
    --order '8MFWJbLF' \
    --orderBy 'KHHdxIji' \
    --partyID 'pJApeEJH' \
    --startDate 'E5VG7TAo' \
    --userID 'hc4FSoT8' \
    > test.out 2>&1
eval_tap $? 13 'AdminQueryPartyDetail' test.out

#- 14 GetPartyDetail
samples/cli/sample-apps Sessionhistory getPartyDetail \
    --namespace $AB_NAMESPACE \
    --sessionId '2CO8d5RW' \
    > test.out 2>&1
eval_tap $? 14 'GetPartyDetail' test.out

#- 15 AdminQueryTicketDetail
samples/cli/sample-apps Sessionhistory adminQueryTicketDetail \
    --namespace $AB_NAMESPACE \
    --endDate 'mOBe4rZi' \
    --gameMode 'zgmFIbsz' \
    --limit '28' \
    --offset '100' \
    --order 'wwsnnoWv' \
    --partyID 'IQ3kXOQW' \
    --region 'kJF4VlYp' \
    --startDate 'E6JLDY1N' \
    --userIDs 'hHDYV1Y7' \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryTicketDetail' test.out

#- 16 AdminTicketDetailGetByTicketID
samples/cli/sample-apps Sessionhistory adminTicketDetailGetByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'rpoXEH2g' \
    > test.out 2>&1
eval_tap $? 16 'AdminTicketDetailGetByTicketID' test.out

#- 17 PublicQueryGameSessionMe
samples/cli/sample-apps Sessionhistory publicQueryGameSessionMe \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '79' \
    --order 'ZChu1V5D' \
    > test.out 2>&1
eval_tap $? 17 'PublicQueryGameSessionMe' test.out

#- 18 QueryXrayMatchPool
samples/cli/sample-apps Sessionhistory queryXrayMatchPool \
    --namespace $AB_NAMESPACE \
    --poolName '["d5EgPVca", "D2msm9jD", "t0sciCiY"]' \
    --endDate 'XZOXCSLd' \
    --startDate 'pMHl92TB' \
    > test.out 2>&1
eval_tap $? 18 'QueryXrayMatchPool' test.out

#- 19 QueryDetailTickMatchPool
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPool \
    --namespace $AB_NAMESPACE \
    --podName 'WHubgZTY' \
    --poolName 'tKi8Fehz' \
    --all 'false' \
    --limit '75' \
    --offset '80' \
    --endDate 'aMRFMS5z' \
    --startDate 'fL0YDeYK' \
    > test.out 2>&1
eval_tap $? 19 'QueryDetailTickMatchPool' test.out

#- 20 QueryDetailTickMatchPoolMatches
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolMatches \
    --namespace $AB_NAMESPACE \
    --podName 'qA1KAk5O' \
    --poolName 'nftdyNVu' \
    --tickId 's5eBLiIk' \
    > test.out 2>&1
eval_tap $? 20 'QueryDetailTickMatchPoolMatches' test.out

#- 21 QueryDetailTickMatchPoolTicket
samples/cli/sample-apps Sessionhistory queryDetailTickMatchPoolTicket \
    --namespace $AB_NAMESPACE \
    --podName 'rSiCStri' \
    --poolName 'YGinuQdy' \
    --tickId 'IIy12z43' \
    > test.out 2>&1
eval_tap $? 21 'QueryDetailTickMatchPoolTicket' test.out

#- 22 QueryMatchHistories
samples/cli/sample-apps Sessionhistory queryMatchHistories \
    --matchId 'UykMxyY2' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 22 'QueryMatchHistories' test.out

#- 23 QueryMatchTicketHistories
samples/cli/sample-apps Sessionhistory queryMatchTicketHistories \
    --matchId 'ru5YMtdt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'QueryMatchTicketHistories' test.out

#- 24 QueryXrayMatch
samples/cli/sample-apps Sessionhistory queryXrayMatch \
    --matchId 'BM6NIcUN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'QueryXrayMatch' test.out

#- 25 QueryAcquiringDS
samples/cli/sample-apps Sessionhistory queryAcquiringDS \
    --namespace $AB_NAMESPACE \
    --matchPool '["3R8d74Ww", "Xmet0ico", "fPXuvlUZ"]' \
    --endDate 'tQnt8jJ5' \
    --startDate 'XKZ4SU5J' \
    > test.out 2>&1
eval_tap $? 25 'QueryAcquiringDS' test.out

#- 26 QueryAcquiringDSWaitTimeAvg
samples/cli/sample-apps Sessionhistory queryAcquiringDSWaitTimeAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["bTZAbHgL", "1NzwyjXJ", "U6buL0Ya"]' \
    --endDate 'v19jayaP' \
    --startDate 'JJUYf74I' \
    > test.out 2>&1
eval_tap $? 26 'QueryAcquiringDSWaitTimeAvg' test.out

#- 27 QueryMatchLengthDurationpAvg
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationpAvg \
    --namespace $AB_NAMESPACE \
    --matchPool '["CaCwrF8S", "VYX5Ejm1", "xSo0Bybz"]' \
    --endDate 'kCJeHghr' \
    --startDate 'pwWyPROu' \
    > test.out 2>&1
eval_tap $? 27 'QueryMatchLengthDurationpAvg' test.out

#- 28 QueryMatchLengthDurationp99
samples/cli/sample-apps Sessionhistory queryMatchLengthDurationp99 \
    --namespace $AB_NAMESPACE \
    --matchPool '["gOYy0wW8", "v5DcEoWQ", "DyTdcjwm"]' \
    --endDate 'qNTgADW5' \
    --startDate 'v34w7Wpw' \
    > test.out 2>&1
eval_tap $? 28 'QueryMatchLengthDurationp99' test.out

#- 29 QueryTotalActiveSession
samples/cli/sample-apps Sessionhistory queryTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --matchPool '["7IXpKmGo", "54Yvcv59", "DU2zZsFo"]' \
    --region '5odXOEDg' \
    --endDate 'zkd5rttu' \
    --startDate 'S1HRxqpQ' \
    > test.out 2>&1
eval_tap $? 29 'QueryTotalActiveSession' test.out

#- 30 QueryTotalMatchmakingMatch
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatch \
    --namespace $AB_NAMESPACE \
    --matchPool '["utBhWoOm", "I3lOH2KL", "HT9BOmZy"]' \
    --endDate 'm9zcNhuO' \
    --startDate 'jRzguaQH' \
    > test.out 2>&1
eval_tap $? 30 'QueryTotalMatchmakingMatch' test.out

#- 31 QueryTotalPlayerPersession
samples/cli/sample-apps Sessionhistory queryTotalPlayerPersession \
    --namespace $AB_NAMESPACE \
    --matchPool '["ZzRrzTxv", "RywGcBI1", "MBpBH0Qz"]' \
    --endDate 'ouguuJIv' \
    --startDate '1PBkpXrN' \
    > test.out 2>&1
eval_tap $? 31 'QueryTotalPlayerPersession' test.out

#- 32 QueryTotalMatchmakingCanceled
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCanceled \
    --namespace $AB_NAMESPACE \
    --matchPool '["l19PyXJW", "WVFA5Xqv", "0cEuKPAC"]' \
    --endDate 'qa5OByiC' \
    --startDate 'uhjAB6Jo' \
    > test.out 2>&1
eval_tap $? 32 'QueryTotalMatchmakingCanceled' test.out

#- 33 QueryTotalMatchmakingCreated
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingCreated \
    --namespace $AB_NAMESPACE \
    --matchPool '["6vM9C94p", "ZztbUx8d", "Xs9N2Ilk"]' \
    --endDate '76aVNCdw' \
    --startDate 'u7CfwwUY' \
    > test.out 2>&1
eval_tap $? 33 'QueryTotalMatchmakingCreated' test.out

#- 34 QueryTotalMatchmakingExpired
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingExpired \
    --namespace $AB_NAMESPACE \
    --matchPool '["Od2xN2HZ", "hSGEvZ6Y", "jBRljAOQ"]' \
    --endDate 'Y7PhmCpi' \
    --startDate 'SH5kSDxd' \
    > test.out 2>&1
eval_tap $? 34 'QueryTotalMatchmakingExpired' test.out

#- 35 QueryTotalMatchmakingMatchTicket
samples/cli/sample-apps Sessionhistory queryTotalMatchmakingMatchTicket \
    --namespace $AB_NAMESPACE \
    --matchPool '["I9Ptxqs1", "B6zXXquu", "bLSMvbwJ"]' \
    --endDate 'XdgwPemX' \
    --startDate 'xtvcSWmh' \
    > test.out 2>&1
eval_tap $? 35 'QueryTotalMatchmakingMatchTicket' test.out

#- 36 CreateXrayTicketObservability
samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"action": "tP1QKnU4", "activeAllianceRule": {"max_number": 31, "min_number": 67, "player_max_number": 21, "player_min_number": 99}, "activeMatchingRule": [{"attribute": "ZawbUco9", "criteria": "nq0JGnaq", "reference": 0.005901341032263252}, {"attribute": "0B5pjxiO", "criteria": "ge0QNPTP", "reference": 0.28265197565948164}, {"attribute": "Z5cnck1j", "criteria": "SkEsESLA", "reference": 0.9050451728658271}], "function": "AfLwCAE6", "gameMode": "z7F6gGk4", "isBackfillMatch": false, "isRuleSetFlexed": true, "iteration": 12, "matchID": "4FlDsywZ", "namespace": "vg2mq9Da", "remainingPlayersPerTicket": [67, 17, 72], "remainingTickets": 2, "sessionTickID": "uhIPEPED", "tickID": 63, "ticketID": "qrd2hLTO", "timeToMatchSec": 0.2749620859358727, "timestamp": "1983-05-19T00:00:00Z", "unbackfillReason": "QQpcJrhI", "unmatchReason": "xJDVD4q1"}' \
    > test.out 2>&1
eval_tap $? 36 'CreateXrayTicketObservability' test.out

#- 37 CreateXrayBulkTicketObservability
samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace $AB_NAMESPACE \
    --body '{"ticketObservabilities": [{"action": "DBWAzaEu", "activeAllianceRule": {"max_number": 20, "min_number": 29, "player_max_number": 74, "player_min_number": 2}, "activeMatchingRule": [{"attribute": "A1OYuWc2", "criteria": "IqEHRAav", "reference": 0.0004259018304776374}, {"attribute": "0yM5Zhbq", "criteria": "ugfmsyz5", "reference": 0.7152101044687169}, {"attribute": "KUIodfm9", "criteria": "Jed5ruei", "reference": 0.5379969685037677}], "function": "0xZWGWxL", "gameMode": "xRVK8QEU", "isBackfillMatch": true, "isRuleSetFlexed": true, "iteration": 9, "matchID": "dsz5MbW6", "namespace": "i4EplexT", "remainingPlayersPerTicket": [1, 84, 78], "remainingTickets": 66, "sessionTickID": "6SBuB6C3", "tickID": 6, "ticketID": "w1LMLjR4", "timeToMatchSec": 0.27189974372428205, "timestamp": "1992-04-04T00:00:00Z", "unbackfillReason": "WRxIz53G", "unmatchReason": "boNAfTGO"}, {"action": "IDk8sHIi", "activeAllianceRule": {"max_number": 27, "min_number": 63, "player_max_number": 13, "player_min_number": 35}, "activeMatchingRule": [{"attribute": "kUuo4Gvq", "criteria": "v71yiLGy", "reference": 0.5968602669723464}, {"attribute": "Ib2jIStD", "criteria": "ntXQgNzP", "reference": 0.4399825669122569}, {"attribute": "mFFbssrL", "criteria": "RdDtV9bc", "reference": 0.7062936456481946}], "function": "RODShxVL", "gameMode": "CR42nr4J", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 97, "matchID": "NwraYrNh", "namespace": "QvAZHntX", "remainingPlayersPerTicket": [38, 60, 38], "remainingTickets": 0, "sessionTickID": "tNKg9SP3", "tickID": 61, "ticketID": "vjACAQ8X", "timeToMatchSec": 0.015125681819149639, "timestamp": "1972-03-22T00:00:00Z", "unbackfillReason": "bUQl7rzE", "unmatchReason": "ROih8VyF"}, {"action": "t5YBDULT", "activeAllianceRule": {"max_number": 32, "min_number": 76, "player_max_number": 45, "player_min_number": 89}, "activeMatchingRule": [{"attribute": "c6Zq2YLu", "criteria": "QzpHBkS4", "reference": 0.5362660894980984}, {"attribute": "pn4rc3vD", "criteria": "RFT0wV0K", "reference": 0.2647839070690009}, {"attribute": "N0C67hA4", "criteria": "BmFoCOCM", "reference": 0.18726270679217527}], "function": "HYcxkXto", "gameMode": "jLZUmwmd", "isBackfillMatch": true, "isRuleSetFlexed": false, "iteration": 76, "matchID": "Hcly9YO2", "namespace": "kUWmvaEN", "remainingPlayersPerTicket": [88, 67, 67], "remainingTickets": 87, "sessionTickID": "PgxBGoo8", "tickID": 30, "ticketID": "mTbNpHQf", "timeToMatchSec": 0.41883525046195336, "timestamp": "1981-06-26T00:00:00Z", "unbackfillReason": "LrnY08hR", "unmatchReason": "9YlzUpQu"}]}' \
    > test.out 2>&1
eval_tap $? 37 'CreateXrayBulkTicketObservability' test.out

#- 38 QueryXrayTimelineByTicketID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByTicketID \
    --namespace $AB_NAMESPACE \
    --ticketId 'e0kK5Mq6' \
    --limit '87' \
    --offset '53' \
    --endDate 'y6w8AFM6' \
    --startDate 'gtgRnCob' \
    > test.out 2>&1
eval_tap $? 38 'QueryXrayTimelineByTicketID' test.out

#- 39 QueryXrayTimelineByUserID
samples/cli/sample-apps Sessionhistory queryXrayTimelineByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'QX3TxcxW' \
    --limit '5' \
    --offset '72' \
    --order '9cdAVNw3' \
    --orderBy 'aLIYggoE' \
    --endDate 'VvpK0gB1' \
    --startDate 'Vc7KDCYH' \
    > test.out 2>&1
eval_tap $? 39 'QueryXrayTimelineByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE