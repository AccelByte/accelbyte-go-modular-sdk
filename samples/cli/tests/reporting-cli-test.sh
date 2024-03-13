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
    --body '{"actionId": "0tp5bIcZ", "actionName": "CN6A6K99", "eventName": "HfWFZTx4"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
samples/cli/sample-apps Reporting adminFindExtensionCategoryList \
    --order 'asc' \
    --sortBy 'extensionCategoryName' \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
samples/cli/sample-apps Reporting adminCreateExtensionCategory \
    --body '{"extensionCategory": "70SwBgWi", "extensionCategoryName": "j02KocMm", "serviceSource": "YJ4Wl1H3"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateExtensionCategory' test.out

#- 6 Get
samples/cli/sample-apps Reporting get \
    --namespace $AB_NAMESPACE \
    --category 'extension' \
    > test.out 2>&1
eval_tap $? 6 'Get' test.out

#- 7 Upsert
samples/cli/sample-apps Reporting upsert \
    --namespace $AB_NAMESPACE \
    --body '{"categoryLimits": [{"extensionCategory": "JYaBIvtE", "maxReportPerTicket": 77, "name": "HAT01lrk"}, {"extensionCategory": "prTS9jum", "maxReportPerTicket": 9, "name": "9N0MDZEe"}, {"extensionCategory": "kGQ0C3F1", "maxReportPerTicket": 80, "name": "9zvmtdOA"}], "timeInterval": 61, "userMaxReportPerTimeInterval": 36}' \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
samples/cli/sample-apps Reporting adminListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
samples/cli/sample-apps Reporting createReasonGroup \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["4HSj6V23", "bV8hSC3r", "ZVePuZBQ"], "title": "dZoJk0UF"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
samples/cli/sample-apps Reporting getReasonGroup \
    --groupId '93qAMm65' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
samples/cli/sample-apps Reporting deleteReasonGroup \
    --groupId 'U0j2Y2kT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
samples/cli/sample-apps Reporting updateReasonGroup \
    --groupId 'ljMyX1Yl' \
    --namespace $AB_NAMESPACE \
    --body '{"reasonIds": ["gHZspABo", "URiy6ISO", "GJq25x7J"], "title": "CYm9hiqe"}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
samples/cli/sample-apps Reporting adminGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'swezn4PJ' \
    --limit '85' \
    --offset '82' \
    --title 'YTIalAx4' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
samples/cli/sample-apps Reporting createReason \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7uyLwFJf", "groupIds": ["KG18tmPP", "dbhzXHGU", "uRjKeRX7"], "title": "1idqapFM"}' \
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
    --extensionCategory '4ABdPWh3' \
    --category 'I8moT24y' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
samples/cli/sample-apps Reporting adminGetReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Ys7gCSY4' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
samples/cli/sample-apps Reporting deleteReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'Fedhau4D' \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
samples/cli/sample-apps Reporting updateReason \
    --namespace $AB_NAMESPACE \
    --reasonId 'VH4MYwsK' \
    --body '{"description": "Yo14lSDK", "groupIds": ["ckTZqc5l", "G9fDn8w6", "W7LwP1kG"], "title": "OCdkQi6e"}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
samples/cli/sample-apps Reporting listReports \
    --namespace $AB_NAMESPACE \
    --category 'oYoSLrSO' \
    --limit '9' \
    --offset '66' \
    --reportedUserId 'przxCh2O' \
    --sortBy 'Hfl9dZ9h' \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
samples/cli/sample-apps Reporting adminSubmitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"N9RNYw0s": {}, "L7yUYSBp": {}, "dM6zaq1D": {}}, "category": "UGC", "comment": "0hOwjjoB", "extensionCategory": "uN0ksOVu", "objectId": "ufdBpLqC", "objectType": "yk9abzeF", "reason": "BIfM0K2U", "userId": "t6POBa4A"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
samples/cli/sample-apps Reporting createModerationRule \
    --namespace $AB_NAMESPACE \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "D60Iyirp", "duration": 39, "reason": "yjwrxukj", "skipNotif": false, "type": "a2yHBK8E"}, "deleteChat": false, "extensionActionIds": ["rXMngGQI", "GtRewOR9", "JmXytNgz"], "hideContent": true}, "active": false, "category": "CHAT", "extensionCategory": "tyPbB6tC", "reason": "wULNIYdV", "threshold": 79}' \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
samples/cli/sample-apps Reporting updateModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'y1Zg9Wnd' \
    --body '{"action": "HideContent", "actions": {"banAccount": {"comment": "pK65t6Dg", "duration": 27, "reason": "LWggYXet", "skipNotif": true, "type": "yfF7ENs5"}, "deleteChat": true, "extensionActionIds": ["kcm4b4OS", "3Kz5mEb3", "kjHrEoQC"], "hideContent": true}, "active": false, "category": "EXTENSION", "extensionCategory": "geNkwizk", "reason": "niSxIyHl", "threshold": 53}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
samples/cli/sample-apps Reporting deleteModerationRule \
    --namespace $AB_NAMESPACE \
    --ruleId 'AUhFRBy1' \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
samples/cli/sample-apps Reporting updateModerationRuleStatus \
    --namespace $AB_NAMESPACE \
    --ruleId '3QmbrGaI' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
samples/cli/sample-apps Reporting getModerationRules \
    --namespace $AB_NAMESPACE \
    --category 'YGOIMMKq' \
    --extensionCategory 'IOP6i257' \
    --limit '48' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
samples/cli/sample-apps Reporting getModerationRuleDetails \
    --namespace $AB_NAMESPACE \
    --ruleId 'rnSU2MFD' \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
samples/cli/sample-apps Reporting listTickets \
    --namespace $AB_NAMESPACE \
    --category 'CdSQK4de' \
    --extensionCategory '9guJnLuX' \
    --limit '80' \
    --offset '27' \
    --order '33bIuehl' \
    --reportedUserId 'haUpddwu' \
    --sortBy '6qg2bOyW' \
    --status 'LboL83DD' \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
samples/cli/sample-apps Reporting ticketStatistic \
    --namespace $AB_NAMESPACE \
    --extensionCategory 'QPk1Ck08' \
    --category 'a6j6P68O' \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
samples/cli/sample-apps Reporting getTicketDetail \
    --namespace $AB_NAMESPACE \
    --ticketId 'wQc5oRxE' \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
samples/cli/sample-apps Reporting deleteTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'NI5TYaIY' \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
samples/cli/sample-apps Reporting getReportsByTicket \
    --namespace $AB_NAMESPACE \
    --ticketId 'hlh92ZDI' \
    --limit '88' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
samples/cli/sample-apps Reporting updateTicketResolutions \
    --namespace $AB_NAMESPACE \
    --ticketId 'reaq3vzq' \
    --body '{"notes": "y0kseyJm", "status": "CLOSED"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
samples/cli/sample-apps Reporting publicListReasonGroups \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
samples/cli/sample-apps Reporting publicGetReasons \
    --namespace $AB_NAMESPACE \
    --group 'hwgXFaAO' \
    --limit '68' \
    --offset '99' \
    --title 'gTgXGvQc' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
samples/cli/sample-apps Reporting submitReport \
    --namespace $AB_NAMESPACE \
    --body '{"additionalInfo": {"riiELzsq": {}, "8bJxAdpf": {}, "J38JwFe3": {}}, "category": "CHAT", "comment": "GmQea7jg", "extensionCategory": "yWSe5Tmy", "objectId": "XqG6p5Vp", "objectType": "eydHtMBx", "reason": "kK4iyuU7", "userId": "qI7dgAh2"}' \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


rm -f "tmp.dat"

exit $EXIT_CODE