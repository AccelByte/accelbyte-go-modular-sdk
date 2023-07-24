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
echo "1..36"

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

#- 2 AdminFindActionList
samples/cli/sample-apps Reporting adminFindActionList \
    > test.out 2>&1
eval_tap $? 2 'AdminFindActionList' test.out

#- 3 AdminCreateModAction
samples/cli/sample-apps Reporting adminCreateModAction \
    --body '{"actionId": "ZrxcPVVyhZaYHfjP", "actionName": "1ngvATLslV3Z5pFg", "eventName": "MP8jIxk6tpTxkHzn"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'asc' \
    --sortBy 'extensionCategory' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "qva8MrF4KVvEvWde", "extensionCategoryName": "vlmYntV5EHL5B0QQ", "serviceSource": "3l9OwcIzPAO8lD21"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateExtensionCategory' test.out

#- 6 Get
samples/cli/sample-apps Reporting get \
    --namespace $AB_NAMESPACE \
    --category 'all' \
    > test.out 2>&1
eval_tap $? 6 'Get' test.out

#- 7 Upsert
samples/cli/sample-apps Reporting upsert \
    --namespace $AB_NAMESPACE \
    --body '{"categoryLimits": [{"extensionCategory": "Sz7koteoH9eDHhp8", "maxReportPerTicket": 99, "name": "BXPSsLCSPL5VsZkb"}, {"extensionCategory": "Qooxsp2lv6SjLyMM", "maxReportPerTicket": 74, "name": "hXxTygyOilWJvv6i"}, {"extensionCategory": "H3lgA8mtjW9gfaRe", "maxReportPerTicket": 57, "name": "61ShJ1gBCpm8yztc"}], "timeInterval": 67, "userMaxReportPerTimeInterval": 95}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["10uDHmbrYMYwVKMp", "4C0y9BkDiU6YQFJx", "6PcHkUl8lT395rPi"], "title": "W6P9wsfQXdTkxZ4n"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId 'VlQgckCSgjWMDZNj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId '62xgRllDH2kQdyCQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'aw7A6tiq8Z5PlEzf' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["fCoION4kBDESXhS2", "7eX2wKRZqxfObiPr", "1k6fr1Xhx6xTEfNz"], "title": "LctN7cn8IiZe7nKu"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'aTkBMbFG0f9XDiz5' \
    --limit '61' \
    --offset '24' \
    --title 'COW8K3Stm2rEmaPv' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KK1UI2Tva7eGuMk7", "groupIds": ["bVpgh2lvfSJHT6Ud", "8Erhmh9vxw32j6bp", "T3gCdNeXuExoOiap"], "title": "JLq78mIyTLRmHhl1"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateReason' test.out

#- 15 AdminGetAllReasons
samples/cli/sample-apps Reporting adminGetAllReasons \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllReasons' test.out

#- 16 AdminGetUnusedReasons
samples/cli/sample-apps Reporting adminGetUnusedReasons \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'CmEqyXdeSAMRKh4t' \
    --category 'YthakNlblp2QtNja' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'r0hXgHmdW5RvYRX2' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'MvEDhOw5UuShpbOq' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'UHiDiykzvOhUEKM0' \
    --body '{"description": "m6J4NXRiDIKzwjxg", "groupIds": ["hfeKHWJlOA9rELkS", "FZKSdXf7CayN1Wkx", "MhXIm3ntO3vmCYRK"], "title": "znT6R9E7LIyU8WbP"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'colo17inAT4c60Xp' \
    --limit '77' \
    --offset '57' \
    --reportedUserId 'VQDJDOzmDYI3edeX' \
    --sortBy 'fNS78dCNIvcui0rL' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"3TmDCx67WOX8khgQ": {}, "gjXfI8eSLQwlN4Z8": {}, "q4UTFfWr1A7we8Ot": {}}, "category": "UGC", "comment": "S6LHCSasGWgoruLz", "extensionCategory": "jhZDi4cJlgt2E0Z5", "objectId": "hh57XoLBfOUCGs17", "objectType": "Mhv4VmOgAKCQh5Fs", "reason": "wtynUYnfDCkTYEd2", "userId": "bQa8iRXpUj3b04jt"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "MY6MGZiJrbLLmDGZ", "duration": 12, "reason": "cvUUYaSYHIJAN3WX", "skipNotif": true, "type": "A9OuKQANEj2MACpY"}, "deleteChat": false, "extensionActionIds": ["fLE8QiBOvQWlphR1", "yQJBsC4PmXaFpHQw", "fMI6r6wlSzS0c5Xw"], "hideContent": true}, "active": false, "category": "CHAT", "extensionCategory": "Zk5Q3EYbIQgJDGM8", "reason": "elaM0XAcoHrBtIZC", "threshold": 59}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'UhQPk02m4sIW4ZN7' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "cTb13FQ7euMy1bcJ", "duration": 17, "reason": "NsAJ3vA6b6AsVN0l", "skipNotif": false, "type": "jM7Zxj1SbfIhzMVR"}, "deleteChat": true, "extensionActionIds": ["KEcUJs3ISwzcoL7F", "K6SNqFjc0eiOJrJv", "T3BhcNIL4Gk6Mngz"], "hideContent": false}, "active": false, "category": "CHAT", "extensionCategory": "rcLvPC9cTiiz7s4y", "reason": "PTmhOQ8fEwxRclQm", "threshold": 36}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'QZzR9THY0xLgAEDQ' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId 'yMOrNpt6GcrXY40D' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category '6lwPtG2SPgIlTw5r' \
    --extensionCategory 'f84RgTVNs0A7yehF' \
    --limit '45' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'LdiFb9NotuhOd447' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'sitFzR2BevT5sd0H' \
    --extensionCategory '8IVWZxayELF2QVpc' \
    --limit '74' \
    --offset '35' \
    --order 'UfAdZJDIaRjIYL4h' \
    --reportedUserId 'hXVBnzwdFvG6EB55' \
    --sortBy '1nLHAS0EUJ4RzO4u' \
    --status '83Iq5bJlqODCC2Yo' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'BzSs3GZKnAKZDc9y' \
    --category 'oFQcIcgzKfSL2S6K' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'FsKpujmhdYTnGNMm' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'zk9Xz2dE7dAxwJPF' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'NUadmJrWzANCxre0' \
    --limit '68' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'DgdwxuIZmJMCkEwC' \
    --body '{"notes": "p5AYCraDbdV4woQm", "status": "AUTO_MODERATED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'OrTjOQnwKNkO3iqO' \
    --limit '16' \
    --offset '63' \
    --title 'lDJy0ye6xv4s1hdZ' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"3XXbVLq0aNgnqoWj": {}, "nHQuUDrq3VdCpYuC": {}, "mAGS65Pl5CLCE18Z": {}}, "category": "CHAT", "comment": "pfSGN5SKciq4NzdZ", "extensionCategory": "4xcTGt7WQ7WBOWu3", "objectId": "J4dIOyqQwgbgttCq", "objectType": "4qCcrzsp07ZJETwa", "reason": "nPqzca54St6rTjms", "userId": "rWYWxMS1c5rlQg9f"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE